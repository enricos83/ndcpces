
(define (problem btuc1)
   (:domain btuc)

   
   (:objects  p1   - p)
   
   (:init (and 
     (oneof (not (nclogged)) (nclogged))
     (oneof  (pos p1) 
)))
    (:conformantgoal (defused))
)

