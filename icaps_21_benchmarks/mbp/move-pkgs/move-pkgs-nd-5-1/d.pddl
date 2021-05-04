
(define (domain movepkgsnd) 
   (:requirements :strips :typing)
   (:types pos obj)
   (:constants  o1 - obj  p1_1 p1_2 p1_3 p1_4 p1_5 p2_1 p2_2 p2_3 p2_4 p2_5 p3_1 p3_2 p3_3 p3_4 p3_5 p4_1 p4_2 p4_3 p4_4 p4_5 p5_1 p5_2 p5_3 p5_4 p5_5 - pos) 
   (:predicates (at ?i - pos) (holding ?o -obj) (obj_at ?o -obj ?i -pos)
                (handempty))  
   (:action pickup
      :parameters (?o - obj ?i - pos )
      :precondition (and (at ?i) ); (handempty)
      :effect (when (obj_at ?o ?i) (and (holding ?o) (not (obj_at ?o ?i))))) ; (not (handempty)) 
   (:action putdown
      :parameters (?o - obj ?i - pos )
      :precondition (and (at ?i) (holding ?o))
      :effect (and (not (holding ?o)) (obj_at ?o ?i))) ;(handempty)

   (:action move_p1_1_p2_1
      :precondition (at p1_1)
      :effect (and (not (at p1_1)) (at p2_1)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj_at o1 p2_1)))
                          (and (obj_at o1 p2_1) (not (holding o1)))); (handempty) 
                 )  
      ))  
   (:action move_p2_1_p1_1
      :precondition (at p2_1)
      :effect (and (not (at p2_1)) (at p1_1)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj_at o1 p1_1)))
                          (and (obj_at o1 p1_1) (not (holding o1)))); (handempty) 
                 )  
      ))  
   (:action move_p1_2_p2_2
      :precondition (at p1_2)
      :effect (and (not (at p1_2)) (at p2_2)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj_at o1 p2_2)))
                          (and (obj_at o1 p2_2) (not (holding o1)))); (handempty) 
                 )  
      ))  
   (:action move_p2_2_p1_2
      :precondition (at p2_2)
      :effect (and (not (at p2_2)) (at p1_2)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj_at o1 p1_2)))
                          (and (obj_at o1 p1_2) (not (holding o1)))); (handempty) 
                 )  
      ))  
   (:action move_p1_3_p2_3
      :precondition (at p1_3)
      :effect (and (not (at p1_3)) (at p2_3)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj_at o1 p2_3)))
                          (and (obj_at o1 p2_3) (not (holding o1)))); (handempty) 
                 )  
      ))  
   (:action move_p2_3_p1_3
      :precondition (at p2_3)
      :effect (and (not (at p2_3)) (at p1_3)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj_at o1 p1_3)))
                          (and (obj_at o1 p1_3) (not (holding o1)))); (handempty) 
                 )  
      ))  
   (:action move_p1_4_p2_4
      :precondition (at p1_4)
      :effect (and (not (at p1_4)) (at p2_4)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj_at o1 p2_4)))
                          (and (obj_at o1 p2_4) (not (holding o1)))); (handempty) 
                 )  
      ))  
   (:action move_p2_4_p1_4
      :precondition (at p2_4)
      :effect (and (not (at p2_4)) (at p1_4)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj_at o1 p1_4)))
                          (and (obj_at o1 p1_4) (not (holding o1)))); (handempty) 
                 )  
      ))  
   (:action move_p1_5_p2_5
      :precondition (at p1_5)
      :effect (and (not (at p1_5)) (at p2_5)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj_at o1 p2_5)))
                          (and (obj_at o1 p2_5) (not (holding o1)))); (handempty) 
                 )  
      ))  
   (:action move_p2_5_p1_5
      :precondition (at p2_5)
      :effect (and (not (at p2_5)) (at p1_5)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj_at o1 p1_5)))
                          (and (obj_at o1 p1_5) (not (holding o1)))); (handempty) 
                 )  
      ))  
   (:action move_p2_1_p3_1
      :precondition (at p2_1)
      :effect (and (not (at p2_1)) (at p3_1)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj_at o1 p3_1)))
                          (and (obj_at o1 p3_1) (not (holding o1)))); (handempty) 
                 )  
      ))  
   (:action move_p3_1_p2_1
      :precondition (at p3_1)
      :effect (and (not (at p3_1)) (at p2_1)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj_at o1 p2_1)))
                          (and (obj_at o1 p2_1) (not (holding o1)))); (handempty) 
                 )  
      ))  
   (:action move_p2_2_p3_2
      :precondition (at p2_2)
      :effect (and (not (at p2_2)) (at p3_2)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj_at o1 p3_2)))
                          (and (obj_at o1 p3_2) (not (holding o1)))); (handempty) 
                 )  
      ))  
   (:action move_p3_2_p2_2
      :precondition (at p3_2)
      :effect (and (not (at p3_2)) (at p2_2)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj_at o1 p2_2)))
                          (and (obj_at o1 p2_2) (not (holding o1)))); (handempty) 
                 )  
      ))  
   (:action move_p2_3_p3_3
      :precondition (at p2_3)
      :effect (and (not (at p2_3)) (at p3_3)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj_at o1 p3_3)))
                          (and (obj_at o1 p3_3) (not (holding o1)))); (handempty) 
                 )  
      ))  
   (:action move_p3_3_p2_3
      :precondition (at p3_3)
      :effect (and (not (at p3_3)) (at p2_3)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj_at o1 p2_3)))
                          (and (obj_at o1 p2_3) (not (holding o1)))); (handempty) 
                 )  
      ))  
   (:action move_p2_4_p3_4
      :precondition (at p2_4)
      :effect (and (not (at p2_4)) (at p3_4)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj_at o1 p3_4)))
                          (and (obj_at o1 p3_4) (not (holding o1)))); (handempty) 
                 )  
      ))  
   (:action move_p3_4_p2_4
      :precondition (at p3_4)
      :effect (and (not (at p3_4)) (at p2_4)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj_at o1 p2_4)))
                          (and (obj_at o1 p2_4) (not (holding o1)))); (handempty) 
                 )  
      ))  
   (:action move_p2_5_p3_5
      :precondition (at p2_5)
      :effect (and (not (at p2_5)) (at p3_5)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj_at o1 p3_5)))
                          (and (obj_at o1 p3_5) (not (holding o1)))); (handempty) 
                 )  
      ))  
   (:action move_p3_5_p2_5
      :precondition (at p3_5)
      :effect (and (not (at p3_5)) (at p2_5)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj_at o1 p2_5)))
                          (and (obj_at o1 p2_5) (not (holding o1)))); (handempty) 
                 )  
      ))  
   (:action move_p3_1_p4_1
      :precondition (at p3_1)
      :effect (and (not (at p3_1)) (at p4_1)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj_at o1 p4_1)))
                          (and (obj_at o1 p4_1) (not (holding o1)))); (handempty) 
                 )  
      ))  
   (:action move_p4_1_p3_1
      :precondition (at p4_1)
      :effect (and (not (at p4_1)) (at p3_1)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj_at o1 p3_1)))
                          (and (obj_at o1 p3_1) (not (holding o1)))); (handempty) 
                 )  
      ))  
   (:action move_p3_2_p4_2
      :precondition (at p3_2)
      :effect (and (not (at p3_2)) (at p4_2)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj_at o1 p4_2)))
                          (and (obj_at o1 p4_2) (not (holding o1)))); (handempty) 
                 )  
      ))  
   (:action move_p4_2_p3_2
      :precondition (at p4_2)
      :effect (and (not (at p4_2)) (at p3_2)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj_at o1 p3_2)))
                          (and (obj_at o1 p3_2) (not (holding o1)))); (handempty) 
                 )  
      ))  
   (:action move_p3_3_p4_3
      :precondition (at p3_3)
      :effect (and (not (at p3_3)) (at p4_3)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj_at o1 p4_3)))
                          (and (obj_at o1 p4_3) (not (holding o1)))); (handempty) 
                 )  
      ))  
   (:action move_p4_3_p3_3
      :precondition (at p4_3)
      :effect (and (not (at p4_3)) (at p3_3)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj_at o1 p3_3)))
                          (and (obj_at o1 p3_3) (not (holding o1)))); (handempty) 
                 )  
      ))  
   (:action move_p3_4_p4_4
      :precondition (at p3_4)
      :effect (and (not (at p3_4)) (at p4_4)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj_at o1 p4_4)))
                          (and (obj_at o1 p4_4) (not (holding o1)))); (handempty) 
                 )  
      ))  
   (:action move_p4_4_p3_4
      :precondition (at p4_4)
      :effect (and (not (at p4_4)) (at p3_4)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj_at o1 p3_4)))
                          (and (obj_at o1 p3_4) (not (holding o1)))); (handempty) 
                 )  
      ))  
   (:action move_p3_5_p4_5
      :precondition (at p3_5)
      :effect (and (not (at p3_5)) (at p4_5)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj_at o1 p4_5)))
                          (and (obj_at o1 p4_5) (not (holding o1)))); (handempty) 
                 )  
      ))  
   (:action move_p4_5_p3_5
      :precondition (at p4_5)
      :effect (and (not (at p4_5)) (at p3_5)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj_at o1 p3_5)))
                          (and (obj_at o1 p3_5) (not (holding o1)))); (handempty) 
                 )  
      ))  
   (:action move_p4_1_p5_1
      :precondition (at p4_1)
      :effect (and (not (at p4_1)) (at p5_1)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj_at o1 p5_1)))
                          (and (obj_at o1 p5_1) (not (holding o1)))); (handempty) 
                 )  
      ))  
   (:action move_p5_1_p4_1
      :precondition (at p5_1)
      :effect (and (not (at p5_1)) (at p4_1)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj_at o1 p4_1)))
                          (and (obj_at o1 p4_1) (not (holding o1)))); (handempty) 
                 )  
      ))  
   (:action move_p4_2_p5_2
      :precondition (at p4_2)
      :effect (and (not (at p4_2)) (at p5_2)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj_at o1 p5_2)))
                          (and (obj_at o1 p5_2) (not (holding o1)))); (handempty) 
                 )  
      ))  
   (:action move_p5_2_p4_2
      :precondition (at p5_2)
      :effect (and (not (at p5_2)) (at p4_2)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj_at o1 p4_2)))
                          (and (obj_at o1 p4_2) (not (holding o1)))); (handempty) 
                 )  
      ))  
   (:action move_p4_3_p5_3
      :precondition (at p4_3)
      :effect (and (not (at p4_3)) (at p5_3)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj_at o1 p5_3)))
                          (and (obj_at o1 p5_3) (not (holding o1)))); (handempty) 
                 )  
      ))  
   (:action move_p5_3_p4_3
      :precondition (at p5_3)
      :effect (and (not (at p5_3)) (at p4_3)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj_at o1 p4_3)))
                          (and (obj_at o1 p4_3) (not (holding o1)))); (handempty) 
                 )  
      ))  
   (:action move_p4_4_p5_4
      :precondition (at p4_4)
      :effect (and (not (at p4_4)) (at p5_4)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj_at o1 p5_4)))
                          (and (obj_at o1 p5_4) (not (holding o1)))); (handempty) 
                 )  
      ))  
   (:action move_p5_4_p4_4
      :precondition (at p5_4)
      :effect (and (not (at p5_4)) (at p4_4)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj_at o1 p4_4)))
                          (and (obj_at o1 p4_4) (not (holding o1)))); (handempty) 
                 )  
      ))  
   (:action move_p4_5_p5_5
      :precondition (at p4_5)
      :effect (and (not (at p4_5)) (at p5_5)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj_at o1 p5_5)))
                          (and (obj_at o1 p5_5) (not (holding o1)))); (handempty) 
                 )  
      ))  
   (:action move_p5_5_p4_5
      :precondition (at p5_5)
      :effect (and (not (at p5_5)) (at p4_5)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj_at o1 p4_5)))
                          (and (obj_at o1 p4_5) (not (holding o1)))); (handempty) 
                 )  
      ))  
   (:action move_p1_1_p1_2
      :precondition (at p1_1)
      :effect (and (not (at p1_1)) (at p1_2)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj_at o1 p1_2)))
                          (and (obj_at o1 p1_2) (not (holding o1)))); (handempty) 
                 )  
      ))  
   (:action move_p1_2_p1_1
      :precondition (at p1_2)
      :effect (and (not (at p1_2)) (at p1_1)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj_at o1 p1_1)))
                          (and (obj_at o1 p1_1) (not (holding o1)))); (handempty) 
                 )  
      ))  
   (:action move_p2_1_p2_2
      :precondition (at p2_1)
      :effect (and (not (at p2_1)) (at p2_2)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj_at o1 p2_2)))
                          (and (obj_at o1 p2_2) (not (holding o1)))); (handempty) 
                 )  
      ))  
   (:action move_p2_2_p2_1
      :precondition (at p2_2)
      :effect (and (not (at p2_2)) (at p2_1)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj_at o1 p2_1)))
                          (and (obj_at o1 p2_1) (not (holding o1)))); (handempty) 
                 )  
      ))  
   (:action move_p3_1_p3_2
      :precondition (at p3_1)
      :effect (and (not (at p3_1)) (at p3_2)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj_at o1 p3_2)))
                          (and (obj_at o1 p3_2) (not (holding o1)))); (handempty) 
                 )  
      ))  
   (:action move_p3_2_p3_1
      :precondition (at p3_2)
      :effect (and (not (at p3_2)) (at p3_1)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj_at o1 p3_1)))
                          (and (obj_at o1 p3_1) (not (holding o1)))); (handempty) 
                 )  
      ))  
   (:action move_p4_1_p4_2
      :precondition (at p4_1)
      :effect (and (not (at p4_1)) (at p4_2)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj_at o1 p4_2)))
                          (and (obj_at o1 p4_2) (not (holding o1)))); (handempty) 
                 )  
      ))  
   (:action move_p4_2_p4_1
      :precondition (at p4_2)
      :effect (and (not (at p4_2)) (at p4_1)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj_at o1 p4_1)))
                          (and (obj_at o1 p4_1) (not (holding o1)))); (handempty) 
                 )  
      ))  
   (:action move_p5_1_p5_2
      :precondition (at p5_1)
      :effect (and (not (at p5_1)) (at p5_2)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj_at o1 p5_2)))
                          (and (obj_at o1 p5_2) (not (holding o1)))); (handempty) 
                 )  
      ))  
   (:action move_p5_2_p5_1
      :precondition (at p5_2)
      :effect (and (not (at p5_2)) (at p5_1)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj_at o1 p5_1)))
                          (and (obj_at o1 p5_1) (not (holding o1)))); (handempty) 
                 )  
      ))  
   (:action move_p1_2_p1_3
      :precondition (at p1_2)
      :effect (and (not (at p1_2)) (at p1_3)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj_at o1 p1_3)))
                          (and (obj_at o1 p1_3) (not (holding o1)))); (handempty) 
                 )  
      ))  
   (:action move_p1_3_p1_2
      :precondition (at p1_3)
      :effect (and (not (at p1_3)) (at p1_2)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj_at o1 p1_2)))
                          (and (obj_at o1 p1_2) (not (holding o1)))); (handempty) 
                 )  
      ))  
   (:action move_p2_2_p2_3
      :precondition (at p2_2)
      :effect (and (not (at p2_2)) (at p2_3)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj_at o1 p2_3)))
                          (and (obj_at o1 p2_3) (not (holding o1)))); (handempty) 
                 )  
      ))  
   (:action move_p2_3_p2_2
      :precondition (at p2_3)
      :effect (and (not (at p2_3)) (at p2_2)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj_at o1 p2_2)))
                          (and (obj_at o1 p2_2) (not (holding o1)))); (handempty) 
                 )  
      ))  
   (:action move_p3_2_p3_3
      :precondition (at p3_2)
      :effect (and (not (at p3_2)) (at p3_3)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj_at o1 p3_3)))
                          (and (obj_at o1 p3_3) (not (holding o1)))); (handempty) 
                 )  
      ))  
   (:action move_p3_3_p3_2
      :precondition (at p3_3)
      :effect (and (not (at p3_3)) (at p3_2)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj_at o1 p3_2)))
                          (and (obj_at o1 p3_2) (not (holding o1)))); (handempty) 
                 )  
      ))  
   (:action move_p4_2_p4_3
      :precondition (at p4_2)
      :effect (and (not (at p4_2)) (at p4_3)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj_at o1 p4_3)))
                          (and (obj_at o1 p4_3) (not (holding o1)))); (handempty) 
                 )  
      ))  
   (:action move_p4_3_p4_2
      :precondition (at p4_3)
      :effect (and (not (at p4_3)) (at p4_2)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj_at o1 p4_2)))
                          (and (obj_at o1 p4_2) (not (holding o1)))); (handempty) 
                 )  
      ))  
   (:action move_p5_2_p5_3
      :precondition (at p5_2)
      :effect (and (not (at p5_2)) (at p5_3)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj_at o1 p5_3)))
                          (and (obj_at o1 p5_3) (not (holding o1)))); (handempty) 
                 )  
      ))  
   (:action move_p5_3_p5_2
      :precondition (at p5_3)
      :effect (and (not (at p5_3)) (at p5_2)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj_at o1 p5_2)))
                          (and (obj_at o1 p5_2) (not (holding o1)))); (handempty) 
                 )  
      ))  
   (:action move_p1_3_p1_4
      :precondition (at p1_3)
      :effect (and (not (at p1_3)) (at p1_4)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj_at o1 p1_4)))
                          (and (obj_at o1 p1_4) (not (holding o1)))); (handempty) 
                 )  
      ))  
   (:action move_p1_4_p1_3
      :precondition (at p1_4)
      :effect (and (not (at p1_4)) (at p1_3)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj_at o1 p1_3)))
                          (and (obj_at o1 p1_3) (not (holding o1)))); (handempty) 
                 )  
      ))  
   (:action move_p2_3_p2_4
      :precondition (at p2_3)
      :effect (and (not (at p2_3)) (at p2_4)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj_at o1 p2_4)))
                          (and (obj_at o1 p2_4) (not (holding o1)))); (handempty) 
                 )  
      ))  
   (:action move_p2_4_p2_3
      :precondition (at p2_4)
      :effect (and (not (at p2_4)) (at p2_3)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj_at o1 p2_3)))
                          (and (obj_at o1 p2_3) (not (holding o1)))); (handempty) 
                 )  
      ))  
   (:action move_p3_3_p3_4
      :precondition (at p3_3)
      :effect (and (not (at p3_3)) (at p3_4)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj_at o1 p3_4)))
                          (and (obj_at o1 p3_4) (not (holding o1)))); (handempty) 
                 )  
      ))  
   (:action move_p3_4_p3_3
      :precondition (at p3_4)
      :effect (and (not (at p3_4)) (at p3_3)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj_at o1 p3_3)))
                          (and (obj_at o1 p3_3) (not (holding o1)))); (handempty) 
                 )  
      ))  
   (:action move_p4_3_p4_4
      :precondition (at p4_3)
      :effect (and (not (at p4_3)) (at p4_4)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj_at o1 p4_4)))
                          (and (obj_at o1 p4_4) (not (holding o1)))); (handempty) 
                 )  
      ))  
   (:action move_p4_4_p4_3
      :precondition (at p4_4)
      :effect (and (not (at p4_4)) (at p4_3)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj_at o1 p4_3)))
                          (and (obj_at o1 p4_3) (not (holding o1)))); (handempty) 
                 )  
      ))  
   (:action move_p5_3_p5_4
      :precondition (at p5_3)
      :effect (and (not (at p5_3)) (at p5_4)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj_at o1 p5_4)))
                          (and (obj_at o1 p5_4) (not (holding o1)))); (handempty) 
                 )  
      ))  
   (:action move_p5_4_p5_3
      :precondition (at p5_4)
      :effect (and (not (at p5_4)) (at p5_3)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj_at o1 p5_3)))
                          (and (obj_at o1 p5_3) (not (holding o1)))); (handempty) 
                 )  
      ))  
   (:action move_p1_4_p1_5
      :precondition (at p1_4)
      :effect (and (not (at p1_4)) (at p1_5)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj_at o1 p1_5)))
                          (and (obj_at o1 p1_5) (not (holding o1)))); (handempty) 
                 )  
      ))  
   (:action move_p1_5_p1_4
      :precondition (at p1_5)
      :effect (and (not (at p1_5)) (at p1_4)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj_at o1 p1_4)))
                          (and (obj_at o1 p1_4) (not (holding o1)))); (handempty) 
                 )  
      ))  
   (:action move_p2_4_p2_5
      :precondition (at p2_4)
      :effect (and (not (at p2_4)) (at p2_5)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj_at o1 p2_5)))
                          (and (obj_at o1 p2_5) (not (holding o1)))); (handempty) 
                 )  
      ))  
   (:action move_p2_5_p2_4
      :precondition (at p2_5)
      :effect (and (not (at p2_5)) (at p2_4)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj_at o1 p2_4)))
                          (and (obj_at o1 p2_4) (not (holding o1)))); (handempty) 
                 )  
      ))  
   (:action move_p3_4_p3_5
      :precondition (at p3_4)
      :effect (and (not (at p3_4)) (at p3_5)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj_at o1 p3_5)))
                          (and (obj_at o1 p3_5) (not (holding o1)))); (handempty) 
                 )  
      ))  
   (:action move_p3_5_p3_4
      :precondition (at p3_5)
      :effect (and (not (at p3_5)) (at p3_4)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj_at o1 p3_4)))
                          (and (obj_at o1 p3_4) (not (holding o1)))); (handempty) 
                 )  
      ))  
   (:action move_p4_4_p4_5
      :precondition (at p4_4)
      :effect (and (not (at p4_4)) (at p4_5)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj_at o1 p4_5)))
                          (and (obj_at o1 p4_5) (not (holding o1)))); (handempty) 
                 )  
      ))  
   (:action move_p4_5_p4_4
      :precondition (at p4_5)
      :effect (and (not (at p4_5)) (at p4_4)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj_at o1 p4_4)))
                          (and (obj_at o1 p4_4) (not (holding o1)))); (handempty) 
                 )  
      ))  
   (:action move_p5_4_p5_5
      :precondition (at p5_4)
      :effect (and (not (at p5_4)) (at p5_5)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj_at o1 p5_5)))
                          (and (obj_at o1 p5_5) (not (holding o1)))); (handempty) 
                 )  
      ))  
   (:action move_p5_5_p5_4
      :precondition (at p5_5)
      :effect (and (not (at p5_5)) (at p5_4)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj_at o1 p5_4)))
                          (and (obj_at o1 p5_4) (not (holding o1)))); (handempty) 
                 )  
      ))  
) 
