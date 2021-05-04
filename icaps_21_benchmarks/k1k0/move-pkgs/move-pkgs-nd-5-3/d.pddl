
(define (domain move-pkgs-nd) 
   (:requirements :strips :typing)
   (:types pos obj)
   (:constants  o1 o2 o3 - obj  p1-1 p1-2 p1-3 p1-4 p1-5 p2-1 p2-2 p2-3 p2-4 p2-5 p3-1 p3-2 p3-3 p3-4 p3-5 p4-1 p4-2 p4-3 p4-4 p4-5 p5-1 p5-2 p5-3 p5-4 p5-5 - pos) 
   (:predicates (at ?i) (holding ?o) (obj-at ?o ?i)
                (handempty)) 
   (:action pickup
      :parameters (?o - obj ?i - pos )
      :precondition (and (at ?i) ); (handempty)
      :effect (when (obj-at ?o ?i) (and (holding ?o) (not (obj-at ?o ?i))))) ; (not (handempty)) 
   (:action putdown
      :parameters (?o - obj ?i - pos )
      :precondition (and (at ?i) (holding ?o))
      :effect (and (not (holding ?o)) (obj-at ?o ?i))) ;(handempty)

   (:action move-p1-1-p2-1
      :precondition (at p1-1)
      :effect (and (not (at p1-1)) (at p2-1)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj-at o1 p2-1)))
                          (and (obj-at o1 p2-1) (not (holding o1)))); (handempty) 
                 )  
                 (when (holding o2)
                       (oneof 
                          (and (holding o2) (not  (obj-at o2 p2-1)))
                          (and (obj-at o2 p2-1) (not (holding o2)))); (handempty) 
                 )  
                 (when (holding o3)
                       (oneof 
                          (and (holding o3) (not  (obj-at o3 p2-1)))
                          (and (obj-at o3 p2-1) (not (holding o3)))); (handempty) 
                 )  
      ))  
   (:action move-p2-1-p1-1
      :precondition (at p2-1)
      :effect (and (not (at p2-1)) (at p1-1)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj-at o1 p1-1)))
                          (and (obj-at o1 p1-1) (not (holding o1)))); (handempty) 
                 )  
                 (when (holding o2)
                       (oneof 
                          (and (holding o2) (not  (obj-at o2 p1-1)))
                          (and (obj-at o2 p1-1) (not (holding o2)))); (handempty) 
                 )  
                 (when (holding o3)
                       (oneof 
                          (and (holding o3) (not  (obj-at o3 p1-1)))
                          (and (obj-at o3 p1-1) (not (holding o3)))); (handempty) 
                 )  
      ))  
   (:action move-p1-2-p2-2
      :precondition (at p1-2)
      :effect (and (not (at p1-2)) (at p2-2)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj-at o1 p2-2)))
                          (and (obj-at o1 p2-2) (not (holding o1)))); (handempty) 
                 )  
                 (when (holding o2)
                       (oneof 
                          (and (holding o2) (not  (obj-at o2 p2-2)))
                          (and (obj-at o2 p2-2) (not (holding o2)))); (handempty) 
                 )  
                 (when (holding o3)
                       (oneof 
                          (and (holding o3) (not  (obj-at o3 p2-2)))
                          (and (obj-at o3 p2-2) (not (holding o3)))); (handempty) 
                 )  
      ))  
   (:action move-p2-2-p1-2
      :precondition (at p2-2)
      :effect (and (not (at p2-2)) (at p1-2)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj-at o1 p1-2)))
                          (and (obj-at o1 p1-2) (not (holding o1)))); (handempty) 
                 )  
                 (when (holding o2)
                       (oneof 
                          (and (holding o2) (not  (obj-at o2 p1-2)))
                          (and (obj-at o2 p1-2) (not (holding o2)))); (handempty) 
                 )  
                 (when (holding o3)
                       (oneof 
                          (and (holding o3) (not  (obj-at o3 p1-2)))
                          (and (obj-at o3 p1-2) (not (holding o3)))); (handempty) 
                 )  
      ))  
   (:action move-p1-3-p2-3
      :precondition (at p1-3)
      :effect (and (not (at p1-3)) (at p2-3)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj-at o1 p2-3)))
                          (and (obj-at o1 p2-3) (not (holding o1)))); (handempty) 
                 )  
                 (when (holding o2)
                       (oneof 
                          (and (holding o2) (not  (obj-at o2 p2-3)))
                          (and (obj-at o2 p2-3) (not (holding o2)))); (handempty) 
                 )  
                 (when (holding o3)
                       (oneof 
                          (and (holding o3) (not  (obj-at o3 p2-3)))
                          (and (obj-at o3 p2-3) (not (holding o3)))); (handempty) 
                 )  
      ))  
   (:action move-p2-3-p1-3
      :precondition (at p2-3)
      :effect (and (not (at p2-3)) (at p1-3)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj-at o1 p1-3)))
                          (and (obj-at o1 p1-3) (not (holding o1)))); (handempty) 
                 )  
                 (when (holding o2)
                       (oneof 
                          (and (holding o2) (not  (obj-at o2 p1-3)))
                          (and (obj-at o2 p1-3) (not (holding o2)))); (handempty) 
                 )  
                 (when (holding o3)
                       (oneof 
                          (and (holding o3) (not  (obj-at o3 p1-3)))
                          (and (obj-at o3 p1-3) (not (holding o3)))); (handempty) 
                 )  
      ))  
   (:action move-p1-4-p2-4
      :precondition (at p1-4)
      :effect (and (not (at p1-4)) (at p2-4)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj-at o1 p2-4)))
                          (and (obj-at o1 p2-4) (not (holding o1)))); (handempty) 
                 )  
                 (when (holding o2)
                       (oneof 
                          (and (holding o2) (not  (obj-at o2 p2-4)))
                          (and (obj-at o2 p2-4) (not (holding o2)))); (handempty) 
                 )  
                 (when (holding o3)
                       (oneof 
                          (and (holding o3) (not  (obj-at o3 p2-4)))
                          (and (obj-at o3 p2-4) (not (holding o3)))); (handempty) 
                 )  
      ))  
   (:action move-p2-4-p1-4
      :precondition (at p2-4)
      :effect (and (not (at p2-4)) (at p1-4)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj-at o1 p1-4)))
                          (and (obj-at o1 p1-4) (not (holding o1)))); (handempty) 
                 )  
                 (when (holding o2)
                       (oneof 
                          (and (holding o2) (not  (obj-at o2 p1-4)))
                          (and (obj-at o2 p1-4) (not (holding o2)))); (handempty) 
                 )  
                 (when (holding o3)
                       (oneof 
                          (and (holding o3) (not  (obj-at o3 p1-4)))
                          (and (obj-at o3 p1-4) (not (holding o3)))); (handempty) 
                 )  
      ))  
   (:action move-p1-5-p2-5
      :precondition (at p1-5)
      :effect (and (not (at p1-5)) (at p2-5)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj-at o1 p2-5)))
                          (and (obj-at o1 p2-5) (not (holding o1)))); (handempty) 
                 )  
                 (when (holding o2)
                       (oneof 
                          (and (holding o2) (not  (obj-at o2 p2-5)))
                          (and (obj-at o2 p2-5) (not (holding o2)))); (handempty) 
                 )  
                 (when (holding o3)
                       (oneof 
                          (and (holding o3) (not  (obj-at o3 p2-5)))
                          (and (obj-at o3 p2-5) (not (holding o3)))); (handempty) 
                 )  
      ))  
   (:action move-p2-5-p1-5
      :precondition (at p2-5)
      :effect (and (not (at p2-5)) (at p1-5)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj-at o1 p1-5)))
                          (and (obj-at o1 p1-5) (not (holding o1)))); (handempty) 
                 )  
                 (when (holding o2)
                       (oneof 
                          (and (holding o2) (not  (obj-at o2 p1-5)))
                          (and (obj-at o2 p1-5) (not (holding o2)))); (handempty) 
                 )  
                 (when (holding o3)
                       (oneof 
                          (and (holding o3) (not  (obj-at o3 p1-5)))
                          (and (obj-at o3 p1-5) (not (holding o3)))); (handempty) 
                 )  
      ))  
   (:action move-p2-1-p3-1
      :precondition (at p2-1)
      :effect (and (not (at p2-1)) (at p3-1)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj-at o1 p3-1)))
                          (and (obj-at o1 p3-1) (not (holding o1)))); (handempty) 
                 )  
                 (when (holding o2)
                       (oneof 
                          (and (holding o2) (not  (obj-at o2 p3-1)))
                          (and (obj-at o2 p3-1) (not (holding o2)))); (handempty) 
                 )  
                 (when (holding o3)
                       (oneof 
                          (and (holding o3) (not  (obj-at o3 p3-1)))
                          (and (obj-at o3 p3-1) (not (holding o3)))); (handempty) 
                 )  
      ))  
   (:action move-p3-1-p2-1
      :precondition (at p3-1)
      :effect (and (not (at p3-1)) (at p2-1)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj-at o1 p2-1)))
                          (and (obj-at o1 p2-1) (not (holding o1)))); (handempty) 
                 )  
                 (when (holding o2)
                       (oneof 
                          (and (holding o2) (not  (obj-at o2 p2-1)))
                          (and (obj-at o2 p2-1) (not (holding o2)))); (handempty) 
                 )  
                 (when (holding o3)
                       (oneof 
                          (and (holding o3) (not  (obj-at o3 p2-1)))
                          (and (obj-at o3 p2-1) (not (holding o3)))); (handempty) 
                 )  
      ))  
   (:action move-p2-2-p3-2
      :precondition (at p2-2)
      :effect (and (not (at p2-2)) (at p3-2)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj-at o1 p3-2)))
                          (and (obj-at o1 p3-2) (not (holding o1)))); (handempty) 
                 )  
                 (when (holding o2)
                       (oneof 
                          (and (holding o2) (not  (obj-at o2 p3-2)))
                          (and (obj-at o2 p3-2) (not (holding o2)))); (handempty) 
                 )  
                 (when (holding o3)
                       (oneof 
                          (and (holding o3) (not  (obj-at o3 p3-2)))
                          (and (obj-at o3 p3-2) (not (holding o3)))); (handempty) 
                 )  
      ))  
   (:action move-p3-2-p2-2
      :precondition (at p3-2)
      :effect (and (not (at p3-2)) (at p2-2)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj-at o1 p2-2)))
                          (and (obj-at o1 p2-2) (not (holding o1)))); (handempty) 
                 )  
                 (when (holding o2)
                       (oneof 
                          (and (holding o2) (not  (obj-at o2 p2-2)))
                          (and (obj-at o2 p2-2) (not (holding o2)))); (handempty) 
                 )  
                 (when (holding o3)
                       (oneof 
                          (and (holding o3) (not  (obj-at o3 p2-2)))
                          (and (obj-at o3 p2-2) (not (holding o3)))); (handempty) 
                 )  
      ))  
   (:action move-p2-3-p3-3
      :precondition (at p2-3)
      :effect (and (not (at p2-3)) (at p3-3)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj-at o1 p3-3)))
                          (and (obj-at o1 p3-3) (not (holding o1)))); (handempty) 
                 )  
                 (when (holding o2)
                       (oneof 
                          (and (holding o2) (not  (obj-at o2 p3-3)))
                          (and (obj-at o2 p3-3) (not (holding o2)))); (handempty) 
                 )  
                 (when (holding o3)
                       (oneof 
                          (and (holding o3) (not  (obj-at o3 p3-3)))
                          (and (obj-at o3 p3-3) (not (holding o3)))); (handempty) 
                 )  
      ))  
   (:action move-p3-3-p2-3
      :precondition (at p3-3)
      :effect (and (not (at p3-3)) (at p2-3)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj-at o1 p2-3)))
                          (and (obj-at o1 p2-3) (not (holding o1)))); (handempty) 
                 )  
                 (when (holding o2)
                       (oneof 
                          (and (holding o2) (not  (obj-at o2 p2-3)))
                          (and (obj-at o2 p2-3) (not (holding o2)))); (handempty) 
                 )  
                 (when (holding o3)
                       (oneof 
                          (and (holding o3) (not  (obj-at o3 p2-3)))
                          (and (obj-at o3 p2-3) (not (holding o3)))); (handempty) 
                 )  
      ))  
   (:action move-p2-4-p3-4
      :precondition (at p2-4)
      :effect (and (not (at p2-4)) (at p3-4)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj-at o1 p3-4)))
                          (and (obj-at o1 p3-4) (not (holding o1)))); (handempty) 
                 )  
                 (when (holding o2)
                       (oneof 
                          (and (holding o2) (not  (obj-at o2 p3-4)))
                          (and (obj-at o2 p3-4) (not (holding o2)))); (handempty) 
                 )  
                 (when (holding o3)
                       (oneof 
                          (and (holding o3) (not  (obj-at o3 p3-4)))
                          (and (obj-at o3 p3-4) (not (holding o3)))); (handempty) 
                 )  
      ))  
   (:action move-p3-4-p2-4
      :precondition (at p3-4)
      :effect (and (not (at p3-4)) (at p2-4)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj-at o1 p2-4)))
                          (and (obj-at o1 p2-4) (not (holding o1)))); (handempty) 
                 )  
                 (when (holding o2)
                       (oneof 
                          (and (holding o2) (not  (obj-at o2 p2-4)))
                          (and (obj-at o2 p2-4) (not (holding o2)))); (handempty) 
                 )  
                 (when (holding o3)
                       (oneof 
                          (and (holding o3) (not  (obj-at o3 p2-4)))
                          (and (obj-at o3 p2-4) (not (holding o3)))); (handempty) 
                 )  
      ))  
   (:action move-p2-5-p3-5
      :precondition (at p2-5)
      :effect (and (not (at p2-5)) (at p3-5)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj-at o1 p3-5)))
                          (and (obj-at o1 p3-5) (not (holding o1)))); (handempty) 
                 )  
                 (when (holding o2)
                       (oneof 
                          (and (holding o2) (not  (obj-at o2 p3-5)))
                          (and (obj-at o2 p3-5) (not (holding o2)))); (handempty) 
                 )  
                 (when (holding o3)
                       (oneof 
                          (and (holding o3) (not  (obj-at o3 p3-5)))
                          (and (obj-at o3 p3-5) (not (holding o3)))); (handempty) 
                 )  
      ))  
   (:action move-p3-5-p2-5
      :precondition (at p3-5)
      :effect (and (not (at p3-5)) (at p2-5)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj-at o1 p2-5)))
                          (and (obj-at o1 p2-5) (not (holding o1)))); (handempty) 
                 )  
                 (when (holding o2)
                       (oneof 
                          (and (holding o2) (not  (obj-at o2 p2-5)))
                          (and (obj-at o2 p2-5) (not (holding o2)))); (handempty) 
                 )  
                 (when (holding o3)
                       (oneof 
                          (and (holding o3) (not  (obj-at o3 p2-5)))
                          (and (obj-at o3 p2-5) (not (holding o3)))); (handempty) 
                 )  
      ))  
   (:action move-p3-1-p4-1
      :precondition (at p3-1)
      :effect (and (not (at p3-1)) (at p4-1)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj-at o1 p4-1)))
                          (and (obj-at o1 p4-1) (not (holding o1)))); (handempty) 
                 )  
                 (when (holding o2)
                       (oneof 
                          (and (holding o2) (not  (obj-at o2 p4-1)))
                          (and (obj-at o2 p4-1) (not (holding o2)))); (handempty) 
                 )  
                 (when (holding o3)
                       (oneof 
                          (and (holding o3) (not  (obj-at o3 p4-1)))
                          (and (obj-at o3 p4-1) (not (holding o3)))); (handempty) 
                 )  
      ))  
   (:action move-p4-1-p3-1
      :precondition (at p4-1)
      :effect (and (not (at p4-1)) (at p3-1)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj-at o1 p3-1)))
                          (and (obj-at o1 p3-1) (not (holding o1)))); (handempty) 
                 )  
                 (when (holding o2)
                       (oneof 
                          (and (holding o2) (not  (obj-at o2 p3-1)))
                          (and (obj-at o2 p3-1) (not (holding o2)))); (handempty) 
                 )  
                 (when (holding o3)
                       (oneof 
                          (and (holding o3) (not  (obj-at o3 p3-1)))
                          (and (obj-at o3 p3-1) (not (holding o3)))); (handempty) 
                 )  
      ))  
   (:action move-p3-2-p4-2
      :precondition (at p3-2)
      :effect (and (not (at p3-2)) (at p4-2)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj-at o1 p4-2)))
                          (and (obj-at o1 p4-2) (not (holding o1)))); (handempty) 
                 )  
                 (when (holding o2)
                       (oneof 
                          (and (holding o2) (not  (obj-at o2 p4-2)))
                          (and (obj-at o2 p4-2) (not (holding o2)))); (handempty) 
                 )  
                 (when (holding o3)
                       (oneof 
                          (and (holding o3) (not  (obj-at o3 p4-2)))
                          (and (obj-at o3 p4-2) (not (holding o3)))); (handempty) 
                 )  
      ))  
   (:action move-p4-2-p3-2
      :precondition (at p4-2)
      :effect (and (not (at p4-2)) (at p3-2)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj-at o1 p3-2)))
                          (and (obj-at o1 p3-2) (not (holding o1)))); (handempty) 
                 )  
                 (when (holding o2)
                       (oneof 
                          (and (holding o2) (not  (obj-at o2 p3-2)))
                          (and (obj-at o2 p3-2) (not (holding o2)))); (handempty) 
                 )  
                 (when (holding o3)
                       (oneof 
                          (and (holding o3) (not  (obj-at o3 p3-2)))
                          (and (obj-at o3 p3-2) (not (holding o3)))); (handempty) 
                 )  
      ))  
   (:action move-p3-3-p4-3
      :precondition (at p3-3)
      :effect (and (not (at p3-3)) (at p4-3)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj-at o1 p4-3)))
                          (and (obj-at o1 p4-3) (not (holding o1)))); (handempty) 
                 )  
                 (when (holding o2)
                       (oneof 
                          (and (holding o2) (not  (obj-at o2 p4-3)))
                          (and (obj-at o2 p4-3) (not (holding o2)))); (handempty) 
                 )  
                 (when (holding o3)
                       (oneof 
                          (and (holding o3) (not  (obj-at o3 p4-3)))
                          (and (obj-at o3 p4-3) (not (holding o3)))); (handempty) 
                 )  
      ))  
   (:action move-p4-3-p3-3
      :precondition (at p4-3)
      :effect (and (not (at p4-3)) (at p3-3)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj-at o1 p3-3)))
                          (and (obj-at o1 p3-3) (not (holding o1)))); (handempty) 
                 )  
                 (when (holding o2)
                       (oneof 
                          (and (holding o2) (not  (obj-at o2 p3-3)))
                          (and (obj-at o2 p3-3) (not (holding o2)))); (handempty) 
                 )  
                 (when (holding o3)
                       (oneof 
                          (and (holding o3) (not  (obj-at o3 p3-3)))
                          (and (obj-at o3 p3-3) (not (holding o3)))); (handempty) 
                 )  
      ))  
   (:action move-p3-4-p4-4
      :precondition (at p3-4)
      :effect (and (not (at p3-4)) (at p4-4)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj-at o1 p4-4)))
                          (and (obj-at o1 p4-4) (not (holding o1)))); (handempty) 
                 )  
                 (when (holding o2)
                       (oneof 
                          (and (holding o2) (not  (obj-at o2 p4-4)))
                          (and (obj-at o2 p4-4) (not (holding o2)))); (handempty) 
                 )  
                 (when (holding o3)
                       (oneof 
                          (and (holding o3) (not  (obj-at o3 p4-4)))
                          (and (obj-at o3 p4-4) (not (holding o3)))); (handempty) 
                 )  
      ))  
   (:action move-p4-4-p3-4
      :precondition (at p4-4)
      :effect (and (not (at p4-4)) (at p3-4)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj-at o1 p3-4)))
                          (and (obj-at o1 p3-4) (not (holding o1)))); (handempty) 
                 )  
                 (when (holding o2)
                       (oneof 
                          (and (holding o2) (not  (obj-at o2 p3-4)))
                          (and (obj-at o2 p3-4) (not (holding o2)))); (handempty) 
                 )  
                 (when (holding o3)
                       (oneof 
                          (and (holding o3) (not  (obj-at o3 p3-4)))
                          (and (obj-at o3 p3-4) (not (holding o3)))); (handempty) 
                 )  
      ))  
   (:action move-p3-5-p4-5
      :precondition (at p3-5)
      :effect (and (not (at p3-5)) (at p4-5)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj-at o1 p4-5)))
                          (and (obj-at o1 p4-5) (not (holding o1)))); (handempty) 
                 )  
                 (when (holding o2)
                       (oneof 
                          (and (holding o2) (not  (obj-at o2 p4-5)))
                          (and (obj-at o2 p4-5) (not (holding o2)))); (handempty) 
                 )  
                 (when (holding o3)
                       (oneof 
                          (and (holding o3) (not  (obj-at o3 p4-5)))
                          (and (obj-at o3 p4-5) (not (holding o3)))); (handempty) 
                 )  
      ))  
   (:action move-p4-5-p3-5
      :precondition (at p4-5)
      :effect (and (not (at p4-5)) (at p3-5)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj-at o1 p3-5)))
                          (and (obj-at o1 p3-5) (not (holding o1)))); (handempty) 
                 )  
                 (when (holding o2)
                       (oneof 
                          (and (holding o2) (not  (obj-at o2 p3-5)))
                          (and (obj-at o2 p3-5) (not (holding o2)))); (handempty) 
                 )  
                 (when (holding o3)
                       (oneof 
                          (and (holding o3) (not  (obj-at o3 p3-5)))
                          (and (obj-at o3 p3-5) (not (holding o3)))); (handempty) 
                 )  
      ))  
   (:action move-p4-1-p5-1
      :precondition (at p4-1)
      :effect (and (not (at p4-1)) (at p5-1)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj-at o1 p5-1)))
                          (and (obj-at o1 p5-1) (not (holding o1)))); (handempty) 
                 )  
                 (when (holding o2)
                       (oneof 
                          (and (holding o2) (not  (obj-at o2 p5-1)))
                          (and (obj-at o2 p5-1) (not (holding o2)))); (handempty) 
                 )  
                 (when (holding o3)
                       (oneof 
                          (and (holding o3) (not  (obj-at o3 p5-1)))
                          (and (obj-at o3 p5-1) (not (holding o3)))); (handempty) 
                 )  
      ))  
   (:action move-p5-1-p4-1
      :precondition (at p5-1)
      :effect (and (not (at p5-1)) (at p4-1)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj-at o1 p4-1)))
                          (and (obj-at o1 p4-1) (not (holding o1)))); (handempty) 
                 )  
                 (when (holding o2)
                       (oneof 
                          (and (holding o2) (not  (obj-at o2 p4-1)))
                          (and (obj-at o2 p4-1) (not (holding o2)))); (handempty) 
                 )  
                 (when (holding o3)
                       (oneof 
                          (and (holding o3) (not  (obj-at o3 p4-1)))
                          (and (obj-at o3 p4-1) (not (holding o3)))); (handempty) 
                 )  
      ))  
   (:action move-p4-2-p5-2
      :precondition (at p4-2)
      :effect (and (not (at p4-2)) (at p5-2)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj-at o1 p5-2)))
                          (and (obj-at o1 p5-2) (not (holding o1)))); (handempty) 
                 )  
                 (when (holding o2)
                       (oneof 
                          (and (holding o2) (not  (obj-at o2 p5-2)))
                          (and (obj-at o2 p5-2) (not (holding o2)))); (handempty) 
                 )  
                 (when (holding o3)
                       (oneof 
                          (and (holding o3) (not  (obj-at o3 p5-2)))
                          (and (obj-at o3 p5-2) (not (holding o3)))); (handempty) 
                 )  
      ))  
   (:action move-p5-2-p4-2
      :precondition (at p5-2)
      :effect (and (not (at p5-2)) (at p4-2)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj-at o1 p4-2)))
                          (and (obj-at o1 p4-2) (not (holding o1)))); (handempty) 
                 )  
                 (when (holding o2)
                       (oneof 
                          (and (holding o2) (not  (obj-at o2 p4-2)))
                          (and (obj-at o2 p4-2) (not (holding o2)))); (handempty) 
                 )  
                 (when (holding o3)
                       (oneof 
                          (and (holding o3) (not  (obj-at o3 p4-2)))
                          (and (obj-at o3 p4-2) (not (holding o3)))); (handempty) 
                 )  
      ))  
   (:action move-p4-3-p5-3
      :precondition (at p4-3)
      :effect (and (not (at p4-3)) (at p5-3)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj-at o1 p5-3)))
                          (and (obj-at o1 p5-3) (not (holding o1)))); (handempty) 
                 )  
                 (when (holding o2)
                       (oneof 
                          (and (holding o2) (not  (obj-at o2 p5-3)))
                          (and (obj-at o2 p5-3) (not (holding o2)))); (handempty) 
                 )  
                 (when (holding o3)
                       (oneof 
                          (and (holding o3) (not  (obj-at o3 p5-3)))
                          (and (obj-at o3 p5-3) (not (holding o3)))); (handempty) 
                 )  
      ))  
   (:action move-p5-3-p4-3
      :precondition (at p5-3)
      :effect (and (not (at p5-3)) (at p4-3)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj-at o1 p4-3)))
                          (and (obj-at o1 p4-3) (not (holding o1)))); (handempty) 
                 )  
                 (when (holding o2)
                       (oneof 
                          (and (holding o2) (not  (obj-at o2 p4-3)))
                          (and (obj-at o2 p4-3) (not (holding o2)))); (handempty) 
                 )  
                 (when (holding o3)
                       (oneof 
                          (and (holding o3) (not  (obj-at o3 p4-3)))
                          (and (obj-at o3 p4-3) (not (holding o3)))); (handempty) 
                 )  
      ))  
   (:action move-p4-4-p5-4
      :precondition (at p4-4)
      :effect (and (not (at p4-4)) (at p5-4)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj-at o1 p5-4)))
                          (and (obj-at o1 p5-4) (not (holding o1)))); (handempty) 
                 )  
                 (when (holding o2)
                       (oneof 
                          (and (holding o2) (not  (obj-at o2 p5-4)))
                          (and (obj-at o2 p5-4) (not (holding o2)))); (handempty) 
                 )  
                 (when (holding o3)
                       (oneof 
                          (and (holding o3) (not  (obj-at o3 p5-4)))
                          (and (obj-at o3 p5-4) (not (holding o3)))); (handempty) 
                 )  
      ))  
   (:action move-p5-4-p4-4
      :precondition (at p5-4)
      :effect (and (not (at p5-4)) (at p4-4)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj-at o1 p4-4)))
                          (and (obj-at o1 p4-4) (not (holding o1)))); (handempty) 
                 )  
                 (when (holding o2)
                       (oneof 
                          (and (holding o2) (not  (obj-at o2 p4-4)))
                          (and (obj-at o2 p4-4) (not (holding o2)))); (handempty) 
                 )  
                 (when (holding o3)
                       (oneof 
                          (and (holding o3) (not  (obj-at o3 p4-4)))
                          (and (obj-at o3 p4-4) (not (holding o3)))); (handempty) 
                 )  
      ))  
   (:action move-p4-5-p5-5
      :precondition (at p4-5)
      :effect (and (not (at p4-5)) (at p5-5)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj-at o1 p5-5)))
                          (and (obj-at o1 p5-5) (not (holding o1)))); (handempty) 
                 )  
                 (when (holding o2)
                       (oneof 
                          (and (holding o2) (not  (obj-at o2 p5-5)))
                          (and (obj-at o2 p5-5) (not (holding o2)))); (handempty) 
                 )  
                 (when (holding o3)
                       (oneof 
                          (and (holding o3) (not  (obj-at o3 p5-5)))
                          (and (obj-at o3 p5-5) (not (holding o3)))); (handempty) 
                 )  
      ))  
   (:action move-p5-5-p4-5
      :precondition (at p5-5)
      :effect (and (not (at p5-5)) (at p4-5)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj-at o1 p4-5)))
                          (and (obj-at o1 p4-5) (not (holding o1)))); (handempty) 
                 )  
                 (when (holding o2)
                       (oneof 
                          (and (holding o2) (not  (obj-at o2 p4-5)))
                          (and (obj-at o2 p4-5) (not (holding o2)))); (handempty) 
                 )  
                 (when (holding o3)
                       (oneof 
                          (and (holding o3) (not  (obj-at o3 p4-5)))
                          (and (obj-at o3 p4-5) (not (holding o3)))); (handempty) 
                 )  
      ))  
   (:action move-p1-1-p1-2
      :precondition (at p1-1)
      :effect (and (not (at p1-1)) (at p1-2)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj-at o1 p1-2)))
                          (and (obj-at o1 p1-2) (not (holding o1)))); (handempty) 
                 )  
                 (when (holding o2)
                       (oneof 
                          (and (holding o2) (not  (obj-at o2 p1-2)))
                          (and (obj-at o2 p1-2) (not (holding o2)))); (handempty) 
                 )  
                 (when (holding o3)
                       (oneof 
                          (and (holding o3) (not  (obj-at o3 p1-2)))
                          (and (obj-at o3 p1-2) (not (holding o3)))); (handempty) 
                 )  
      ))  
   (:action move-p1-2-p1-1
      :precondition (at p1-2)
      :effect (and (not (at p1-2)) (at p1-1)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj-at o1 p1-1)))
                          (and (obj-at o1 p1-1) (not (holding o1)))); (handempty) 
                 )  
                 (when (holding o2)
                       (oneof 
                          (and (holding o2) (not  (obj-at o2 p1-1)))
                          (and (obj-at o2 p1-1) (not (holding o2)))); (handempty) 
                 )  
                 (when (holding o3)
                       (oneof 
                          (and (holding o3) (not  (obj-at o3 p1-1)))
                          (and (obj-at o3 p1-1) (not (holding o3)))); (handempty) 
                 )  
      ))  
   (:action move-p2-1-p2-2
      :precondition (at p2-1)
      :effect (and (not (at p2-1)) (at p2-2)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj-at o1 p2-2)))
                          (and (obj-at o1 p2-2) (not (holding o1)))); (handempty) 
                 )  
                 (when (holding o2)
                       (oneof 
                          (and (holding o2) (not  (obj-at o2 p2-2)))
                          (and (obj-at o2 p2-2) (not (holding o2)))); (handempty) 
                 )  
                 (when (holding o3)
                       (oneof 
                          (and (holding o3) (not  (obj-at o3 p2-2)))
                          (and (obj-at o3 p2-2) (not (holding o3)))); (handempty) 
                 )  
      ))  
   (:action move-p2-2-p2-1
      :precondition (at p2-2)
      :effect (and (not (at p2-2)) (at p2-1)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj-at o1 p2-1)))
                          (and (obj-at o1 p2-1) (not (holding o1)))); (handempty) 
                 )  
                 (when (holding o2)
                       (oneof 
                          (and (holding o2) (not  (obj-at o2 p2-1)))
                          (and (obj-at o2 p2-1) (not (holding o2)))); (handempty) 
                 )  
                 (when (holding o3)
                       (oneof 
                          (and (holding o3) (not  (obj-at o3 p2-1)))
                          (and (obj-at o3 p2-1) (not (holding o3)))); (handempty) 
                 )  
      ))  
   (:action move-p3-1-p3-2
      :precondition (at p3-1)
      :effect (and (not (at p3-1)) (at p3-2)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj-at o1 p3-2)))
                          (and (obj-at o1 p3-2) (not (holding o1)))); (handempty) 
                 )  
                 (when (holding o2)
                       (oneof 
                          (and (holding o2) (not  (obj-at o2 p3-2)))
                          (and (obj-at o2 p3-2) (not (holding o2)))); (handempty) 
                 )  
                 (when (holding o3)
                       (oneof 
                          (and (holding o3) (not  (obj-at o3 p3-2)))
                          (and (obj-at o3 p3-2) (not (holding o3)))); (handempty) 
                 )  
      ))  
   (:action move-p3-2-p3-1
      :precondition (at p3-2)
      :effect (and (not (at p3-2)) (at p3-1)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj-at o1 p3-1)))
                          (and (obj-at o1 p3-1) (not (holding o1)))); (handempty) 
                 )  
                 (when (holding o2)
                       (oneof 
                          (and (holding o2) (not  (obj-at o2 p3-1)))
                          (and (obj-at o2 p3-1) (not (holding o2)))); (handempty) 
                 )  
                 (when (holding o3)
                       (oneof 
                          (and (holding o3) (not  (obj-at o3 p3-1)))
                          (and (obj-at o3 p3-1) (not (holding o3)))); (handempty) 
                 )  
      ))  
   (:action move-p4-1-p4-2
      :precondition (at p4-1)
      :effect (and (not (at p4-1)) (at p4-2)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj-at o1 p4-2)))
                          (and (obj-at o1 p4-2) (not (holding o1)))); (handempty) 
                 )  
                 (when (holding o2)
                       (oneof 
                          (and (holding o2) (not  (obj-at o2 p4-2)))
                          (and (obj-at o2 p4-2) (not (holding o2)))); (handempty) 
                 )  
                 (when (holding o3)
                       (oneof 
                          (and (holding o3) (not  (obj-at o3 p4-2)))
                          (and (obj-at o3 p4-2) (not (holding o3)))); (handempty) 
                 )  
      ))  
   (:action move-p4-2-p4-1
      :precondition (at p4-2)
      :effect (and (not (at p4-2)) (at p4-1)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj-at o1 p4-1)))
                          (and (obj-at o1 p4-1) (not (holding o1)))); (handempty) 
                 )  
                 (when (holding o2)
                       (oneof 
                          (and (holding o2) (not  (obj-at o2 p4-1)))
                          (and (obj-at o2 p4-1) (not (holding o2)))); (handempty) 
                 )  
                 (when (holding o3)
                       (oneof 
                          (and (holding o3) (not  (obj-at o3 p4-1)))
                          (and (obj-at o3 p4-1) (not (holding o3)))); (handempty) 
                 )  
      ))  
   (:action move-p5-1-p5-2
      :precondition (at p5-1)
      :effect (and (not (at p5-1)) (at p5-2)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj-at o1 p5-2)))
                          (and (obj-at o1 p5-2) (not (holding o1)))); (handempty) 
                 )  
                 (when (holding o2)
                       (oneof 
                          (and (holding o2) (not  (obj-at o2 p5-2)))
                          (and (obj-at o2 p5-2) (not (holding o2)))); (handempty) 
                 )  
                 (when (holding o3)
                       (oneof 
                          (and (holding o3) (not  (obj-at o3 p5-2)))
                          (and (obj-at o3 p5-2) (not (holding o3)))); (handempty) 
                 )  
      ))  
   (:action move-p5-2-p5-1
      :precondition (at p5-2)
      :effect (and (not (at p5-2)) (at p5-1)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj-at o1 p5-1)))
                          (and (obj-at o1 p5-1) (not (holding o1)))); (handempty) 
                 )  
                 (when (holding o2)
                       (oneof 
                          (and (holding o2) (not  (obj-at o2 p5-1)))
                          (and (obj-at o2 p5-1) (not (holding o2)))); (handempty) 
                 )  
                 (when (holding o3)
                       (oneof 
                          (and (holding o3) (not  (obj-at o3 p5-1)))
                          (and (obj-at o3 p5-1) (not (holding o3)))); (handempty) 
                 )  
      ))  
   (:action move-p1-2-p1-3
      :precondition (at p1-2)
      :effect (and (not (at p1-2)) (at p1-3)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj-at o1 p1-3)))
                          (and (obj-at o1 p1-3) (not (holding o1)))); (handempty) 
                 )  
                 (when (holding o2)
                       (oneof 
                          (and (holding o2) (not  (obj-at o2 p1-3)))
                          (and (obj-at o2 p1-3) (not (holding o2)))); (handempty) 
                 )  
                 (when (holding o3)
                       (oneof 
                          (and (holding o3) (not  (obj-at o3 p1-3)))
                          (and (obj-at o3 p1-3) (not (holding o3)))); (handempty) 
                 )  
      ))  
   (:action move-p1-3-p1-2
      :precondition (at p1-3)
      :effect (and (not (at p1-3)) (at p1-2)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj-at o1 p1-2)))
                          (and (obj-at o1 p1-2) (not (holding o1)))); (handempty) 
                 )  
                 (when (holding o2)
                       (oneof 
                          (and (holding o2) (not  (obj-at o2 p1-2)))
                          (and (obj-at o2 p1-2) (not (holding o2)))); (handempty) 
                 )  
                 (when (holding o3)
                       (oneof 
                          (and (holding o3) (not  (obj-at o3 p1-2)))
                          (and (obj-at o3 p1-2) (not (holding o3)))); (handempty) 
                 )  
      ))  
   (:action move-p2-2-p2-3
      :precondition (at p2-2)
      :effect (and (not (at p2-2)) (at p2-3)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj-at o1 p2-3)))
                          (and (obj-at o1 p2-3) (not (holding o1)))); (handempty) 
                 )  
                 (when (holding o2)
                       (oneof 
                          (and (holding o2) (not  (obj-at o2 p2-3)))
                          (and (obj-at o2 p2-3) (not (holding o2)))); (handempty) 
                 )  
                 (when (holding o3)
                       (oneof 
                          (and (holding o3) (not  (obj-at o3 p2-3)))
                          (and (obj-at o3 p2-3) (not (holding o3)))); (handempty) 
                 )  
      ))  
   (:action move-p2-3-p2-2
      :precondition (at p2-3)
      :effect (and (not (at p2-3)) (at p2-2)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj-at o1 p2-2)))
                          (and (obj-at o1 p2-2) (not (holding o1)))); (handempty) 
                 )  
                 (when (holding o2)
                       (oneof 
                          (and (holding o2) (not  (obj-at o2 p2-2)))
                          (and (obj-at o2 p2-2) (not (holding o2)))); (handempty) 
                 )  
                 (when (holding o3)
                       (oneof 
                          (and (holding o3) (not  (obj-at o3 p2-2)))
                          (and (obj-at o3 p2-2) (not (holding o3)))); (handempty) 
                 )  
      ))  
   (:action move-p3-2-p3-3
      :precondition (at p3-2)
      :effect (and (not (at p3-2)) (at p3-3)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj-at o1 p3-3)))
                          (and (obj-at o1 p3-3) (not (holding o1)))); (handempty) 
                 )  
                 (when (holding o2)
                       (oneof 
                          (and (holding o2) (not  (obj-at o2 p3-3)))
                          (and (obj-at o2 p3-3) (not (holding o2)))); (handempty) 
                 )  
                 (when (holding o3)
                       (oneof 
                          (and (holding o3) (not  (obj-at o3 p3-3)))
                          (and (obj-at o3 p3-3) (not (holding o3)))); (handempty) 
                 )  
      ))  
   (:action move-p3-3-p3-2
      :precondition (at p3-3)
      :effect (and (not (at p3-3)) (at p3-2)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj-at o1 p3-2)))
                          (and (obj-at o1 p3-2) (not (holding o1)))); (handempty) 
                 )  
                 (when (holding o2)
                       (oneof 
                          (and (holding o2) (not  (obj-at o2 p3-2)))
                          (and (obj-at o2 p3-2) (not (holding o2)))); (handempty) 
                 )  
                 (when (holding o3)
                       (oneof 
                          (and (holding o3) (not  (obj-at o3 p3-2)))
                          (and (obj-at o3 p3-2) (not (holding o3)))); (handempty) 
                 )  
      ))  
   (:action move-p4-2-p4-3
      :precondition (at p4-2)
      :effect (and (not (at p4-2)) (at p4-3)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj-at o1 p4-3)))
                          (and (obj-at o1 p4-3) (not (holding o1)))); (handempty) 
                 )  
                 (when (holding o2)
                       (oneof 
                          (and (holding o2) (not  (obj-at o2 p4-3)))
                          (and (obj-at o2 p4-3) (not (holding o2)))); (handempty) 
                 )  
                 (when (holding o3)
                       (oneof 
                          (and (holding o3) (not  (obj-at o3 p4-3)))
                          (and (obj-at o3 p4-3) (not (holding o3)))); (handempty) 
                 )  
      ))  
   (:action move-p4-3-p4-2
      :precondition (at p4-3)
      :effect (and (not (at p4-3)) (at p4-2)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj-at o1 p4-2)))
                          (and (obj-at o1 p4-2) (not (holding o1)))); (handempty) 
                 )  
                 (when (holding o2)
                       (oneof 
                          (and (holding o2) (not  (obj-at o2 p4-2)))
                          (and (obj-at o2 p4-2) (not (holding o2)))); (handempty) 
                 )  
                 (when (holding o3)
                       (oneof 
                          (and (holding o3) (not  (obj-at o3 p4-2)))
                          (and (obj-at o3 p4-2) (not (holding o3)))); (handempty) 
                 )  
      ))  
   (:action move-p5-2-p5-3
      :precondition (at p5-2)
      :effect (and (not (at p5-2)) (at p5-3)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj-at o1 p5-3)))
                          (and (obj-at o1 p5-3) (not (holding o1)))); (handempty) 
                 )  
                 (when (holding o2)
                       (oneof 
                          (and (holding o2) (not  (obj-at o2 p5-3)))
                          (and (obj-at o2 p5-3) (not (holding o2)))); (handempty) 
                 )  
                 (when (holding o3)
                       (oneof 
                          (and (holding o3) (not  (obj-at o3 p5-3)))
                          (and (obj-at o3 p5-3) (not (holding o3)))); (handempty) 
                 )  
      ))  
   (:action move-p5-3-p5-2
      :precondition (at p5-3)
      :effect (and (not (at p5-3)) (at p5-2)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj-at o1 p5-2)))
                          (and (obj-at o1 p5-2) (not (holding o1)))); (handempty) 
                 )  
                 (when (holding o2)
                       (oneof 
                          (and (holding o2) (not  (obj-at o2 p5-2)))
                          (and (obj-at o2 p5-2) (not (holding o2)))); (handempty) 
                 )  
                 (when (holding o3)
                       (oneof 
                          (and (holding o3) (not  (obj-at o3 p5-2)))
                          (and (obj-at o3 p5-2) (not (holding o3)))); (handempty) 
                 )  
      ))  
   (:action move-p1-3-p1-4
      :precondition (at p1-3)
      :effect (and (not (at p1-3)) (at p1-4)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj-at o1 p1-4)))
                          (and (obj-at o1 p1-4) (not (holding o1)))); (handempty) 
                 )  
                 (when (holding o2)
                       (oneof 
                          (and (holding o2) (not  (obj-at o2 p1-4)))
                          (and (obj-at o2 p1-4) (not (holding o2)))); (handempty) 
                 )  
                 (when (holding o3)
                       (oneof 
                          (and (holding o3) (not  (obj-at o3 p1-4)))
                          (and (obj-at o3 p1-4) (not (holding o3)))); (handempty) 
                 )  
      ))  
   (:action move-p1-4-p1-3
      :precondition (at p1-4)
      :effect (and (not (at p1-4)) (at p1-3)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj-at o1 p1-3)))
                          (and (obj-at o1 p1-3) (not (holding o1)))); (handempty) 
                 )  
                 (when (holding o2)
                       (oneof 
                          (and (holding o2) (not  (obj-at o2 p1-3)))
                          (and (obj-at o2 p1-3) (not (holding o2)))); (handempty) 
                 )  
                 (when (holding o3)
                       (oneof 
                          (and (holding o3) (not  (obj-at o3 p1-3)))
                          (and (obj-at o3 p1-3) (not (holding o3)))); (handempty) 
                 )  
      ))  
   (:action move-p2-3-p2-4
      :precondition (at p2-3)
      :effect (and (not (at p2-3)) (at p2-4)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj-at o1 p2-4)))
                          (and (obj-at o1 p2-4) (not (holding o1)))); (handempty) 
                 )  
                 (when (holding o2)
                       (oneof 
                          (and (holding o2) (not  (obj-at o2 p2-4)))
                          (and (obj-at o2 p2-4) (not (holding o2)))); (handempty) 
                 )  
                 (when (holding o3)
                       (oneof 
                          (and (holding o3) (not  (obj-at o3 p2-4)))
                          (and (obj-at o3 p2-4) (not (holding o3)))); (handempty) 
                 )  
      ))  
   (:action move-p2-4-p2-3
      :precondition (at p2-4)
      :effect (and (not (at p2-4)) (at p2-3)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj-at o1 p2-3)))
                          (and (obj-at o1 p2-3) (not (holding o1)))); (handempty) 
                 )  
                 (when (holding o2)
                       (oneof 
                          (and (holding o2) (not  (obj-at o2 p2-3)))
                          (and (obj-at o2 p2-3) (not (holding o2)))); (handempty) 
                 )  
                 (when (holding o3)
                       (oneof 
                          (and (holding o3) (not  (obj-at o3 p2-3)))
                          (and (obj-at o3 p2-3) (not (holding o3)))); (handempty) 
                 )  
      ))  
   (:action move-p3-3-p3-4
      :precondition (at p3-3)
      :effect (and (not (at p3-3)) (at p3-4)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj-at o1 p3-4)))
                          (and (obj-at o1 p3-4) (not (holding o1)))); (handempty) 
                 )  
                 (when (holding o2)
                       (oneof 
                          (and (holding o2) (not  (obj-at o2 p3-4)))
                          (and (obj-at o2 p3-4) (not (holding o2)))); (handempty) 
                 )  
                 (when (holding o3)
                       (oneof 
                          (and (holding o3) (not  (obj-at o3 p3-4)))
                          (and (obj-at o3 p3-4) (not (holding o3)))); (handempty) 
                 )  
      ))  
   (:action move-p3-4-p3-3
      :precondition (at p3-4)
      :effect (and (not (at p3-4)) (at p3-3)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj-at o1 p3-3)))
                          (and (obj-at o1 p3-3) (not (holding o1)))); (handempty) 
                 )  
                 (when (holding o2)
                       (oneof 
                          (and (holding o2) (not  (obj-at o2 p3-3)))
                          (and (obj-at o2 p3-3) (not (holding o2)))); (handempty) 
                 )  
                 (when (holding o3)
                       (oneof 
                          (and (holding o3) (not  (obj-at o3 p3-3)))
                          (and (obj-at o3 p3-3) (not (holding o3)))); (handempty) 
                 )  
      ))  
   (:action move-p4-3-p4-4
      :precondition (at p4-3)
      :effect (and (not (at p4-3)) (at p4-4)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj-at o1 p4-4)))
                          (and (obj-at o1 p4-4) (not (holding o1)))); (handempty) 
                 )  
                 (when (holding o2)
                       (oneof 
                          (and (holding o2) (not  (obj-at o2 p4-4)))
                          (and (obj-at o2 p4-4) (not (holding o2)))); (handempty) 
                 )  
                 (when (holding o3)
                       (oneof 
                          (and (holding o3) (not  (obj-at o3 p4-4)))
                          (and (obj-at o3 p4-4) (not (holding o3)))); (handempty) 
                 )  
      ))  
   (:action move-p4-4-p4-3
      :precondition (at p4-4)
      :effect (and (not (at p4-4)) (at p4-3)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj-at o1 p4-3)))
                          (and (obj-at o1 p4-3) (not (holding o1)))); (handempty) 
                 )  
                 (when (holding o2)
                       (oneof 
                          (and (holding o2) (not  (obj-at o2 p4-3)))
                          (and (obj-at o2 p4-3) (not (holding o2)))); (handempty) 
                 )  
                 (when (holding o3)
                       (oneof 
                          (and (holding o3) (not  (obj-at o3 p4-3)))
                          (and (obj-at o3 p4-3) (not (holding o3)))); (handempty) 
                 )  
      ))  
   (:action move-p5-3-p5-4
      :precondition (at p5-3)
      :effect (and (not (at p5-3)) (at p5-4)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj-at o1 p5-4)))
                          (and (obj-at o1 p5-4) (not (holding o1)))); (handempty) 
                 )  
                 (when (holding o2)
                       (oneof 
                          (and (holding o2) (not  (obj-at o2 p5-4)))
                          (and (obj-at o2 p5-4) (not (holding o2)))); (handempty) 
                 )  
                 (when (holding o3)
                       (oneof 
                          (and (holding o3) (not  (obj-at o3 p5-4)))
                          (and (obj-at o3 p5-4) (not (holding o3)))); (handempty) 
                 )  
      ))  
   (:action move-p5-4-p5-3
      :precondition (at p5-4)
      :effect (and (not (at p5-4)) (at p5-3)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj-at o1 p5-3)))
                          (and (obj-at o1 p5-3) (not (holding o1)))); (handempty) 
                 )  
                 (when (holding o2)
                       (oneof 
                          (and (holding o2) (not  (obj-at o2 p5-3)))
                          (and (obj-at o2 p5-3) (not (holding o2)))); (handempty) 
                 )  
                 (when (holding o3)
                       (oneof 
                          (and (holding o3) (not  (obj-at o3 p5-3)))
                          (and (obj-at o3 p5-3) (not (holding o3)))); (handempty) 
                 )  
      ))  
   (:action move-p1-4-p1-5
      :precondition (at p1-4)
      :effect (and (not (at p1-4)) (at p1-5)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj-at o1 p1-5)))
                          (and (obj-at o1 p1-5) (not (holding o1)))); (handempty) 
                 )  
                 (when (holding o2)
                       (oneof 
                          (and (holding o2) (not  (obj-at o2 p1-5)))
                          (and (obj-at o2 p1-5) (not (holding o2)))); (handempty) 
                 )  
                 (when (holding o3)
                       (oneof 
                          (and (holding o3) (not  (obj-at o3 p1-5)))
                          (and (obj-at o3 p1-5) (not (holding o3)))); (handempty) 
                 )  
      ))  
   (:action move-p1-5-p1-4
      :precondition (at p1-5)
      :effect (and (not (at p1-5)) (at p1-4)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj-at o1 p1-4)))
                          (and (obj-at o1 p1-4) (not (holding o1)))); (handempty) 
                 )  
                 (when (holding o2)
                       (oneof 
                          (and (holding o2) (not  (obj-at o2 p1-4)))
                          (and (obj-at o2 p1-4) (not (holding o2)))); (handempty) 
                 )  
                 (when (holding o3)
                       (oneof 
                          (and (holding o3) (not  (obj-at o3 p1-4)))
                          (and (obj-at o3 p1-4) (not (holding o3)))); (handempty) 
                 )  
      ))  
   (:action move-p2-4-p2-5
      :precondition (at p2-4)
      :effect (and (not (at p2-4)) (at p2-5)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj-at o1 p2-5)))
                          (and (obj-at o1 p2-5) (not (holding o1)))); (handempty) 
                 )  
                 (when (holding o2)
                       (oneof 
                          (and (holding o2) (not  (obj-at o2 p2-5)))
                          (and (obj-at o2 p2-5) (not (holding o2)))); (handempty) 
                 )  
                 (when (holding o3)
                       (oneof 
                          (and (holding o3) (not  (obj-at o3 p2-5)))
                          (and (obj-at o3 p2-5) (not (holding o3)))); (handempty) 
                 )  
      ))  
   (:action move-p2-5-p2-4
      :precondition (at p2-5)
      :effect (and (not (at p2-5)) (at p2-4)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj-at o1 p2-4)))
                          (and (obj-at o1 p2-4) (not (holding o1)))); (handempty) 
                 )  
                 (when (holding o2)
                       (oneof 
                          (and (holding o2) (not  (obj-at o2 p2-4)))
                          (and (obj-at o2 p2-4) (not (holding o2)))); (handempty) 
                 )  
                 (when (holding o3)
                       (oneof 
                          (and (holding o3) (not  (obj-at o3 p2-4)))
                          (and (obj-at o3 p2-4) (not (holding o3)))); (handempty) 
                 )  
      ))  
   (:action move-p3-4-p3-5
      :precondition (at p3-4)
      :effect (and (not (at p3-4)) (at p3-5)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj-at o1 p3-5)))
                          (and (obj-at o1 p3-5) (not (holding o1)))); (handempty) 
                 )  
                 (when (holding o2)
                       (oneof 
                          (and (holding o2) (not  (obj-at o2 p3-5)))
                          (and (obj-at o2 p3-5) (not (holding o2)))); (handempty) 
                 )  
                 (when (holding o3)
                       (oneof 
                          (and (holding o3) (not  (obj-at o3 p3-5)))
                          (and (obj-at o3 p3-5) (not (holding o3)))); (handempty) 
                 )  
      ))  
   (:action move-p3-5-p3-4
      :precondition (at p3-5)
      :effect (and (not (at p3-5)) (at p3-4)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj-at o1 p3-4)))
                          (and (obj-at o1 p3-4) (not (holding o1)))); (handempty) 
                 )  
                 (when (holding o2)
                       (oneof 
                          (and (holding o2) (not  (obj-at o2 p3-4)))
                          (and (obj-at o2 p3-4) (not (holding o2)))); (handempty) 
                 )  
                 (when (holding o3)
                       (oneof 
                          (and (holding o3) (not  (obj-at o3 p3-4)))
                          (and (obj-at o3 p3-4) (not (holding o3)))); (handempty) 
                 )  
      ))  
   (:action move-p4-4-p4-5
      :precondition (at p4-4)
      :effect (and (not (at p4-4)) (at p4-5)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj-at o1 p4-5)))
                          (and (obj-at o1 p4-5) (not (holding o1)))); (handempty) 
                 )  
                 (when (holding o2)
                       (oneof 
                          (and (holding o2) (not  (obj-at o2 p4-5)))
                          (and (obj-at o2 p4-5) (not (holding o2)))); (handempty) 
                 )  
                 (when (holding o3)
                       (oneof 
                          (and (holding o3) (not  (obj-at o3 p4-5)))
                          (and (obj-at o3 p4-5) (not (holding o3)))); (handempty) 
                 )  
      ))  
   (:action move-p4-5-p4-4
      :precondition (at p4-5)
      :effect (and (not (at p4-5)) (at p4-4)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj-at o1 p4-4)))
                          (and (obj-at o1 p4-4) (not (holding o1)))); (handempty) 
                 )  
                 (when (holding o2)
                       (oneof 
                          (and (holding o2) (not  (obj-at o2 p4-4)))
                          (and (obj-at o2 p4-4) (not (holding o2)))); (handempty) 
                 )  
                 (when (holding o3)
                       (oneof 
                          (and (holding o3) (not  (obj-at o3 p4-4)))
                          (and (obj-at o3 p4-4) (not (holding o3)))); (handempty) 
                 )  
      ))  
   (:action move-p5-4-p5-5
      :precondition (at p5-4)
      :effect (and (not (at p5-4)) (at p5-5)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj-at o1 p5-5)))
                          (and (obj-at o1 p5-5) (not (holding o1)))); (handempty) 
                 )  
                 (when (holding o2)
                       (oneof 
                          (and (holding o2) (not  (obj-at o2 p5-5)))
                          (and (obj-at o2 p5-5) (not (holding o2)))); (handempty) 
                 )  
                 (when (holding o3)
                       (oneof 
                          (and (holding o3) (not  (obj-at o3 p5-5)))
                          (and (obj-at o3 p5-5) (not (holding o3)))); (handempty) 
                 )  
      ))  
   (:action move-p5-5-p5-4
      :precondition (at p5-5)
      :effect (and (not (at p5-5)) (at p5-4)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj-at o1 p5-4)))
                          (and (obj-at o1 p5-4) (not (holding o1)))); (handempty) 
                 )  
                 (when (holding o2)
                       (oneof 
                          (and (holding o2) (not  (obj-at o2 p5-4)))
                          (and (obj-at o2 p5-4) (not (holding o2)))); (handempty) 
                 )  
                 (when (holding o3)
                       (oneof 
                          (and (holding o3) (not  (obj-at o3 p5-4)))
                          (and (obj-at o3 p5-4) (not (holding o3)))); (handempty) 
                 )  
      ))  
) 
