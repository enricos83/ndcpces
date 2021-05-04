(define (domain alban_9_6) 
  (:requirements :typing)
  (:types x y)
  (:constants
    x_0
    x_1
    x_2
    x_3
    x_4
    x_5
    x_6
    x_7
    x_8
    - x
    y_0
    y_1
    y_2
    y_3
    y_4
    y_5
    - y
  )
  (:predicates
    (atx ?x - x)
    (aty ?y - y)
    (has_to_check) (can_move)
    (alive)
  )
  (:action check
    :parameters ()
    :precondition (has_to_check)
    :effect (and
      (not (has_to_check)) (can_move)
      (when (and (atx x_0) (aty y_5)) (and (not (alive))))
      (when (and (atx x_1) (aty y_5)) (and (not (alive))))
      (when (and (atx x_2) (aty y_5)) (and (not (alive))))
      (when (and (atx x_3) (aty y_5)) (and (not (alive))))
      (when (and (atx x_4) (aty y_5)) (and (not (alive))))
      (when (and (atx x_5) (aty y_5)) (and (not (alive))))
      (when (and (atx x_6) (aty y_5)) (and (not (alive))))
      (when (and (atx x_7) (aty y_5)) (and (not (alive))))
      (when (and (atx x_8) (aty y_5)) (and (not (alive))))
      (when (and (atx x_0) (aty y_0)) (and (not (alive))))
      (when (and (atx x_8) (aty y_0)) (and (not (alive))))
    )
  )
  (:action move_up
   :parameters ()
   :precondition (can_move)
   :effect (and
     (not (can_move)) (has_to_check)
      (when (aty y_0) (and (not (aty y_0)) (aty y_1)))
      (when (aty y_1) (and (not (aty y_1)) (aty y_2)))
      (when (aty y_2) (and (not (aty y_2)) (aty y_3)))
      (when (aty y_3) (and (not (aty y_3)) (aty y_4)))
      (when (aty y_4) (and (not (aty y_4)) (aty y_5)))
    )
  )
  (:action move_down
   :parameters ()
   :precondition (can_move)
   :effect (and
     (not (can_move)) (has_to_check)
      (when (aty y_1) (and (not (aty y_1)) (aty y_0)))
      (when (aty y_2) (and (not (aty y_2)) (aty y_1)))
      (when (aty y_3) (and (not (aty y_3)) (aty y_2)))
      (when (aty y_4) (and (not (aty y_4)) (aty y_3)))
      (when (aty y_5) (and (not (aty y_5)) (aty y_4)))
    )
  )
  (:action move_left
   :parameters ()
   :precondition (can_move)
   :effect (and
     (not (can_move)) (has_to_check)
      (when (atx x_1) (and (not (atx x_1)) (atx x_0)))
      (when (atx x_2) (and (not (atx x_2)) (atx x_1)))
      (when (atx x_3) (and (not (atx x_3)) (atx x_2)))
      (when (atx x_4) (and (not (atx x_4)) (atx x_3)))
      (when (atx x_5) (and (not (atx x_5)) (atx x_4)))
      (when (atx x_6) (and (not (atx x_6)) (atx x_5)))
      (when (atx x_7) (and (not (atx x_7)) (atx x_6)))
      (when (atx x_8) (and (not (atx x_8)) (atx x_7)))
    )
  )
  (:action move_right
   :parameters ()
   :precondition (can_move)
   :effect (and
     (not (can_move)) (has_to_check)
      (when (atx x_0) (and (not (atx x_0)) (atx x_1)))
      (when (atx x_1) (and (not (atx x_1)) (atx x_2)))
      (when (atx x_2) (and (not (atx x_2)) (atx x_3)))
      (when (atx x_3) (and (not (atx x_3)) (atx x_4)))
      (when (atx x_4) (and (not (atx x_4)) (atx x_5)))
      (when (atx x_5) (and (not (atx x_5)) (atx x_6)))
      (when (atx x_6) (and (not (atx x_6)) (atx x_7)))
      (when (atx x_7) (and (not (atx x_7)) (atx x_8)))
      (when (aty y_0) (oneof (aty y_0) (and (not (aty y_0)) (aty y_1))))
      (when (aty y_1) (oneof (aty y_1) (and (not (aty y_1)) (aty y_2))))
      (when (aty y_2) (oneof (aty y_2) (and (not (aty y_2)) (aty y_3))))
      (when (aty y_3) (oneof (aty y_3) (and (not (aty y_3)) (aty y_4))))
      (when (aty y_4) (oneof (aty y_4) (and (not (aty y_4)) (aty y_5))))
    )
  )
)
;; KTHXBAY
