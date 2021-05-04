
(define (domain move-pkgs-nd) 
   (:requirements :strips :typing)
   (:types pos obj)
   (:constants  o1 - obj  p1-1 p1-2 p1-3 p2-1 p2-2 p2-3 p3-1 p3-2 p3-3 - pos) 
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
      ))  
   (:action move-p2-1-p1-1
      :precondition (at p2-1)
      :effect (and (not (at p2-1)) (at p1-1)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj-at o1 p1-1)))
                          (and (obj-at o1 p1-1) (not (holding o1)))); (handempty) 
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
      ))  
   (:action move-p2-2-p1-2
      :precondition (at p2-2)
      :effect (and (not (at p2-2)) (at p1-2)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj-at o1 p1-2)))
                          (and (obj-at o1 p1-2) (not (holding o1)))); (handempty) 
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
      ))  
   (:action move-p2-3-p1-3
      :precondition (at p2-3)
      :effect (and (not (at p2-3)) (at p1-3)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj-at o1 p1-3)))
                          (and (obj-at o1 p1-3) (not (holding o1)))); (handempty) 
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
      ))  
   (:action move-p3-1-p2-1
      :precondition (at p3-1)
      :effect (and (not (at p3-1)) (at p2-1)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj-at o1 p2-1)))
                          (and (obj-at o1 p2-1) (not (holding o1)))); (handempty) 
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
      ))  
   (:action move-p3-2-p2-2
      :precondition (at p3-2)
      :effect (and (not (at p3-2)) (at p2-2)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj-at o1 p2-2)))
                          (and (obj-at o1 p2-2) (not (holding o1)))); (handempty) 
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
      ))  
   (:action move-p3-3-p2-3
      :precondition (at p3-3)
      :effect (and (not (at p3-3)) (at p2-3)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj-at o1 p2-3)))
                          (and (obj-at o1 p2-3) (not (holding o1)))); (handempty) 
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
      ))  
   (:action move-p1-2-p1-1
      :precondition (at p1-2)
      :effect (and (not (at p1-2)) (at p1-1)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj-at o1 p1-1)))
                          (and (obj-at o1 p1-1) (not (holding o1)))); (handempty) 
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
      ))  
   (:action move-p2-2-p2-1
      :precondition (at p2-2)
      :effect (and (not (at p2-2)) (at p2-1)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj-at o1 p2-1)))
                          (and (obj-at o1 p2-1) (not (holding o1)))); (handempty) 
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
      ))  
   (:action move-p3-2-p3-1
      :precondition (at p3-2)
      :effect (and (not (at p3-2)) (at p3-1)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj-at o1 p3-1)))
                          (and (obj-at o1 p3-1) (not (holding o1)))); (handempty) 
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
      ))  
   (:action move-p1-3-p1-2
      :precondition (at p1-3)
      :effect (and (not (at p1-3)) (at p1-2)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj-at o1 p1-2)))
                          (and (obj-at o1 p1-2) (not (holding o1)))); (handempty) 
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
      ))  
   (:action move-p2-3-p2-2
      :precondition (at p2-3)
      :effect (and (not (at p2-3)) (at p2-2)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj-at o1 p2-2)))
                          (and (obj-at o1 p2-2) (not (holding o1)))); (handempty) 
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
      ))  
   (:action move-p3-3-p3-2
      :precondition (at p3-3)
      :effect (and (not (at p3-3)) (at p3-2)  
                 (when (holding o1)
                       (oneof 
                          (and (holding o1) (not  (obj-at o1 p3-2)))
                          (and (obj-at o1 p3-2) (not (holding o1)))); (handempty) 
                 )  
      ))  
   (:action static-or
      :parameters (?o - obj)
      :effect (and
       (when (and (not (holding ?o))  (not(obj-at ?o p1-2))  (not(obj-at ?o p1-3))  (not(obj-at ?o p2-1))  (not(obj-at ?o p2-2))  (not(obj-at ?o p2-3))  (not(obj-at ?o p3-1))  (not(obj-at ?o p3-2))  (not(obj-at ?o p3-3)) ) (obj-at ?o p1-1) )
       (when (and (not (holding ?o))  (not(obj-at ?o p1-1))  (not(obj-at ?o p1-3))  (not(obj-at ?o p2-1))  (not(obj-at ?o p2-2))  (not(obj-at ?o p2-3))  (not(obj-at ?o p3-1))  (not(obj-at ?o p3-2))  (not(obj-at ?o p3-3)) ) (obj-at ?o p1-2) )
       (when (and (not (holding ?o))  (not(obj-at ?o p1-1))  (not(obj-at ?o p1-2))  (not(obj-at ?o p2-1))  (not(obj-at ?o p2-2))  (not(obj-at ?o p2-3))  (not(obj-at ?o p3-1))  (not(obj-at ?o p3-2))  (not(obj-at ?o p3-3)) ) (obj-at ?o p1-3) )
       (when (and (not (holding ?o))  (not(obj-at ?o p1-1))  (not(obj-at ?o p1-2))  (not(obj-at ?o p1-3))  (not(obj-at ?o p2-2))  (not(obj-at ?o p2-3))  (not(obj-at ?o p3-1))  (not(obj-at ?o p3-2))  (not(obj-at ?o p3-3)) ) (obj-at ?o p2-1) )
       (when (and (not (holding ?o))  (not(obj-at ?o p1-1))  (not(obj-at ?o p1-2))  (not(obj-at ?o p1-3))  (not(obj-at ?o p2-1))  (not(obj-at ?o p2-3))  (not(obj-at ?o p3-1))  (not(obj-at ?o p3-2))  (not(obj-at ?o p3-3)) ) (obj-at ?o p2-2) )
       (when (and (not (holding ?o))  (not(obj-at ?o p1-1))  (not(obj-at ?o p1-2))  (not(obj-at ?o p1-3))  (not(obj-at ?o p2-1))  (not(obj-at ?o p2-2))  (not(obj-at ?o p3-1))  (not(obj-at ?o p3-2))  (not(obj-at ?o p3-3)) ) (obj-at ?o p2-3) )
       (when (and (not (holding ?o))  (not(obj-at ?o p1-1))  (not(obj-at ?o p1-2))  (not(obj-at ?o p1-3))  (not(obj-at ?o p2-1))  (not(obj-at ?o p2-2))  (not(obj-at ?o p2-3))  (not(obj-at ?o p3-2))  (not(obj-at ?o p3-3)) ) (obj-at ?o p3-1) )
       (when (and (not (holding ?o))  (not(obj-at ?o p1-1))  (not(obj-at ?o p1-2))  (not(obj-at ?o p1-3))  (not(obj-at ?o p2-1))  (not(obj-at ?o p2-2))  (not(obj-at ?o p2-3))  (not(obj-at ?o p3-1))  (not(obj-at ?o p3-3)) ) (obj-at ?o p3-2) )
       (when (and (not (holding ?o))  (not(obj-at ?o p1-1))  (not(obj-at ?o p1-2))  (not(obj-at ?o p1-3))  (not(obj-at ?o p2-1))  (not(obj-at ?o p2-2))  (not(obj-at ?o p2-3))  (not(obj-at ?o p3-1))  (not(obj-at ?o p3-2)) ) (obj-at ?o p3-3) )
       (when (and  (not(obj-at ?o p1-1))  (not(obj-at ?o p1-2))  (not(obj-at ?o p1-3))  (not(obj-at ?o p2-1))  (not(obj-at ?o p2-2))  (not(obj-at ?o p2-3))  (not(obj-at ?o p3-1))  (not(obj-at ?o p3-2))  (not(obj-at ?o p3-3)) ) (holding ?o) )
   ))

) 
