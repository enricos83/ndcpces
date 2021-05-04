
(define (domain movepkgsnd) 
   ;(:requirements :strips :typing)
   (:types pos obj)
   (:constants  o1 o2 o3 - obj  p1_1 p1_2 p1_3 p1_4 p2_1 p2_2 p2_3 p2_4 p3_1 p3_2 p3_3 p3_4 p4_1 p4_2 p4_3 p4_4 - pos) 
   
   
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
                 (when (holding o2)
                       (oneof 
                          (and (holding o2) (not  (obj_at o2 p2_1)))
                          (and (obj_at o2 p2_1) (not (holding o2)))); (handempty) 
                 )  
                 (when (holding o3)
                       (oneof 
                          (and (holding o3) (not  (obj_at o3 p2_1)))
                          (and (obj_at o3 p2_1) (not (holding o3)))); (handempty) 
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
                 (when (holding o2)
                       (oneof 
                          (and (holding o2) (not  (obj_at o2 p1_1)))
                          (and (obj_at o2 p1_1) (not (holding o2)))); (handempty) 
                 )  
                 (when (holding o3)
                       (oneof 
                          (and (holding o3) (not  (obj_at o3 p1_1)))
                          (and (obj_at o3 p1_1) (not (holding o3)))); (handempty) 
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
                 (when (holding o2)
                       (oneof 
                          (and (holding o2) (not  (obj_at o2 p2_2)))
                          (and (obj_at o2 p2_2) (not (holding o2)))); (handempty) 
                 )  
                 (when (holding o3)
                       (oneof 
                          (and (holding o3) (not  (obj_at o3 p2_2)))
                          (and (obj_at o3 p2_2) (not (holding o3)))); (handempty) 
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
                 (when (holding o2)
                       (oneof 
                          (and (holding o2) (not  (obj_at o2 p1_2)))
                          (and (obj_at o2 p1_2) (not (holding o2)))); (handempty) 
                 )  
                 (when (holding o3)
                       (oneof 
                          (and (holding o3) (not  (obj_at o3 p1_2)))
                          (and (obj_at o3 p1_2) (not (holding o3)))); (handempty) 
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
                 (when (holding o2)
                       (oneof 
                          (and (holding o2) (not  (obj_at o2 p2_3)))
                          (and (obj_at o2 p2_3) (not (holding o2)))); (handempty) 
                 )  
                 (when (holding o3)
                       (oneof 
                          (and (holding o3) (not  (obj_at o3 p2_3)))
                          (and (obj_at o3 p2_3) (not (holding o3)))); (handempty) 
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
                 (when (holding o2)
                       (oneof 
                          (and (holding o2) (not  (obj_at o2 p1_3)))
                          (and (obj_at o2 p1_3) (not (holding o2)))); (handempty) 
                 )  
                 (when (holding o3)
                       (oneof 
                          (and (holding o3) (not  (obj_at o3 p1_3)))
                          (and (obj_at o3 p1_3) (not (holding o3)))); (handempty) 
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
                 (when (holding o2)
                       (oneof 
                          (and (holding o2) (not  (obj_at o2 p2_4)))
                          (and (obj_at o2 p2_4) (not (holding o2)))); (handempty) 
                 )  
                 (when (holding o3)
                       (oneof 
                          (and (holding o3) (not  (obj_at o3 p2_4)))
                          (and (obj_at o3 p2_4) (not (holding o3)))); (handempty) 
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
                 (when (holding o2)
                       (oneof 
                          (and (holding o2) (not  (obj_at o2 p1_4)))
                          (and (obj_at o2 p1_4) (not (holding o2)))); (handempty) 
                 )  
                 (when (holding o3)
                       (oneof 
                          (and (holding o3) (not  (obj_at o3 p1_4)))
                          (and (obj_at o3 p1_4) (not (holding o3)))); (handempty) 
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
                 (when (holding o2)
                       (oneof 
                          (and (holding o2) (not  (obj_at o2 p3_1)))
                          (and (obj_at o2 p3_1) (not (holding o2)))); (handempty) 
                 )  
                 (when (holding o3)
                       (oneof 
                          (and (holding o3) (not  (obj_at o3 p3_1)))
                          (and (obj_at o3 p3_1) (not (holding o3)))); (handempty) 
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
                 (when (holding o2)
                       (oneof 
                          (and (holding o2) (not  (obj_at o2 p2_1)))
                          (and (obj_at o2 p2_1) (not (holding o2)))); (handempty) 
                 )  
                 (when (holding o3)
                       (oneof 
                          (and (holding o3) (not  (obj_at o3 p2_1)))
                          (and (obj_at o3 p2_1) (not (holding o3)))); (handempty) 
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
                 (when (holding o2)
                       (oneof 
                          (and (holding o2) (not  (obj_at o2 p3_2)))
                          (and (obj_at o2 p3_2) (not (holding o2)))); (handempty) 
                 )  
                 (when (holding o3)
                       (oneof 
                          (and (holding o3) (not  (obj_at o3 p3_2)))
                          (and (obj_at o3 p3_2) (not (holding o3)))); (handempty) 
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
                 (when (holding o2)
                       (oneof 
                          (and (holding o2) (not  (obj_at o2 p2_2)))
                          (and (obj_at o2 p2_2) (not (holding o2)))); (handempty) 
                 )  
                 (when (holding o3)
                       (oneof 
                          (and (holding o3) (not  (obj_at o3 p2_2)))
                          (and (obj_at o3 p2_2) (not (holding o3)))); (handempty) 
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
                 (when (holding o2)
                       (oneof 
                          (and (holding o2) (not  (obj_at o2 p3_3)))
                          (and (obj_at o2 p3_3) (not (holding o2)))); (handempty) 
                 )  
                 (when (holding o3)
                       (oneof 
                          (and (holding o3) (not  (obj_at o3 p3_3)))
                          (and (obj_at o3 p3_3) (not (holding o3)))); (handempty) 
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
                 (when (holding o2)
                       (oneof 
                          (and (holding o2) (not  (obj_at o2 p2_3)))
                          (and (obj_at o2 p2_3) (not (holding o2)))); (handempty) 
                 )  
                 (when (holding o3)
                       (oneof 
                          (and (holding o3) (not  (obj_at o3 p2_3)))
                          (and (obj_at o3 p2_3) (not (holding o3)))); (handempty) 
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
                 (when (holding o2)
                       (oneof 
                          (and (holding o2) (not  (obj_at o2 p3_4)))
                          (and (obj_at o2 p3_4) (not (holding o2)))); (handempty) 
                 )  
                 (when (holding o3)
                       (oneof 
                          (and (holding o3) (not  (obj_at o3 p3_4)))
                          (and (obj_at o3 p3_4) (not (holding o3)))); (handempty) 
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
                 (when (holding o2)
                       (oneof 
                          (and (holding o2) (not  (obj_at o2 p2_4)))
                          (and (obj_at o2 p2_4) (not (holding o2)))); (handempty) 
                 )  
                 (when (holding o3)
                       (oneof 
                          (and (holding o3) (not  (obj_at o3 p2_4)))
                          (and (obj_at o3 p2_4) (not (holding o3)))); (handempty) 
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
                 (when (holding o2)
                       (oneof 
                          (and (holding o2) (not  (obj_at o2 p4_1)))
                          (and (obj_at o2 p4_1) (not (holding o2)))); (handempty) 
                 )  
                 (when (holding o3)
                       (oneof 
                          (and (holding o3) (not  (obj_at o3 p4_1)))
                          (and (obj_at o3 p4_1) (not (holding o3)))); (handempty) 
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
                 (when (holding o2)
                       (oneof 
                          (and (holding o2) (not  (obj_at o2 p3_1)))
                          (and (obj_at o2 p3_1) (not (holding o2)))); (handempty) 
                 )  
                 (when (holding o3)
                       (oneof 
                          (and (holding o3) (not  (obj_at o3 p3_1)))
                          (and (obj_at o3 p3_1) (not (holding o3)))); (handempty) 
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
                 (when (holding o2)
                       (oneof 
                          (and (holding o2) (not  (obj_at o2 p4_2)))
                          (and (obj_at o2 p4_2) (not (holding o2)))); (handempty) 
                 )  
                 (when (holding o3)
                       (oneof 
                          (and (holding o3) (not  (obj_at o3 p4_2)))
                          (and (obj_at o3 p4_2) (not (holding o3)))); (handempty) 
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
                 (when (holding o2)
                       (oneof 
                          (and (holding o2) (not  (obj_at o2 p3_2)))
                          (and (obj_at o2 p3_2) (not (holding o2)))); (handempty) 
                 )  
                 (when (holding o3)
                       (oneof 
                          (and (holding o3) (not  (obj_at o3 p3_2)))
                          (and (obj_at o3 p3_2) (not (holding o3)))); (handempty) 
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
                 (when (holding o2)
                       (oneof 
                          (and (holding o2) (not  (obj_at o2 p4_3)))
                          (and (obj_at o2 p4_3) (not (holding o2)))); (handempty) 
                 )  
                 (when (holding o3)
                       (oneof 
                          (and (holding o3) (not  (obj_at o3 p4_3)))
                          (and (obj_at o3 p4_3) (not (holding o3)))); (handempty) 
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
                 (when (holding o2)
                       (oneof 
                          (and (holding o2) (not  (obj_at o2 p3_3)))
                          (and (obj_at o2 p3_3) (not (holding o2)))); (handempty) 
                 )  
                 (when (holding o3)
                       (oneof 
                          (and (holding o3) (not  (obj_at o3 p3_3)))
                          (and (obj_at o3 p3_3) (not (holding o3)))); (handempty) 
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
                 (when (holding o2)
                       (oneof 
                          (and (holding o2) (not  (obj_at o2 p4_4)))
                          (and (obj_at o2 p4_4) (not (holding o2)))); (handempty) 
                 )  
                 (when (holding o3)
                       (oneof 
                          (and (holding o3) (not  (obj_at o3 p4_4)))
                          (and (obj_at o3 p4_4) (not (holding o3)))); (handempty) 
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
                 (when (holding o2)
                       (oneof 
                          (and (holding o2) (not  (obj_at o2 p3_4)))
                          (and (obj_at o2 p3_4) (not (holding o2)))); (handempty) 
                 )  
                 (when (holding o3)
                       (oneof 
                          (and (holding o3) (not  (obj_at o3 p3_4)))
                          (and (obj_at o3 p3_4) (not (holding o3)))); (handempty) 
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
                 (when (holding o2)
                       (oneof 
                          (and (holding o2) (not  (obj_at o2 p1_2)))
                          (and (obj_at o2 p1_2) (not (holding o2)))); (handempty) 
                 )  
                 (when (holding o3)
                       (oneof 
                          (and (holding o3) (not  (obj_at o3 p1_2)))
                          (and (obj_at o3 p1_2) (not (holding o3)))); (handempty) 
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
                 (when (holding o2)
                       (oneof 
                          (and (holding o2) (not  (obj_at o2 p1_1)))
                          (and (obj_at o2 p1_1) (not (holding o2)))); (handempty) 
                 )  
                 (when (holding o3)
                       (oneof 
                          (and (holding o3) (not  (obj_at o3 p1_1)))
                          (and (obj_at o3 p1_1) (not (holding o3)))); (handempty) 
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
                 (when (holding o2)
                       (oneof 
                          (and (holding o2) (not  (obj_at o2 p2_2)))
                          (and (obj_at o2 p2_2) (not (holding o2)))); (handempty) 
                 )  
                 (when (holding o3)
                       (oneof 
                          (and (holding o3) (not  (obj_at o3 p2_2)))
                          (and (obj_at o3 p2_2) (not (holding o3)))); (handempty) 
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
                 (when (holding o2)
                       (oneof 
                          (and (holding o2) (not  (obj_at o2 p2_1)))
                          (and (obj_at o2 p2_1) (not (holding o2)))); (handempty) 
                 )  
                 (when (holding o3)
                       (oneof 
                          (and (holding o3) (not  (obj_at o3 p2_1)))
                          (and (obj_at o3 p2_1) (not (holding o3)))); (handempty) 
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
                 (when (holding o2)
                       (oneof 
                          (and (holding o2) (not  (obj_at o2 p3_2)))
                          (and (obj_at o2 p3_2) (not (holding o2)))); (handempty) 
                 )  
                 (when (holding o3)
                       (oneof 
                          (and (holding o3) (not  (obj_at o3 p3_2)))
                          (and (obj_at o3 p3_2) (not (holding o3)))); (handempty) 
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
                 (when (holding o2)
                       (oneof 
                          (and (holding o2) (not  (obj_at o2 p3_1)))
                          (and (obj_at o2 p3_1) (not (holding o2)))); (handempty) 
                 )  
                 (when (holding o3)
                       (oneof 
                          (and (holding o3) (not  (obj_at o3 p3_1)))
                          (and (obj_at o3 p3_1) (not (holding o3)))); (handempty) 
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
                 (when (holding o2)
                       (oneof 
                          (and (holding o2) (not  (obj_at o2 p4_2)))
                          (and (obj_at o2 p4_2) (not (holding o2)))); (handempty) 
                 )  
                 (when (holding o3)
                       (oneof 
                          (and (holding o3) (not  (obj_at o3 p4_2)))
                          (and (obj_at o3 p4_2) (not (holding o3)))); (handempty) 
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
                 (when (holding o2)
                       (oneof 
                          (and (holding o2) (not  (obj_at o2 p4_1)))
                          (and (obj_at o2 p4_1) (not (holding o2)))); (handempty) 
                 )  
                 (when (holding o3)
                       (oneof 
                          (and (holding o3) (not  (obj_at o3 p4_1)))
                          (and (obj_at o3 p4_1) (not (holding o3)))); (handempty) 
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
                 (when (holding o2)
                       (oneof 
                          (and (holding o2) (not  (obj_at o2 p1_3)))
                          (and (obj_at o2 p1_3) (not (holding o2)))); (handempty) 
                 )  
                 (when (holding o3)
                       (oneof 
                          (and (holding o3) (not  (obj_at o3 p1_3)))
                          (and (obj_at o3 p1_3) (not (holding o3)))); (handempty) 
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
                 (when (holding o2)
                       (oneof 
                          (and (holding o2) (not  (obj_at o2 p1_2)))
                          (and (obj_at o2 p1_2) (not (holding o2)))); (handempty) 
                 )  
                 (when (holding o3)
                       (oneof 
                          (and (holding o3) (not  (obj_at o3 p1_2)))
                          (and (obj_at o3 p1_2) (not (holding o3)))); (handempty) 
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
                 (when (holding o2)
                       (oneof 
                          (and (holding o2) (not  (obj_at o2 p2_3)))
                          (and (obj_at o2 p2_3) (not (holding o2)))); (handempty) 
                 )  
                 (when (holding o3)
                       (oneof 
                          (and (holding o3) (not  (obj_at o3 p2_3)))
                          (and (obj_at o3 p2_3) (not (holding o3)))); (handempty) 
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
                 (when (holding o2)
                       (oneof 
                          (and (holding o2) (not  (obj_at o2 p2_2)))
                          (and (obj_at o2 p2_2) (not (holding o2)))); (handempty) 
                 )  
                 (when (holding o3)
                       (oneof 
                          (and (holding o3) (not  (obj_at o3 p2_2)))
                          (and (obj_at o3 p2_2) (not (holding o3)))); (handempty) 
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
                 (when (holding o2)
                       (oneof 
                          (and (holding o2) (not  (obj_at o2 p3_3)))
                          (and (obj_at o2 p3_3) (not (holding o2)))); (handempty) 
                 )  
                 (when (holding o3)
                       (oneof 
                          (and (holding o3) (not  (obj_at o3 p3_3)))
                          (and (obj_at o3 p3_3) (not (holding o3)))); (handempty) 
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
                 (when (holding o2)
                       (oneof 
                          (and (holding o2) (not  (obj_at o2 p3_2)))
                          (and (obj_at o2 p3_2) (not (holding o2)))); (handempty) 
                 )  
                 (when (holding o3)
                       (oneof 
                          (and (holding o3) (not  (obj_at o3 p3_2)))
                          (and (obj_at o3 p3_2) (not (holding o3)))); (handempty) 
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
                 (when (holding o2)
                       (oneof 
                          (and (holding o2) (not  (obj_at o2 p4_3)))
                          (and (obj_at o2 p4_3) (not (holding o2)))); (handempty) 
                 )  
                 (when (holding o3)
                       (oneof 
                          (and (holding o3) (not  (obj_at o3 p4_3)))
                          (and (obj_at o3 p4_3) (not (holding o3)))); (handempty) 
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
                 (when (holding o2)
                       (oneof 
                          (and (holding o2) (not  (obj_at o2 p4_2)))
                          (and (obj_at o2 p4_2) (not (holding o2)))); (handempty) 
                 )  
                 (when (holding o3)
                       (oneof 
                          (and (holding o3) (not  (obj_at o3 p4_2)))
                          (and (obj_at o3 p4_2) (not (holding o3)))); (handempty) 
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
                 (when (holding o2)
                       (oneof 
                          (and (holding o2) (not  (obj_at o2 p1_4)))
                          (and (obj_at o2 p1_4) (not (holding o2)))); (handempty) 
                 )  
                 (when (holding o3)
                       (oneof 
                          (and (holding o3) (not  (obj_at o3 p1_4)))
                          (and (obj_at o3 p1_4) (not (holding o3)))); (handempty) 
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
                 (when (holding o2)
                       (oneof 
                          (and (holding o2) (not  (obj_at o2 p1_3)))
                          (and (obj_at o2 p1_3) (not (holding o2)))); (handempty) 
                 )  
                 (when (holding o3)
                       (oneof 
                          (and (holding o3) (not  (obj_at o3 p1_3)))
                          (and (obj_at o3 p1_3) (not (holding o3)))); (handempty) 
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
                 (when (holding o2)
                       (oneof 
                          (and (holding o2) (not  (obj_at o2 p2_4)))
                          (and (obj_at o2 p2_4) (not (holding o2)))); (handempty) 
                 )  
                 (when (holding o3)
                       (oneof 
                          (and (holding o3) (not  (obj_at o3 p2_4)))
                          (and (obj_at o3 p2_4) (not (holding o3)))); (handempty) 
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
                 (when (holding o2)
                       (oneof 
                          (and (holding o2) (not  (obj_at o2 p2_3)))
                          (and (obj_at o2 p2_3) (not (holding o2)))); (handempty) 
                 )  
                 (when (holding o3)
                       (oneof 
                          (and (holding o3) (not  (obj_at o3 p2_3)))
                          (and (obj_at o3 p2_3) (not (holding o3)))); (handempty) 
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
                 (when (holding o2)
                       (oneof 
                          (and (holding o2) (not  (obj_at o2 p3_4)))
                          (and (obj_at o2 p3_4) (not (holding o2)))); (handempty) 
                 )  
                 (when (holding o3)
                       (oneof 
                          (and (holding o3) (not  (obj_at o3 p3_4)))
                          (and (obj_at o3 p3_4) (not (holding o3)))); (handempty) 
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
                 (when (holding o2)
                       (oneof 
                          (and (holding o2) (not  (obj_at o2 p3_3)))
                          (and (obj_at o2 p3_3) (not (holding o2)))); (handempty) 
                 )  
                 (when (holding o3)
                       (oneof 
                          (and (holding o3) (not  (obj_at o3 p3_3)))
                          (and (obj_at o3 p3_3) (not (holding o3)))); (handempty) 
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
                 (when (holding o2)
                       (oneof 
                          (and (holding o2) (not  (obj_at o2 p4_4)))
                          (and (obj_at o2 p4_4) (not (holding o2)))); (handempty) 
                 )  
                 (when (holding o3)
                       (oneof 
                          (and (holding o3) (not  (obj_at o3 p4_4)))
                          (and (obj_at o3 p4_4) (not (holding o3)))); (handempty) 
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
                 (when (holding o2)
                       (oneof 
                          (and (holding o2) (not  (obj_at o2 p4_3)))
                          (and (obj_at o2 p4_3) (not (holding o2)))); (handempty) 
                 )  
                 (when (holding o3)
                       (oneof 
                          (and (holding o3) (not  (obj_at o3 p4_3)))
                          (and (obj_at o3 p4_3) (not (holding o3)))); (handempty) 
                 )  
      ))  
) 
