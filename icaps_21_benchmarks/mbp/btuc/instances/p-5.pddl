
(define (problem btuc5)
   (:domain btuc)

   
   (:objects  p1  p2  p3  p4  p5   - p)
   
   (:init (and 
     (oneof (not (nclogged)) (nclogged))
     (oneof  (pos p1)  (pos p2)  (pos p3)  (pos p4)  (pos p5) 
)))
    (:conformantgoal (defused))
)

