(define
  (domain move-pkgs-nd)
  (:requirements :strips :typing)
  (:types pos obj state)
  (:constants
    o1
    -obj
    p1-1
    p1-2
    p1-3
    p2-1
    p2-2
    p2-3
    p3-1
    p3-2
    p3-3
    -pos
    bot - state)
  (:predicates
    (at ?i)
    (holding ?o)
    (obj-at ?o ?i)
    (handempty )
    (T_move-p3-3-p2-3  ?s1 ?s - state)
    (T_move-p2-2-p3-2  ?s1 ?s - state)
    (T_move-p1-1-p2-1  ?s1 ?s - state)
    (T_move-p1-2-p2-2  ?s1 ?s - state)
    (T_init ?s0 ?s1 - state)
    (T_move-p2-3-p1-3  ?s1 ?s - state)
    (T_move-p2-1-p3-1  ?s1 ?s - state)
    (T_move-p3-2-p3-3  ?s1 ?s - state)
    (T_move-p3-3-p3-2  ?s1 ?s - state)
    (_p ?s - state)
    (T_move-p2-3-p2-2  ?s1 ?s - state)
    (T_goal ?s0 ?s1 - state)
    (T_move-p3-1-p3-2  ?s1 ?s - state)
    (T_move-p3-2-p3-1  ?s1 ?s - state)
    (T_move-p2-1-p2-2  ?s1 ?s - state)
    (T_static-or ?o -obj ?s1 ?s - state)
    (T_move-p1-2-p1-1  ?s1 ?s - state)
    (T_move-p1-3-p2-3  ?s1 ?s - state)
    (T_move-p1-1-p1-2  ?s1 ?s - state)
    (T_move-p2-2-p2-1  ?s1 ?s - state)
    (T_move-p3-2-p2-2  ?s1 ?s - state)
    (T_move-p2-2-p1-2  ?s1 ?s - state)
    (T_move-p1-3-p1-2  ?s1 ?s - state)
    (T_putdown ?o -obj ?i -pos ?s1 ?s - state)
    (T_move-p2-1-p1-1  ?s1 ?s - state)
    (T_move-p2-3-p3-3  ?s1 ?s - state)
    (T_pickup ?o -obj ?i -pos ?s1 ?s - state)
    (T_move-p1-2-p1-3  ?s1 ?s - state)
    (T_move-p2-2-p2-3  ?s1 ?s - state)
    (T_move-p3-1-p2-1  ?s1 ?s - state))
  (:action
    pickup
    :parameters
    (?o -obj ?i -pos)
    :precondition
    (and
      (at ?i)
      (forall
        (?s - state)
        (not (and (T_pickup ?o ?i ?s bot) (_p ?s)))))
    :effect
    (and
      (forall  (?s - state) (when (exists (?s1 - state) (and  (T_pickup ?o ?i ?s1 ?s) (_p ?s1) ) )(_p ?s)))
      (forall  (?s - state) (when (not (exists (?s1 - state)(and  (T_pickup ?o ?i ?s1 ?s) (_p ?s1) ) ))(not (_p ?s))))
      (when (obj-at ?o ?i) (and (holding ?o) (not (obj-at ?o ?i))))))
  (:action
    putdown
    :parameters
    (?o -obj ?i -pos)
    :precondition
    (and
      (at ?i)
      (holding ?o)
      (forall
        (?s - state)
        (not (and (T_putdown ?o ?i ?s bot) (_p ?s)))))
    :effect
    (and
      (forall  (?s - state) (when (exists (?s1 - state) (and  (T_putdown ?o ?i ?s1 ?s) (_p ?s1) ) )(_p ?s)))
      (forall  (?s - state) (when (not (exists (?s1 - state)(and  (T_putdown ?o ?i ?s1 ?s) (_p ?s1) ) ))(not (_p ?s))))
      (not (holding ?o))
      (obj-at ?o ?i)))
  (:action
    move-p1-1-p2-1
    :precondition
    (and
      (at p1-1)
      (forall
        (?s - state)
        (not (and (T_move-p1-1-p2-1 ?s bot) (_p ?s)))))
    :effect
    (and
      (forall  (?s - state) (when (exists (?s1 - state) (and  (T_move-p1-1-p2-1  ?s1 ?s) (_p ?s1) ) )(_p ?s)))
      (forall  (?s - state) (when (not (exists (?s1 - state)(and  (T_move-p1-1-p2-1  ?s1 ?s) (_p ?s1) ) ))(not (_p ?s))))
      (not (at p1-1))
      (at p2-1)
      (when (holding o1) (and (holding o1) (not (obj-at o1 p2-1))))))
  (:action
    move-p2-1-p1-1
    :precondition
    (and
      (at p2-1)
      (forall
        (?s - state)
        (not (and (T_move-p2-1-p1-1 ?s bot) (_p ?s)))))
    :effect
    (and
      (forall  (?s - state) (when (exists (?s1 - state) (and  (T_move-p2-1-p1-1  ?s1 ?s) (_p ?s1) ) )(_p ?s)))
      (forall  (?s - state) (when (not (exists (?s1 - state)(and  (T_move-p2-1-p1-1  ?s1 ?s) (_p ?s1) ) ))(not (_p ?s))))
      (not (at p2-1))
      (at p1-1)
      (when (holding o1) (and (holding o1) (not (obj-at o1 p1-1))))))
  (:action
    move-p1-2-p2-2
    :precondition
    (and
      (at p1-2)
      (forall
        (?s - state)
        (not (and (T_move-p1-2-p2-2 ?s bot) (_p ?s)))))
    :effect
    (and
      (forall  (?s - state) (when (exists (?s1 - state) (and  (T_move-p1-2-p2-2  ?s1 ?s) (_p ?s1) ) )(_p ?s)))
      (forall  (?s - state) (when (not (exists (?s1 - state)(and  (T_move-p1-2-p2-2  ?s1 ?s) (_p ?s1) ) ))(not (_p ?s))))
      (not (at p1-2))
      (at p2-2)
      (when (holding o1) (and (holding o1) (not (obj-at o1 p2-2))))))
  (:action
    move-p2-2-p1-2
    :precondition
    (and
      (at p2-2)
      (forall
        (?s - state)
        (not (and (T_move-p2-2-p1-2 ?s bot) (_p ?s)))))
    :effect
    (and
      (forall  (?s - state) (when (exists (?s1 - state) (and  (T_move-p2-2-p1-2  ?s1 ?s) (_p ?s1) ) )(_p ?s)))
      (forall  (?s - state) (when (not (exists (?s1 - state)(and  (T_move-p2-2-p1-2  ?s1 ?s) (_p ?s1) ) ))(not (_p ?s))))
      (not (at p2-2))
      (at p1-2)
      (when (holding o1) (and (holding o1) (not (obj-at o1 p1-2))))))
  (:action
    move-p1-3-p2-3
    :precondition
    (and
      (at p1-3)
      (forall
        (?s - state)
        (not (and (T_move-p1-3-p2-3 ?s bot) (_p ?s)))))
    :effect
    (and
      (forall  (?s - state) (when (exists (?s1 - state) (and  (T_move-p1-3-p2-3  ?s1 ?s) (_p ?s1) ) )(_p ?s)))
      (forall  (?s - state) (when (not (exists (?s1 - state)(and  (T_move-p1-3-p2-3  ?s1 ?s) (_p ?s1) ) ))(not (_p ?s))))
      (not (at p1-3))
      (at p2-3)
      (when (holding o1) (and (holding o1) (not (obj-at o1 p2-3))))))
  (:action
    move-p2-3-p1-3
    :precondition
    (and
      (at p2-3)
      (forall
        (?s - state)
        (not (and (T_move-p2-3-p1-3 ?s bot) (_p ?s)))))
    :effect
    (and
      (forall  (?s - state) (when (exists (?s1 - state) (and  (T_move-p2-3-p1-3  ?s1 ?s) (_p ?s1) ) )(_p ?s)))
      (forall  (?s - state) (when (not (exists (?s1 - state)(and  (T_move-p2-3-p1-3  ?s1 ?s) (_p ?s1) ) ))(not (_p ?s))))
      (not (at p2-3))
      (at p1-3)
      (when (holding o1) (and (holding o1) (not (obj-at o1 p1-3))))))
  (:action
    move-p2-1-p3-1
    :precondition
    (and
      (at p2-1)
      (forall
        (?s - state)
        (not (and (T_move-p2-1-p3-1 ?s bot) (_p ?s)))))
    :effect
    (and
      (forall  (?s - state) (when (exists (?s1 - state) (and  (T_move-p2-1-p3-1  ?s1 ?s) (_p ?s1) ) )(_p ?s)))
      (forall  (?s - state) (when (not (exists (?s1 - state)(and  (T_move-p2-1-p3-1  ?s1 ?s) (_p ?s1) ) ))(not (_p ?s))))
      (not (at p2-1))
      (at p3-1)
      (when (holding o1) (and (holding o1) (not (obj-at o1 p3-1))))))
  (:action
    move-p3-1-p2-1
    :precondition
    (and
      (at p3-1)
      (forall
        (?s - state)
        (not (and (T_move-p3-1-p2-1 ?s bot) (_p ?s)))))
    :effect
    (and
      (forall  (?s - state) (when (exists (?s1 - state) (and  (T_move-p3-1-p2-1  ?s1 ?s) (_p ?s1) ) )(_p ?s)))
      (forall  (?s - state) (when (not (exists (?s1 - state)(and  (T_move-p3-1-p2-1  ?s1 ?s) (_p ?s1) ) ))(not (_p ?s))))
      (not (at p3-1))
      (at p2-1)
      (when (holding o1) (and (holding o1) (not (obj-at o1 p2-1))))))
  (:action
    move-p2-2-p3-2
    :precondition
    (and
      (at p2-2)
      (forall
        (?s - state)
        (not (and (T_move-p2-2-p3-2 ?s bot) (_p ?s)))))
    :effect
    (and
      (forall  (?s - state) (when (exists (?s1 - state) (and  (T_move-p2-2-p3-2  ?s1 ?s) (_p ?s1) ) )(_p ?s)))
      (forall  (?s - state) (when (not (exists (?s1 - state)(and  (T_move-p2-2-p3-2  ?s1 ?s) (_p ?s1) ) ))(not (_p ?s))))
      (not (at p2-2))
      (at p3-2)
      (when (holding o1) (and (holding o1) (not (obj-at o1 p3-2))))))
  (:action
    move-p3-2-p2-2
    :precondition
    (and
      (at p3-2)
      (forall
        (?s - state)
        (not (and (T_move-p3-2-p2-2 ?s bot) (_p ?s)))))
    :effect
    (and
      (forall  (?s - state) (when (exists (?s1 - state) (and  (T_move-p3-2-p2-2  ?s1 ?s) (_p ?s1) ) )(_p ?s)))
      (forall  (?s - state) (when (not (exists (?s1 - state)(and  (T_move-p3-2-p2-2  ?s1 ?s) (_p ?s1) ) ))(not (_p ?s))))
      (not (at p3-2))
      (at p2-2)
      (when (holding o1) (and (holding o1) (not (obj-at o1 p2-2))))))
  (:action
    move-p2-3-p3-3
    :precondition
    (and
      (at p2-3)
      (forall
        (?s - state)
        (not (and (T_move-p2-3-p3-3 ?s bot) (_p ?s)))))
    :effect
    (and
      (forall  (?s - state) (when (exists (?s1 - state) (and  (T_move-p2-3-p3-3  ?s1 ?s) (_p ?s1) ) )(_p ?s)))
      (forall  (?s - state) (when (not (exists (?s1 - state)(and  (T_move-p2-3-p3-3  ?s1 ?s) (_p ?s1) ) ))(not (_p ?s))))
      (not (at p2-3))
      (at p3-3)
      (when (holding o1) (and (holding o1) (not (obj-at o1 p3-3))))))
  (:action
    move-p3-3-p2-3
    :precondition
    (and
      (at p3-3)
      (forall
        (?s - state)
        (not (and (T_move-p3-3-p2-3 ?s bot) (_p ?s)))))
    :effect
    (and
      (forall  (?s - state) (when (exists (?s1 - state) (and  (T_move-p3-3-p2-3  ?s1 ?s) (_p ?s1) ) )(_p ?s)))
      (forall  (?s - state) (when (not (exists (?s1 - state)(and  (T_move-p3-3-p2-3  ?s1 ?s) (_p ?s1) ) ))(not (_p ?s))))
      (not (at p3-3))
      (at p2-3)
      (when (holding o1) (and (holding o1) (not (obj-at o1 p2-3))))))
  (:action
    move-p1-1-p1-2
    :precondition
    (and
      (at p1-1)
      (forall
        (?s - state)
        (not (and (T_move-p1-1-p1-2 ?s bot) (_p ?s)))))
    :effect
    (and
      (forall  (?s - state) (when (exists (?s1 - state) (and  (T_move-p1-1-p1-2  ?s1 ?s) (_p ?s1) ) )(_p ?s)))
      (forall  (?s - state) (when (not (exists (?s1 - state)(and  (T_move-p1-1-p1-2  ?s1 ?s) (_p ?s1) ) ))(not (_p ?s))))
      (not (at p1-1))
      (at p1-2)
      (when (holding o1) (and (holding o1) (not (obj-at o1 p1-2))))))
  (:action
    move-p1-2-p1-1
    :precondition
    (and
      (at p1-2)
      (forall
        (?s - state)
        (not (and (T_move-p1-2-p1-1 ?s bot) (_p ?s)))))
    :effect
    (and
      (forall  (?s - state) (when (exists (?s1 - state) (and  (T_move-p1-2-p1-1  ?s1 ?s) (_p ?s1) ) )(_p ?s)))
      (forall  (?s - state) (when (not (exists (?s1 - state)(and  (T_move-p1-2-p1-1  ?s1 ?s) (_p ?s1) ) ))(not (_p ?s))))
      (not (at p1-2))
      (at p1-1)
      (when (holding o1) (and (holding o1) (not (obj-at o1 p1-1))))))
  (:action
    move-p2-1-p2-2
    :precondition
    (and
      (at p2-1)
      (forall
        (?s - state)
        (not (and (T_move-p2-1-p2-2 ?s bot) (_p ?s)))))
    :effect
    (and
      (forall  (?s - state) (when (exists (?s1 - state) (and  (T_move-p2-1-p2-2  ?s1 ?s) (_p ?s1) ) )(_p ?s)))
      (forall  (?s - state) (when (not (exists (?s1 - state)(and  (T_move-p2-1-p2-2  ?s1 ?s) (_p ?s1) ) ))(not (_p ?s))))
      (not (at p2-1))
      (at p2-2)
      (when (holding o1) (and (holding o1) (not (obj-at o1 p2-2))))))
  (:action
    move-p2-2-p2-1
    :precondition
    (and
      (at p2-2)
      (forall
        (?s - state)
        (not (and (T_move-p2-2-p2-1 ?s bot) (_p ?s)))))
    :effect
    (and
      (forall  (?s - state) (when (exists (?s1 - state) (and  (T_move-p2-2-p2-1  ?s1 ?s) (_p ?s1) ) )(_p ?s)))
      (forall  (?s - state) (when (not (exists (?s1 - state)(and  (T_move-p2-2-p2-1  ?s1 ?s) (_p ?s1) ) ))(not (_p ?s))))
      (not (at p2-2))
      (at p2-1)
      (when (holding o1) (and (holding o1) (not (obj-at o1 p2-1))))))
  (:action
    move-p3-1-p3-2
    :precondition
    (and
      (at p3-1)
      (forall
        (?s - state)
        (not (and (T_move-p3-1-p3-2 ?s bot) (_p ?s)))))
    :effect
    (and
      (forall  (?s - state) (when (exists (?s1 - state) (and  (T_move-p3-1-p3-2  ?s1 ?s) (_p ?s1) ) )(_p ?s)))
      (forall  (?s - state) (when (not (exists (?s1 - state)(and  (T_move-p3-1-p3-2  ?s1 ?s) (_p ?s1) ) ))(not (_p ?s))))
      (not (at p3-1))
      (at p3-2)
      (when (holding o1) (and (holding o1) (not (obj-at o1 p3-2))))))
  (:action
    move-p3-2-p3-1
    :precondition
    (and
      (at p3-2)
      (forall
        (?s - state)
        (not (and (T_move-p3-2-p3-1 ?s bot) (_p ?s)))))
    :effect
    (and
      (forall  (?s - state) (when (exists (?s1 - state) (and  (T_move-p3-2-p3-1  ?s1 ?s) (_p ?s1) ) )(_p ?s)))
      (forall  (?s - state) (when (not (exists (?s1 - state)(and  (T_move-p3-2-p3-1  ?s1 ?s) (_p ?s1) ) ))(not (_p ?s))))
      (not (at p3-2))
      (at p3-1)
      (when (holding o1) (and (holding o1) (not (obj-at o1 p3-1))))))
  (:action
    move-p1-2-p1-3
    :precondition
    (and
      (at p1-2)
      (forall
        (?s - state)
        (not (and (T_move-p1-2-p1-3 ?s bot) (_p ?s)))))
    :effect
    (and
      (forall  (?s - state) (when (exists (?s1 - state) (and  (T_move-p1-2-p1-3  ?s1 ?s) (_p ?s1) ) )(_p ?s)))
      (forall  (?s - state) (when (not (exists (?s1 - state)(and  (T_move-p1-2-p1-3  ?s1 ?s) (_p ?s1) ) ))(not (_p ?s))))
      (not (at p1-2))
      (at p1-3)
      (when (holding o1) (and (holding o1) (not (obj-at o1 p1-3))))))
  (:action
    move-p1-3-p1-2
    :precondition
    (and
      (at p1-3)
      (forall
        (?s - state)
        (not (and (T_move-p1-3-p1-2 ?s bot) (_p ?s)))))
    :effect
    (and
      (forall  (?s - state) (when (exists (?s1 - state) (and  (T_move-p1-3-p1-2  ?s1 ?s) (_p ?s1) ) )(_p ?s)))
      (forall  (?s - state) (when (not (exists (?s1 - state)(and  (T_move-p1-3-p1-2  ?s1 ?s) (_p ?s1) ) ))(not (_p ?s))))
      (not (at p1-3))
      (at p1-2)
      (when (holding o1) (and (holding o1) (not (obj-at o1 p1-2))))))
  (:action
    move-p2-2-p2-3
    :precondition
    (and
      (at p2-2)
      (forall
        (?s - state)
        (not (and (T_move-p2-2-p2-3 ?s bot) (_p ?s)))))
    :effect
    (and
      (forall  (?s - state) (when (exists (?s1 - state) (and  (T_move-p2-2-p2-3  ?s1 ?s) (_p ?s1) ) )(_p ?s)))
      (forall  (?s - state) (when (not (exists (?s1 - state)(and  (T_move-p2-2-p2-3  ?s1 ?s) (_p ?s1) ) ))(not (_p ?s))))
      (not (at p2-2))
      (at p2-3)
      (when (holding o1) (and (holding o1) (not (obj-at o1 p2-3))))))
  (:action
    move-p2-3-p2-2
    :precondition
    (and
      (at p2-3)
      (forall
        (?s - state)
        (not (and (T_move-p2-3-p2-2 ?s bot) (_p ?s)))))
    :effect
    (and
      (forall  (?s - state) (when (exists (?s1 - state) (and  (T_move-p2-3-p2-2  ?s1 ?s) (_p ?s1) ) )(_p ?s)))
      (forall  (?s - state) (when (not (exists (?s1 - state)(and  (T_move-p2-3-p2-2  ?s1 ?s) (_p ?s1) ) ))(not (_p ?s))))
      (not (at p2-3))
      (at p2-2)
      (when (holding o1) (and (holding o1) (not (obj-at o1 p2-2))))))
  (:action
    move-p3-2-p3-3
    :precondition
    (and
      (at p3-2)
      (forall
        (?s - state)
        (not (and (T_move-p3-2-p3-3 ?s bot) (_p ?s)))))
    :effect
    (and
      (forall  (?s - state) (when (exists (?s1 - state) (and  (T_move-p3-2-p3-3  ?s1 ?s) (_p ?s1) ) )(_p ?s)))
      (forall  (?s - state) (when (not (exists (?s1 - state)(and  (T_move-p3-2-p3-3  ?s1 ?s) (_p ?s1) ) ))(not (_p ?s))))
      (not (at p3-2))
      (at p3-3)
      (when (holding o1) (and (holding o1) (not (obj-at o1 p3-3))))))
  (:action
    move-p3-3-p3-2
    :precondition
    (and
      (at p3-3)
      (forall
        (?s - state)
        (not (and (T_move-p3-3-p3-2 ?s bot) (_p ?s)))))
    :effect
    (and
      (forall  (?s - state) (when (exists (?s1 - state) (and  (T_move-p3-3-p3-2  ?s1 ?s) (_p ?s1) ) )(_p ?s)))
      (forall  (?s - state) (when (not (exists (?s1 - state)(and  (T_move-p3-3-p3-2  ?s1 ?s) (_p ?s1) ) ))(not (_p ?s))))
      (not (at p3-3))
      (at p3-2)
      (when (holding o1) (and (holding o1) (not (obj-at o1 p3-2))))))
  (:action
    static-or
    :parameters
    (?o -obj)
    :effect
    (and
      (forall  (?s - state) (when (exists (?s1 - state) (and  (T_static-or ?o ?s1 ?s) (_p ?s1) ) )(_p ?s)))
      (forall  (?s - state) (when (not (exists (?s1 - state)(and  (T_static-or ?o ?s1 ?s) (_p ?s1) ) ))(not (_p ?s))))
      (when
        (and
          (not (holding ?o))
          (not (obj-at ?o p1-2))
          (not (obj-at ?o p1-3))
          (not (obj-at ?o p2-1))
          (not (obj-at ?o p2-2))
          (not (obj-at ?o p2-3))
          (not (obj-at ?o p3-1))
          (not (obj-at ?o p3-2))
          (not (obj-at ?o p3-3)))
        (obj-at ?o p1-1))
      (when
        (and
          (not (holding ?o))
          (not (obj-at ?o p1-1))
          (not (obj-at ?o p1-3))
          (not (obj-at ?o p2-1))
          (not (obj-at ?o p2-2))
          (not (obj-at ?o p2-3))
          (not (obj-at ?o p3-1))
          (not (obj-at ?o p3-2))
          (not (obj-at ?o p3-3)))
        (obj-at ?o p1-2))
      (when
        (and
          (not (holding ?o))
          (not (obj-at ?o p1-1))
          (not (obj-at ?o p1-2))
          (not (obj-at ?o p2-1))
          (not (obj-at ?o p2-2))
          (not (obj-at ?o p2-3))
          (not (obj-at ?o p3-1))
          (not (obj-at ?o p3-2))
          (not (obj-at ?o p3-3)))
        (obj-at ?o p1-3))
      (when
        (and
          (not (holding ?o))
          (not (obj-at ?o p1-1))
          (not (obj-at ?o p1-2))
          (not (obj-at ?o p1-3))
          (not (obj-at ?o p2-2))
          (not (obj-at ?o p2-3))
          (not (obj-at ?o p3-1))
          (not (obj-at ?o p3-2))
          (not (obj-at ?o p3-3)))
        (obj-at ?o p2-1))
      (when
        (and
          (not (holding ?o))
          (not (obj-at ?o p1-1))
          (not (obj-at ?o p1-2))
          (not (obj-at ?o p1-3))
          (not (obj-at ?o p2-1))
          (not (obj-at ?o p2-3))
          (not (obj-at ?o p3-1))
          (not (obj-at ?o p3-2))
          (not (obj-at ?o p3-3)))
        (obj-at ?o p2-2))
      (when
        (and
          (not (holding ?o))
          (not (obj-at ?o p1-1))
          (not (obj-at ?o p1-2))
          (not (obj-at ?o p1-3))
          (not (obj-at ?o p2-1))
          (not (obj-at ?o p2-2))
          (not (obj-at ?o p3-1))
          (not (obj-at ?o p3-2))
          (not (obj-at ?o p3-3)))
        (obj-at ?o p2-3))
      (when
        (and
          (not (holding ?o))
          (not (obj-at ?o p1-1))
          (not (obj-at ?o p1-2))
          (not (obj-at ?o p1-3))
          (not (obj-at ?o p2-1))
          (not (obj-at ?o p2-2))
          (not (obj-at ?o p2-3))
          (not (obj-at ?o p3-2))
          (not (obj-at ?o p3-3)))
        (obj-at ?o p3-1))
      (when
        (and
          (not (holding ?o))
          (not (obj-at ?o p1-1))
          (not (obj-at ?o p1-2))
          (not (obj-at ?o p1-3))
          (not (obj-at ?o p2-1))
          (not (obj-at ?o p2-2))
          (not (obj-at ?o p2-3))
          (not (obj-at ?o p3-1))
          (not (obj-at ?o p3-3)))
        (obj-at ?o p3-2))
      (when
        (and
          (not (holding ?o))
          (not (obj-at ?o p1-1))
          (not (obj-at ?o p1-2))
          (not (obj-at ?o p1-3))
          (not (obj-at ?o p2-1))
          (not (obj-at ?o p2-2))
          (not (obj-at ?o p2-3))
          (not (obj-at ?o p3-1))
          (not (obj-at ?o p3-2)))
        (obj-at ?o p3-3))
      (when
        (and
          (not (obj-at ?o p1-1))
          (not (obj-at ?o p1-2))
          (not (obj-at ?o p1-3))
          (not (obj-at ?o p2-1))
          (not (obj-at ?o p2-2))
          (not (obj-at ?o p2-3))
          (not (obj-at ?o p3-1))
          (not (obj-at ?o p3-2))
          (not (obj-at ?o p3-3)))
        (holding ?o)))))