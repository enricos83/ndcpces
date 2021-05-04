
(define (problem btuc7)
   (:domain btuc)

   
   (:objects  p1  p2  p3  p4  p5  p6  p7   - p)
   
   (:init (and 
     (oneof (not (nclogged)) (nclogged))
     (oneof  (pos p1)  (pos p2)  (pos p3)  (pos p4)  (pos p5)  (pos p6)  (pos p7) 
)))
    (:conformantgoal (defused))
)

