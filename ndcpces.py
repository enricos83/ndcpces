#!/usr/bin/env python3
import os
import re
import sys
import time
import click
import nltk
from nltk import Tree
import json
from pysmt.oracles import get_logic
from pysmt.printers import HRPrinter
from pysmt.shortcuts import And, Implies, Not, Symbol, TRUE, Xor, FALSE, Or, \
    Solver, get_atoms, AtMostOne, ExactlyOne
from pysmt.smtlib.printers import SmtPrinter
from automata.fa.nfa import NFA

import networkx as nx
import copy

# TODO Design: Construct an action class

#class Action():

class State(dict):
    def __hash__(self):
        return hash(json.dumps(self, sort_keys=True))

    def __eq__(self, other):
        for k in self.keys():
            if self[k] != other[k]:
                return False
        return True

    def copy(self):
        s1 = type(self)()
        for k in self.keys():
            s1[k] = self[k]
        return s1


debug = False
# This involves both action schemata and ground actions.
id_state = 0

# COMMENT The following is to enrich the classical planning domain with new predicates. 
# Basically 
#  - the predicate p_ is meant to represent whether some state is true (we are reasoning at the level of belief)
#  - The predicates T_goal and  T_init are meant to represent the pseudo transition to the goal and from the initial state.
predicate_to_add = {'p_ ?s - state', 'T_goal ?s0 ?s1 - state', 'T_init ?s0 ?s1 - state'}
constants_to_add = {'bot - state'}

def add_action_predicates(domain_tree, new_predicates):
    if type(domain_tree) == nltk.tree.Tree:
        if domain_tree.label() == ':predicates':
            string = ''
            inner_list = domain_tree[0:]
            for p in new_predicates:
                inner_list.append('({})'.format(p))
            return Tree(domain_tree.label(), inner_list)
        else:
            l = list()
            for ele in domain_tree:
                l.append(add_action_predicates(ele, new_predicates))
            return Tree(domain_tree.label(), l)
    return domain_tree

def add_forall(tree, action):
    forall = '(forall  (?s - state) (not (and (T_{} ?s bot) (p_ ?s))))'.format(action)
    if tree[0].label() == 'and':
        l = tree[0:]
        l.append(forall)
        t = Tree('and', l)
        tree = Tree(':goal', [t])
    else:
        t = Tree('and', [forall,tree[0]])
        tree = Tree(':goal', [t])
    return tree


def update_problem_formulation(problem, transitions, states, s0):
    if type(problem) == nltk.tree.Tree:
        if problem.label() == ':init':
            l = problem[0:]
            for s in s0:
                l.append('(p_ {})'.format(s))
            for t in transitions:
                l.append('(T_{} {} {})'.format(t[1], t[0], t[2]))
            return Tree(':init', l)
        elif problem.label() == ':objects':
            l = problem[0:]
            for s in states:
                l.append(' {} '.format(s))
            l.append(' - state')
            return Tree(':objects', l)
        elif problem.label() == ':goal':
            return add_forall(problem, 'goal')
        else:
            return Tree(problem.label(), [update_problem_formulation(ele, transitions, states, s0) for ele in problem])
    return problem



def parse_determinise(filename):
    filename_stripped = filename.replace("/", "_")
    out = "/tmp/" + filename_stripped + str(time.time())
    #out = filename + 'temp.pddl'
    with open(filename) as f:
        l2 = ''
        for l1 in f.readlines():
            l2 += l1.split(';')[0].replace('- ', '-')
        l = l2
        t = Tree.fromstring(l)
        # Remove uncertainty by picking the first outcome of any non-deterministic effect
        # Meanwhile the procedure also introduces big or for automata syncronisation
        t1 = first_outcome_determinisation(t)
        # Add so called action predicates. These serve the purpose of capturing the NFA transitions later on
        t1 = add_action_predicates(t1, predicate_to_add)
    with open(out, "w") as f:
        f.write(str(t1))
    return out, t, t1


def get_actions_as_tree_structures(tree):
    tovisit = list()
    tovisit.append(tree)
    actions = set()
    par = dict()
    prec = dict()
    eff = dict()
    while len(tovisit) != 0:
        node = tovisit.pop()
        if type(node) == nltk.tree.Tree:
            if ("action" in node.label()):
                actions.add(node[0])
                previous = None
                prec[node[0]] = None
                eff[node[0]] = None
                par[node[0]] = None
                for ele in node[1:]:
                    if previous == None:
                        previous = ele
                    else:
                        if previous == ':precondition':
                            prec[node[0]] = ele
                        elif previous == ':effect':
                            eff[node[0]] = ele
                        elif previous == ':parameters':
                            par[node[0]] = ele
                        previous = None
            else:
                for ele in node:
                    tovisit.append(ele)
    return actions, par, prec, eff


def add_to_predicates(action, typed_pars):
    global predicate_to_add
    types = ''
    if typed_pars is not None:
        types = str(typed_pars).strip('(').strip(')')
    predicate_to_add.add("T_{} {} ?s1 ?s - state".format(action, types))


def has_one_of(tree):
    if type(tree) == nltk.tree.Tree:
        if tree.label() == 'oneof':
            return True
        elif tree.label() == 'and':
            for e in tree:
                if has_one_of(e):
                    return True
        elif tree.label() == 'when':
            return has_one_of(tree[1])
    return False


def first_outcome_determinisation(tree, action=None, par=''):
    if type(tree) == nltk.tree.Tree:
        children = list()
        previous = None
        typed_pars = None
        for ele in tree:
            if type(ele) == nltk.tree.Tree:
                if previous == ':precondition':
                    add_to_predicates(action, typed_pars)
                    #t = add_forall(ele, '{} {}'.format(action, par))
                    forall = '(forall  (?s - state) (not (and (T_{} {} ?s bot) (p_ ?s))))'.format(action, par)
                    forall_tree = Tree.fromstring(forall)
                    if ele.label() == 'and':
                        inner_children = ele[0:]
                        inner_children.append(forall_tree)
                        children.append(first_outcome_determinisation(Tree(ele.label(), inner_children)))
                    else:
                        children.append(first_outcome_determinisation(Tree('and', [ele,forall_tree])))
                elif previous == ':effect':
                    add_to_predicates(action, typed_pars)
                    forall = '(forall  (?s - state) (when (exists (?s1 - state) ' \
                             '(and  (T_{} {} ?s1 ?s) (p_ ?s1) ) )' \
                             '(p_ ?s)))'.format(action, par)
                    forall2 = '(forall  (?s - state) (when (not (exists (?s1 - state)' \
                              '(and  (T_{} {} ?s1 ?s) (p_ ?s1) ) ))' \
                              '(not (p_ ?s))))'.format(action, par)
                    inner_children = [forall,forall2]
                    if ele.label() == 'and':
                        for e in ele:
                            inner_children.append(e)
                        children.append(first_outcome_determinisation(Tree(ele.label(), inner_children)))
                    else:
                        inner_children.append(ele)
                        children.append(first_outcome_determinisation(Tree('and', inner_children)))
                elif previous == ':parameters':
                    typed_pars = ele
                    pars = ''
                    pars += ele.label()
                    for e in ele:
                        if '?' in e:
                            pars += ' ' + e
                    par = pars
                    children.append(first_outcome_determinisation(ele, action))
                elif ("oneof" in ele.label()):
                    children.append(first_outcome_determinisation(ele[0]))
                elif (":init" in ele.label()):
                    inner_childreen = list()
                    for ele2 in ele[0][0:]:
                        if "oneof" in ele2.label():
                            inner_childreen.append(first_outcome_determinisation(ele2[0]))
                        else:
                            inner_childreen.append(first_outcome_determinisation(ele2))
                    t1 = Tree(ele.label(), inner_childreen)
                    children.append(t1)
                elif ":action" in ele.label():
                    children.append(first_outcome_determinisation(ele, ele[0], ''))
                elif ':types' in ele.label():
                    sons_list = ele[0:]
                    sons_list.append("state")
                    children.append(first_outcome_determinisation(Tree(ele.label(), sons_list)))
                elif ':constants' in ele.label():
                    sons_list = ele[0:]
                    sons_list.append('bot - state')
                    children.append(first_outcome_determinisation(Tree(ele.label(), sons_list)))
                elif ':objects' in ele.label():
                    sons_list = ele[0:]
                    sons_list.append('bot - state')
                    children.append(first_outcome_determinisation(Tree(ele.label(), sons_list)))
                else:
                    children.append(first_outcome_determinisation(ele))
            else:
                children.append(ele)
            previous = ele
        t0 = Tree(tree.label(), children)
        return t0


def plan_via_ff(o, f, _planner_path):
    ffc = "{}/ff".format(_planner_path)
    out = os.popen("{} -o {} -f {}".format(ffc, o, f)).read()
    plan = list()
    plan_mod = False
    for line in out.split("\n"):
        if 'goal can be simplified to FALSE' in line:
            return None
        if 'unsolvable' in line:
            return None
        if "step" in line:
            plan_mod = True
        if plan_mod:
            match = re.search(r'[0-9]+: (.*)', line)
            if match:
                plan.append(match.group(1).lower())
            else:
                break
    return plan


def plan_via_bfws(o, f, path):
    exec = "{}/bfws".format(path)
    planfile = "/tmp/plan.ipc{}".format(time.time())
    out = os.popen("{} --domain {} --problem {} --output {}".format(exec, o, f, planfile)).read()
    plan = list()
    found = False
    for line in out.split("\n"):
        if 'Plan found with cost' in line:
            found = True
            break
    if found:
        return read_ipc_plan(planfile)
    return None



def read_ipc_plan(planfile):
    plan = list()
    with open(planfile) as f:
        for l in f.readlines():
            match = re.search(r'\((.*)\)', l)
            if match:
                plan.append(match.group(1).strip(' ').lower())
    return plan 

def get_atom(input):
    ele = input
    if input[0] == '-':
        ele = input.strip('-')
    return ele


def get_direct_uncertain_facts(nd_effects):
    direct_uncertain = set()
    for e in nd_effects:
        if (len(e[1]) > 1):
            for eff_set in e[1]:
                for atom in eff_set:
                    direct_uncertain.add(get_atom(atom))
    return direct_uncertain


def get_actual_fluents_from_single(effects):
    return { get_atom(e2) for _, e1 in effects for e in e1 for e2 in e }

def get_actual_fluents(actions, nd_effects, init):
    init_effect  = create_normalized_effect(Tree("True", ['']), init)
    fluents = set()
    for t in actions:
        fluents = fluents.union(get_actual_fluents_from_single(nd_effects[get_act_name(t)]))
    fluents = fluents.union(get_actual_fluents_from_single(init_effect))
    return fluents

def get_dependency_relation(nd_effects):
    dependency_relation = dict()
    for e in nd_effects:
        a = get_facts_from_formula(e[0])
        for a1 in a:
            if 'True' not in a1:
                for eff_set in e[1]:
                    for atom in eff_set:
                        if a1 not in dependency_relation:
                            dependency_relation[a1] = set()
                        dependency_relation[a1].add(get_atom(atom))
    return dependency_relation


def substitute(pars, objs, tree):
    if type(tree) == nltk.tree.Tree:
        children = [substitute(pars, objs, ele) for ele in tree]
        return Tree(tree.label(), children)
    else:
        string = tree
        if "?" in tree:
            _vars = [pars.label()]
            _vars.extend( [ele for ele in pars if '?' in ele] )
            try:
                for i in range(0, len(_vars)):
                    if tree == _vars[i]:
                        string = objs[i]
            except:
                print("Something is rotten in the state of Denmark")
        return string


def get_name(name, objs):
    return name+' '+' '.join(objs)


def ground(act, objs, structure):
    pars = structure[1]
    prec = structure[2]
    eff = structure[3]
    try:
        act_pre = prec[act]
        act_pre_ground = substitute(pars[act], objs, act_pre)
    except:
        act_pre = None
        act_pre_ground = None
    try:
        act_eff = eff[act]
        act_eff_ground = substitute(pars[act], objs, act_eff)
    except:
        act_eff_ground = None
        act_eff = None

    name = get_name(act, objs)
    structure[0].add(name)
    structure[1][name] = None
    structure[2][name] = act_pre_ground
    structure[3][name] = act_eff_ground


def print_actions(act, s):
    print("(:action {} :parameters {} \n    :precondition {} \n    :effect {})".format(act, s[1][act], s[2][act],
                                                                                       s[3][act]))

def get_subtree(tree, tag):
    if type(tree) == nltk.tree.Tree:
        if (tree.label() == tag):
            return tree
        else:
            for ele in tree:
                p = get_subtree(ele, tag)
                if p is not None:
                    return p
    return None


def get_init(problem):
    t = get_subtree(problem, ":init")
    if t.label() == 'and':
        return get_subtree(t, "and")
    else:
        return Tree('and', t)


def get_goal(problem):
    t = get_subtree(problem, ":goal")
    if t.label() == 'and':
        return get_subtree(t, "and")
    else:
        return Tree('and', t)


def get_facts_from_formula(tree):
    facts = set()
    if type(tree) == nltk.tree.Tree:
        fact = True
        for ele in tree:
            if type(ele) != str:
                fact = False
        if len(tree) == 0:
            facts.add(tree.label())
        elif fact:
            children = ""
            for ele in tree:
                children += ele
            facts.add("{} {}".format(tree.label(), children))
        else:
            for ele in tree:
                facts = facts.union(get_facts_from_formula(ele))
    return facts


def get_relevant_facts(plan, structure):
    facts = set()
    for act in plan:
        ret = act.split(' ')
        if (len(ret) > 1):
            try:
                facts = facts.union(get_facts_from_formula(structure[2][get_name(ret[0], ret[1:])]))
            except:
                pass
            facts = facts.union(get_facts_from_formula(structure[3][get_name(ret[0], ret[1:])]))
        else:
            facts = facts.union(get_facts_from_formula(structure[3][ret[0]]))
    return facts


def is_a_fact(tree):
    fact = True
    for ele in tree:
        if type(ele) != str:
            fact = False
    return fact


def get_fact_name(tree):
    fact = True
    for ele in tree:
        if type(ele) != str:
            fact = False
    if len(tree) == 0:
        return tree.label()
    elif fact:
        children = ''
        for ele in tree:
            children += ele
        return '{} {}'.format(tree.label(), children)
    return None

def get_literal(tree):
    if tree.label() == 'not':
        return '-{}'.format(get_literal(tree[0]))
    else:
        if len(tree) == 0:
            return tree.label()
        else:
            children = ''
            for ele in tree:
                children += ele
            return '{} {}'.format(tree.label(), children)


def create_normalized_effect(cond, tree):
    ndeffects = list()
    if get_fact_name(tree) is None:
        if tree.label() == 'and':
            for e in tree:
                ndeffects += create_normalized_effect(cond,e)
            return ndeffects
        if tree.label() == 'oneof':
            main_list = list()
            for e in tree:
                if e.label() == 'and':
                    sub_list = list()
                    for e1 in e:
                        name = get_literal(e1)
                        if name is None:
                            raise('This is not supported')
                        sub_list.append(name)
                    main_list.append(sub_list)
                else:
                    main_list.append([get_literal(e)])
            ndeffects.append((cond,main_list))
            return ndeffects
        if tree.label() == 'when':
            return create_normalized_effect(tree[0],tree[1])
        if tree.label() == 'not':
            ndeffects.append((cond, [[get_literal(tree)]]))
    else:
        ndeffects.append((cond,[[get_literal(tree)]]))
    return ndeffects

def create_formula(tree, i):
    name = get_fact_name(tree)
    if name is None:
        if (tree.label() == "and"):
            return And([create_formula(ele,i) for ele in tree])
        elif tree.label() == 'not':
            return Not(create_formula(tree[0], i))
        elif tree.label() == 'oneof':
            return ExactlyOne([create_formula(ele, i) for ele in tree])
        else:
            print("Not supported: {}".format(tree))
    else:
        if "True" in name:
            return TRUE()
        return Symbol(cr_name_idx(name, i))

def cr_name_idx(name, i):
    return name + "@" + str(i)

def create_nd_effect_choice_variable(c, e, action, i):
    return 'p_{}_{}_{}@{}'.format(c, e, action, i)

def create_atemporal_p(c, e, action):
    return 'p_{}_{}_{}'.format(c, e, action)



del_or_list_global = dict()
add_or_list_global = dict()
def get_add_del_or_lists(effects,action):
    add_or_dict = dict()
    del_or_dict = dict()
    global add_or_list_global
    global del_or_list_global
    if action not in add_or_list_global: ## this is for caching
        for c, E in effects:
            if len(E) >= 0:
                for e in E:
                    p_var_name = create_atemporal_p(c, e, action)
                    for lit in e:
                        actual_literal = lit
                        if lit[0] == '-':  # Delete effect
                            actual_literal = actual_literal.strip('-')
                        try : mentioning_del = del_or_dict[actual_literal]
                        except : mentioning_del = list()
                        try : mentioning_add = add_or_dict[actual_literal]
                        except : mentioning_add = list()
                        if lit[0] == '-':  # Delete effect
                            mentioning_del.append((p_var_name, c))
                        else:  # Add effect
                            mentioning_add.append((p_var_name, c))
                        del_or_dict[actual_literal] = mentioning_del
                        add_or_dict[actual_literal] = mentioning_add

        del_or_list_global[action] = del_or_dict
        add_or_list_global[action] = add_or_dict
    add_or_dict = add_or_list_global[action]
    del_or_dict = del_or_list_global[action]
    return add_or_dict,del_or_dict
def get_achievers(effects, i, name, action):
    add_or_dict, del_or_dict = get_add_del_or_lists(effects,action)

    add_or_list = list()
    del_or_list = list()
    if name in add_or_dict:
        for p_var_name,rhs in add_or_dict[name]:
            # print('oleeeeeeeeeee')
            add_or_list.append(And(Symbol('{}@{}'.format(p_var_name, i)), create_formula(rhs, i)))
    if name in del_or_dict:
        for p_var_name,rhs in del_or_dict[name]:
            # print('oleeeeeeeeeee')
            del_or_list.append(And(Symbol('{}@{}'.format(p_var_name, i)), create_formula(rhs, i)))
    return add_or_list,del_or_list

def frame_axiom(symbols, plan, nd_norm_effect):
    and_frame = list()

    for i in range(0, len(plan)):
        and_facts = list()
        #TODO optimise by taking only the symbols affected by the action
        for s in symbols:
            name = s
            act = plan[i]
            action = get_act_name(act)
            effects = nd_norm_effect[action]
            smt_name_n = Symbol(cr_name_idx(name, i + 1))
            smt_name = Symbol(cr_name_idx(name, i))
            delete = And(smt_name, Not(smt_name_n))
            add = And(Not(smt_name), smt_name_n)
            add_or_list, del_or_list = get_achievers(effects,i,name,action)
            # Explanatory axiom. Things change only if someone triggers their change either way (false to true, or vice versa)
            if len(del_or_list) == 0 and len(add_or_list) == 0:
                and_facts.append(Not(delete))
                and_facts.append(Not(add))
            else:
                and_facts.append(Implies(delete, Or(del_or_list)))
                and_facts.append(Implies(add, Or(add_or_list)))
        and_frame.append(And(and_facts))
    return And(and_frame)


def get_act_name(act):
    ret = act.split(' ')
    name = ret[0]
    if (len(ret) > 1):
        name = get_name(ret[0], ret[1:])
    return name


def create_effect_formula(ele, i):
    if type(ele) == list:
        and_list = list()
        for e in ele:
            and_list.append(create_effect_formula(e, i))
        return And(and_list)
    else:
        if ele[0] == '-':
            return Not(Symbol(cr_name_idx(ele[1:], i)))
        else:
            return Symbol(cr_name_idx(ele, i))


def transition_relation(plan, effects):
    index_and = list()
    for i in range(0, len(plan)):
        a = get_act_name(plan[i])
        and_effects = list()
        for c, E in effects[a]:
            xor_list = list()
            cond = create_formula(c, i)
            if len(E) >= 0:
                for e in E:
                    p_i = create_nd_effect_choice_variable(c, e, a, i)
                    xor_list.append(Symbol(p_i))
                    formula = And(cond, Symbol(p_i))
                    and_effects.append(Implies(formula, create_effect_formula(e, i + 1)))
            and_effects.append(ExactlyOne(xor_list))
        index_and.append(And(and_effects))
    return And(index_and)


def create_goals(plan, problem, prec):
    G = get_goal(problem)
    or_list = list()
    for i in range(0, len(plan)):
        a = get_act_name(plan[i])
        if a in prec:
            pre = prec[a]
            if pre is not None:
                or_list.append(Not(create_formula(pre, i)))
    or_list.append(Not(create_formula(G, len(plan))))
    return Or(or_list)


def init_conditions(problem, F):
    t = get_init(problem)
    and_list = list()
    t1 = create_formula(t, 0)
    facts = get_facts_from_formula(t)
    for f in F:
        if f not in facts:
            and_list.append((Not(Symbol(cr_name_idx(f, 0)))))
    and_list.append(t1)
    return  And(and_list)

def new_state_name():
    global id_state
    name = 's{}'.format(str(id_state))
    id_state = id_state + 1
    return name


def sat(pre, s, unknown_propagation_to_none = False):
    if pre is None or pre.label() == 'True':
        return True
    name = get_fact_name(pre)
    if name is not None:
        if name not in s:
            if unknown_propagation_to_none:
                return None
            return True
        return s[name] == 'True'
    else:
        if pre.label() == 'and':
            for ele in pre:
                ret = sat(ele, s)
                if ret is None:
                    return None;
                if not ret:
                    return False
            return True
        elif pre.label() == 'not':
            son = pre[0]
            ret = sat(son, s)
            if ret is None:
                return None
            return not ret
        else:
            raise ('Condition {} not supported yet'.format(pre.label()))


def build_counterexample_formula(problem, F, plan, nd_norm_effect, precnd):
    ##Construct a SAT formula that looks for a sequence of state-action playing the role of a counterexample

    # This creates a formula for init
    f_init = init_conditions(problem, F)
    #print('init setup')
    # This creates the frame condition. The value is kept if this is not changed by any action in plan
    f_frame = frame_axiom(F, plan, nd_norm_effect)
    #print('frame_setup')
    # This enforces the change of the variable if an effect changing it is enabled
    f_change = transition_relation(plan, nd_norm_effect)
    # One non deterministic effects has to be triggered compulsory
    # Let's try to break some precondition or goal
    not_goals = create_goals(plan, problem, precnd)
    # Final formula. This admits only counterexamples, that is, trajectories of  failing plans

    return And(f_init, f_frame, f_change, not_goals)


def create_ground_effects(action_collection, structure, done):
    nd_norm_effect = dict()
    for a in action_collection:
        s_name = get_act_name(a)
        ret = a.split(' ')
        if s_name not in done:
            if (len(ret) > 1):  # Meaning that it is generated from an action schema. ret[1:]
                # are objects. This needs grounding first
                ground(ret[0], ret[1:], structure)
                norm_effect = create_normalized_effect(Tree("True", ['']), structure[3][s_name])
            else:  # That's already ground from the beginning
                norm_effect = create_normalized_effect(Tree("True", ['']), structure[3][s_name])
            nd_norm_effect[s_name] = norm_effect
            done.add(s_name)
    return nd_norm_effect

def apply(effect, s):
    for e in effect:
        l = e
        if e[0] == '-':
            l = e.strip('-')
        if l in s:
            if e[0] == '-':
                s[l] = False
            else:
                s[l] = True

import itertools
def lookahead(transitions, states, s, ndeffect, a, precnd, mode):
    if mode == 0:
        return
    actions = a
    if type(a) is not set:
        actions = {a}
    for t in actions:
        precondition = precnd[t]
        if precondition is not None and not sat(precondition, s):
            transitions.add((states[s], t, 'bot'))
        elif t != 'goal' and (mode == 2 or mode == 5):
            if all(not sat(c, s) for c, _ in ndeffect[t]):
                transitions.add((states[s], t, states[s]))
        elif t != 'goal' and (mode == 3 or mode == 4):
            s1 = s.copy()
            nothing = True
            for c, e in ndeffect[t]:
                if sat(c,s):
                    nothing = False
                    for e1 in e[0]: #First outcome again
                        var = get_atom(e1)
                        if var in s1:
                            if e1[0] == '-':
                                s1[var] = False
                            else:
                                s1[var] = True
            if nothing:
                transitions.add((states[s], t, states[s]))
            else:
                if s1 not in states:
                    states[s1] = new_state_name()
                transitions.add((states[s], t, states[s1]))


def update_transitions_states(states, transitions, plan, precnd, solver, init_state, effects, actions = None, all_actions = None, ctxs = None, lookahead_mode = 1):
    previous = dict()
    stop = set()
    found = False
    #print('Updating NFA')
    for i in range(0, len(plan) + 1):
        j = 0
        for key,c in ctxs.items():
            if (len(c) > 0):
                if j not in stop:
                    s = State()
                    for f in c:
                        value = solver.get_value(Symbol(cr_name_idx(f, i)))
                        s[f] = str(value)
                    if s not in states:
                        states[s] = new_state_name()
                        lookahead(transitions, states, s, effects, all_actions, precnd, lookahead_mode)
                    s_name = states[s]
                    if i == 0 :
                        init_state.add(s_name)
                    if j in previous:
                        t = (previous[j], plan[i - 1], s_name)
                        transitions.add(t)
                    previous[j] = s_name
                    if i == len(plan):
                        break
                    pre = precnd[plan[i]]
                    if pre is not None and not sat(pre, s):
                        transitions.add((previous[j], plan[i], 'bot'))
                        #print('Found the non applicable action: {}'.format(plan[i]))
                        stop.add(j)
                        found = True
                j = j + 1
    if not found:
        print('Something bad happened. All preconditions and goals are satisfied, but the model tells us there is a counterexample {}'.format(solver.get_model()))
        print('With plan: {}'.format(plan))
        exit(0)
    return init_state, transitions, states


def update_problem_file(deproblem, transitions, param, det_problem_file, init_state):
    new_problem = update_problem_formulation(deproblem, transitions, param, init_state)
    with open(det_problem_file, "w") as f:
        f.write(str(new_problem))


def get_ground_actions_from_ff(domain_file, problem_file, grounder_path):
    ffc = "{}/ff".format(grounder_path)
    out = os.popen("{} -o {} -f {} -i 120".format(ffc, domain_file, problem_file)).read()
    actions = set()
    for line in out.split('\n'):
        if 'goal can be simplified to FALSE' in line:
            print('Problem Unsolvable')
            exit(1)
        if 'Action' in line:
            actions.add(line.split(' ', 1)[1].lower())
    return actions


def get_uncertain_facts_from_init(tree, uncertain = False):
    direct_uncertain = set()
    name = get_fact_name(tree)
    if name is None:
        if tree.label() == 'and':
            for e in tree:
                direct_uncertain = direct_uncertain.union(get_uncertain_facts_from_init(e))
            return direct_uncertain
        elif tree.label() == 'oneof':
            for e in tree:
                name = get_fact_name(e)
                if name is None:
                    direct_uncertain = direct_uncertain.union(get_uncertain_facts_from_init(e, True))
                else:
                    direct_uncertain.add(name)
    else:
        if uncertain:
            direct_uncertain.add(name)
    return direct_uncertain


def get_all_uncertain_facts(ground_actions, nd_norm_effect, init):
    UF = set()
    DR = dict()

    for gr in ground_actions:
        e = nd_norm_effect[get_act_name(gr)]
        UF = UF.union(get_direct_uncertain_facts(e))
        for k,v in get_dependency_relation(e).items():
            if k in DR:
                DR[k] = DR[k].union(v)
            else:
                DR[k] = v
    UF = UF.union(get_uncertain_facts_from_init(init))
    tc = get_transitive_closure(UF, DR)
    ctx = dict()
    for u, v in tc.edges:
        if v not in ctx:
            ctx[v] = {v}
        UF.add(v)
        ctx[v].add(u)
    return UF,ctx


def get_transitive_closure(V, E):
    a = nx.DiGraph()
    a.add_nodes_from(V)
    for u, v in E.items():
        for v1 in v:
            a.add_edge(u, v1)
    tc = nx.transitive_closure(a)
    return tc


def print_info(iteration, states, plan, transitions, timings= None):
    print('Iterations: {}'.format(iteration))
    if plan is not None:
        print("Current Plan Length: {}".format(len(plan)-1))
    print("Current number of states in the NFA: {}".format(len(states.values())))
    print("Current number of transitions in the NFA: {}".format(len(transitions)))
    if timings is not None:
        for k,v in timings.items():
            print("{}:{}".format(k,v))


def planning(det_dom_file, det_problem_file, _planner_path, planner):
    if planner.lower() == 'ff':
        return plan_via_ff(det_dom_file,det_problem_file, _planner_path)
    elif planner.lower() == 'bfws':
        return  plan_via_bfws(det_dom_file,det_problem_file, _planner_path)
    elif planner.lower() == 'human':
        inp = input("Type name of the file for the plan: \n ")
        return read_ipc_plan(inp)



def get_contexts(ctx, ACTIONS, precnd, used_facts):
    relevant_contexts = dict()
    associated_action = dict()
    for a in ACTIONS:
        e = precnd[a]
        F = get_facts_from_formula(e)
        for f in F:
            if '?' not in f:
                if f not in relevant_contexts:
                    try:
                        relevant_contexts[f] = ctx[f].intersection(used_facts)
                    except:
                        relevant_contexts[f] = {f}.intersection(used_facts)
                if f not in associated_action:
                    associated_action[f] = {a}
                else:
                    associated_action[f].add(a)

    return relevant_contexts, associated_action


def one_var_abstraction(init, actions, uncertain_facts, precnd, effnd, goal):
    init_effects = create_normalized_effect(Tree("True", ['']), init)
    states = dict()
    stack = list()
    init_states = set()
    for c,e in init_effects:
        for _ in e:
            for e1 in _:
                if get_atom(e1) in uncertain_facts:
                    if e1[0] == '-':
                        s = State({get_atom(e1): 'False'})
                    else:
                        s = State({get_atom(e1): 'True'})
                    if s not in states:
                        states[s] = new_state_name()
                        init_states.add(states[s])
                        stack.append(s)
    facts = get_facts_from_formula(init)
    for f in uncertain_facts:
        if f not in facts:
            s = State({get_atom(f): 'False'})
            if s not in states:
                states[s] = new_state_name()
                stack.append(s)
                init_states.add(states[s])



    closed = set()
    transitions = set()
    while len(stack) > 0:
        s = stack.pop()
        closed.add(s)
        for t in actions:
            ret = sat(precnd[t], s, True)
            if ret is not None:
                if ret:
                    for c,e in effnd[t]:
                        ret = sat(c, s, True)
                        if ret is not None and ret:
                            for effect in e:
                                for e in effect:
                                    if get_atom(e) in s:
                                        if e[0] == '-':
                                            s1 = State({get_atom(e): 'False'})
                                        else:
                                            s1 = State({get_atom(e): 'True'})
                                        if s1 not in closed:
                                            if s1 not in states:
                                                states[s1] = new_state_name()
                                            stack.append(s1)
                                        transitions.add((states[s], t, states[s1]))
                else:
                    transitions.add((states[s], t, 'bot'))
        ret = sat(goal, s, True)
        if ret is not None:
            if ret:
                transitions.add((states[s], 'goal', states[s]))
            else:
                transitions.add((states[s], 'goal', 'bot'))
    return init_states, states, transitions

import os
cpces_folder = os.path.dirname(os.path.abspath(__file__))
ff_folder = '{}/ff_planner/FF-v2.3'.format(cpces_folder)

@click.command()
@click.option('-o', type=str, required=True, help="Domain Filename")
@click.option('-f', type=str, required=True, help="Problem Filename")
@click.option('-planner_path', type=str, default=ff_folder, help="FF Path")
@click.option('-grounder_path', type=str, default=ff_folder, help="FF Path")
@click.option('-planner', type=str, default='FF', help="Choose from FF and BFWS or input plan")
@click.option('-decomposition', type=bool, default=True, help="Enable decomposition? (default is true)")
@click.option('-lookahead_mode', type=int, default=1, help="Lookahead mode. 0, 1, 2 or 3 (1 is default)")
@click.option('-context_number', type=bool, default=False, help="Only return the number of contexts")
@click.option('-ip', type=str, default=None, help="Only return the number of contexts")
def main(o, f, planner_path, grounder_path, planner, decomposition, lookahead_mode, context_number, ip):
    states = dict()
    transitions = set()
    # Parse and get a default/nominal model
    det_dom_file, domain, detdomain = parse_determinise(o)
    print(f)
    det_problem_file, problem, deproblem = parse_determinise(f)
    print("Temporary domain file {}".format(det_dom_file))
    print("Temporary problem file {}".format(det_problem_file))
    ##Here we get the action structures of our interest
    A, parnd, precnd, effnd = get_actions_as_tree_structures(domain)
    structures = (A, parnd, precnd, effnd)

    # This contains all the non-deterministic effects, normalised for simplicity
    done = set()
    ACTIONS = get_ground_actions_from_ff(det_dom_file, det_problem_file,grounder_path)
    print("Ground Actions: {}".format(len(ACTIONS)))
    ##Let's get the very first plan on the one-outcome determinisation
    precnd['goal'] = get_goal(problem)
    print("Normalize effects")
    nd_norm_effect = create_ground_effects(ACTIONS, structures, done)

    F = get_facts_from_formula(get_init(problem))
    F = F.union(get_facts_from_formula(get_goal(problem)))
    F = F.union(get_relevant_facts(ACTIONS, structures))
    print("Number of relevant facts: {}".format(len(F)))


    print("Get Uncertain Facts and Contexts")
    uncertaint_facts, ctx = get_all_uncertain_facts(ACTIONS, nd_norm_effect, get_init(problem))
    uncertaint_facts = uncertaint_facts.intersection(get_actual_fluents(ACTIONS,nd_norm_effect, get_init(problem)))
    ACTIONS.add('goal')
    CTXS, CTX_ACTION = get_contexts(ctx,ACTIONS, precnd, F)
    print("Number of contexts: {}".format(len(CTXS)))
    if  not decomposition:
        CTXS = {'all': F}
        CTX_ACTION = {'all': ACTIONS}
    if (debug):
        print('Relevant facts: {}'.format(F))
        print('Uncertain facts: {}'.format(uncertaint_facts))
        print('Precondition function: {}'.format(precnd))
        print('Effect function: {}'.format(nd_norm_effect))
        print(CTXS)
    if (context_number):
        exit(-1)
    iteration = 0
    init_states = set()
    solvable = False
    print("Init states(NFA): {}, init transitions(NFA): {}".format(len(states),len(transitions)))

    timings = {'smt_construction' : 0, 'planning_time':0, 'smt_time' : 0}

    if ip is not None:
        plan = read_ipc_plan(ip) 
    else:
        plan = list()
    while True:
        ##Let's ground the actions that were in the plan against the non deterministic model
        print('Planning!! (Iteration {})'.format(iteration))
        print(plan)
        if (debug):
            print_info(iteration, states, plan, transitions)
        # print("Plan at iteration {}:{}".format(iteration, plan))
        before = time.time()
        formula = build_counterexample_formula(problem, F, plan, nd_norm_effect, precnd)
        timings['smt_construction'] += time.time() - before
        plan.append('goal')
        before = time.time()
        with Solver("msat", get_logic(formula)) as solver:
            solver.add_assertion(formula)
            if solver.solve():
                timings['smt_time'] += time.time() - before
                if iteration == 1 and (lookahead_mode == 4 or lookahead_mode == 5 ):
                    (init_states, states,transitions) = one_var_abstraction(get_init(problem), nd_norm_effect, uncertaint_facts, precnd, nd_norm_effect, get_goal(problem))
                #print("Found Counterexample -> Plan is not valid")
                (init_states ,transitions, states) =  update_transitions_states(states, transitions, plan, precnd,
                                                                               solver, init_states,nd_norm_effect, CTX_ACTION , ACTIONS, CTXS, lookahead_mode)
                update_problem_file(deproblem, transitions,  states.values(), det_problem_file, init_states)
            else:
                timings['smt_time'] += time.time() - before
                #print("Counterexample not found-> Plan is valid!")
                solvable = True
                break
        iteration = iteration + 1
        before = time.time()
        plan = planning(det_dom_file,det_problem_file,planner_path, planner)
        timings['planning_time'] += time.time()-before
        if plan is None:
            print("Problem is unsolvable")
            solvable = False
            break
        # exit(0)
    if solvable:
        print('Problem Solvable')
        print('Plan {}:'.format(plan[0:len(plan)-1]))
        print('Number of actions: {}'.format(len(plan)-1))
    else:
        print('Problem Unsolvable')
    print_info(iteration, states,plan,transitions, timings)
if __name__ == '__main__':
    main()
