
(define (problem temp)
   (:domain bmtuc)
   
   (:objects  p1  p2   - p   t1  t2  t3   - toilet)    
   (:init (and 

         (oneof (not (nclogged t1)) (nclogged t1))
     
         (oneof (not (nclogged t2)) (nclogged t2))
     
         (oneof (not (nclogged t3)) (nclogged t3))
     
     (oneof  (pos p1)  (pos p2)  ))) 
    (:conformantgoal (defused))
)
