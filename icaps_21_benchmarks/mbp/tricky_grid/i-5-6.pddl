(define (problem alban) 
  (:domain alban_5_6)
  (:init (and 
    (alive)
    (can_move)
    (oneof 
      (atx x_1)
      (atx x_2)
      (atx x_3)
    )
    (oneof 
      (aty y_1)
      (aty y_2)
      (aty y_3)
      (aty y_4)
    )
  ))
  (:conformantgoal (and (alive) (atx x_2) (aty y_3)))
)
