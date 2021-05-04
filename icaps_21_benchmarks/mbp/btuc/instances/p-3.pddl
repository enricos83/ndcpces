
(define (problem btuc3)
   (:domain btuc)

   
   (:objects  p1  p2  p3   - p)
   
   (:init (and 
     (oneof (not (nclogged)) (nclogged))
     (oneof  (pos p1)  (pos p2)  (pos p3) 
)))
    (:conformantgoal (defused))
)

