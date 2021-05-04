
(define (domain btuc)
  (:requirements :typing)
  (:types p)
    
  (:predicates
    (pos ?x - p)
    (defused)
    (nclogged)
  )

  (:action dunk
   :parameters  (?x - p)
   :precondition (nclogged)
   :effect
    (and
       (oneof (not (nclogged)) (nclogged))
       (when (pos ?x) (defused))
    )
  )

  (:action flush
   :effect 
   (nclogged))
  )

