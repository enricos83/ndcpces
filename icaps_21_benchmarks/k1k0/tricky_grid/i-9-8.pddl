(define (problem alban) 
  (:domain alban_9_8)
  (:init (and 
    (alive)
    (can_move)
    (oneof 
      (atx x_1)
      (atx x_2)
      (atx x_3)
      (atx x_4)
      (atx x_5)
      (atx x_6)
      (atx x_7)
    )
    (oneof 
      (aty y_1)
      (aty y_2)
      (aty y_3)
      (aty y_4)
      (aty y_5)
      (aty y_6)
    )
  ))
  (:goal (and (alive) (atx x_4) (aty y_4)))
)
