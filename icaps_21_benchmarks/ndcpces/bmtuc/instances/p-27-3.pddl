
(define (problem bmtuc-27-3)
   (:domain bmtuc)
   
   (:objects  p1  p2  p3  p4  p5  p6  p7  p8  p9  p10  p11  p12  p13  p14  p15  p16  p17  p18  p19  p20  p21  p22  p23  p24  p25  p26  p27   - p   t1  t2  t3   - toilet)    
   (:init (and 

         (oneof (not (nclogged t1)) (nclogged t1))
     
         (oneof (not (nclogged t2)) (nclogged t2))
     
         (oneof (not (nclogged t3)) (nclogged t3))
     
     (oneof  (pos p1)  (pos p2)  (pos p3)  (pos p4)  (pos p5)  (pos p6)  (pos p7)  (pos p8)  (pos p9)  (pos p10)  (pos p11)  (pos p12)  (pos p13)  (pos p14)  (pos p15)  (pos p16)  (pos p17)  (pos p18)  (pos p19)  (pos p20)  (pos p21)  (pos p22)  (pos p23)  (pos p24)  (pos p25)  (pos p26)  (pos p27)  ))) 
    (:goal (defused))
)
