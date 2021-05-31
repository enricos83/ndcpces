# ndcpces

NDCPCES is a non-deterministic conformant planner based on counterexample guided sampling. The planner is presented in the paper:
"Non-Deterministic Conformant Planning Using a Counterexample-Guided Incremental Compilation to Classical Planning" by Enrico Scala and Alban Grastien, ICAPS-21.

The planner is based on the following steps:

1 - an initial (random) determinisation of each action is given;
2 - a classical planning problem is generated on such a first random determinisation;
3 - if the plan found is proved invalid, a NFA is built to prevent the planner to find this plan again;
4 - if no plan is found, there is no valid plan for the conformant planning problem either.

# Dependencies

1. pysmt with msat installed (pip3 install pysmt, then pysmt-install --msat). Note that pysmt-install --msat may require some c++ library to be installed, like gmp
2. the nltk library (pip3 install nltk)
3. the networkx library (pip3 install networkx)
4. the automata-lib library (pip3 install automata-lib)
5. python3.8 or python 3.6
6. the ff planner, expected to be in a folder called ff_planner

# Running it:

python ndcpces.py -o <domain-file> -f <problem-file> -lookahead_mode 0 -decomposition true

(This happened to be the fastest version as for the ICAPS-21 paper)

# Benchmarks

In the ICAPS-21 benchmark folder you can find all the benchmarks used for the ICAPS-21 paper. The folder contains also slightly revised encoding done for using k1k0 and mbp, two other planners that are capable of handling planning with non-deterministic effects under no observability constraint.
