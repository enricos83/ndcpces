
(define (domain mouse-and-cat) 

   (:requirements :strips :typing)
   (:types pos )
   (:predicates  (adj ?i ?j - pos) (mouse-at ?i - pos) (cat-at ?i - pos) 
                 (cheese-at ?i - pos)  (have-cheese) (mouse-turn) )
   

 (:constants
    p1-1
    p1-2
    p1-3
    p1-4
    p1-5
    p1-6
    p1-7
    p1-8
    p1-9
    p1-10
    p1-11
    p1-12
    p1-13
    p1-14
    p1-15
    p1-16
    p1-17
    p1-18
    p1-19
    p1-20
    p2-1
    p2-2
    p2-3
    p2-4
    p2-5
    p2-6
    p2-7
    p2-8
    p2-9
    p2-10
    p2-11
    p2-12
    p2-13
    p2-14
    p2-15
    p2-16
    p2-17
    p2-18
    p2-19
    p2-20
    p3-1
    p3-2
    p3-3
    p3-4
    p3-5
    p3-6
    p3-7
    p3-8
    p3-9
    p3-10
    p3-11
    p3-12
    p3-13
    p3-14
    p3-15
    p3-16
    p3-17
    p3-18
    p3-19
    p3-20
    p4-1
    p4-2
    p4-3
    p4-4
    p4-5
    p4-6
    p4-7
    p4-8
    p4-9
    p4-10
    p4-11
    p4-12
    p4-13
    p4-14
    p4-15
    p4-16
    p4-17
    p4-18
    p4-19
    p4-20
    p5-1
    p5-2
    p5-3
    p5-4
    p5-5
    p5-6
    p5-7
    p5-8
    p5-9
    p5-10
    p5-11
    p5-12
    p5-13
    p5-14
    p5-15
    p5-16
    p5-17
    p5-18
    p5-19
    p5-20
    p6-1
    p6-2
    p6-3
    p6-4
    p6-5
    p6-6
    p6-7
    p6-8
    p6-9
    p6-10
    p6-11
    p6-12
    p6-13
    p6-14
    p6-15
    p6-16
    p6-17
    p6-18
    p6-19
    p6-20
    p7-1
    p7-2
    p7-3
    p7-4
    p7-5
    p7-6
    p7-7
    p7-8
    p7-9
    p7-10
    p7-11
    p7-12
    p7-13
    p7-14
    p7-15
    p7-16
    p7-17
    p7-18
    p7-19
    p7-20
    p8-1
    p8-2
    p8-3
    p8-4
    p8-5
    p8-6
    p8-7
    p8-8
    p8-9
    p8-10
    p8-11
    p8-12
    p8-13
    p8-14
    p8-15
    p8-16
    p8-17
    p8-18
    p8-19
    p8-20
    p9-1
    p9-2
    p9-3
    p9-4
    p9-5
    p9-6
    p9-7
    p9-8
    p9-9
    p9-10
    p9-11
    p9-12
    p9-13
    p9-14
    p9-15
    p9-16
    p9-17
    p9-18
    p9-19
    p9-20
    p10-1
    p10-2
    p10-3
    p10-4
    p10-5
    p10-6
    p10-7
    p10-8
    p10-9
    p10-10
    p10-11
    p10-12
    p10-13
    p10-14
    p10-15
    p10-16
    p10-17
    p10-18
    p10-19
    p10-20
    p11-1
    p11-2
    p11-3
    p11-4
    p11-5
    p11-6
    p11-7
    p11-8
    p11-9
    p11-10
    p11-11
    p11-12
    p11-13
    p11-14
    p11-15
    p11-16
    p11-17
    p11-18
    p11-19
    p11-20
    p12-1
    p12-2
    p12-3
    p12-4
    p12-5
    p12-6
    p12-7
    p12-8
    p12-9
    p12-10
    p12-11
    p12-12
    p12-13
    p12-14
    p12-15
    p12-16
    p12-17
    p12-18
    p12-19
    p12-20
    p13-1
    p13-2
    p13-3
    p13-4
    p13-5
    p13-6
    p13-7
    p13-8
    p13-9
    p13-10
    p13-11
    p13-12
    p13-13
    p13-14
    p13-15
    p13-16
    p13-17
    p13-18
    p13-19
    p13-20
    p14-1
    p14-2
    p14-3
    p14-4
    p14-5
    p14-6
    p14-7
    p14-8
    p14-9
    p14-10
    p14-11
    p14-12
    p14-13
    p14-14
    p14-15
    p14-16
    p14-17
    p14-18
    p14-19
    p14-20
    p15-1
    p15-2
    p15-3
    p15-4
    p15-5
    p15-6
    p15-7
    p15-8
    p15-9
    p15-10
    p15-11
    p15-12
    p15-13
    p15-14
    p15-15
    p15-16
    p15-17
    p15-18
    p15-19
    p15-20
    p16-1
    p16-2
    p16-3
    p16-4
    p16-5
    p16-6
    p16-7
    p16-8
    p16-9
    p16-10
    p16-11
    p16-12
    p16-13
    p16-14
    p16-15
    p16-16
    p16-17
    p16-18
    p16-19
    p16-20
    p17-1
    p17-2
    p17-3
    p17-4
    p17-5
    p17-6
    p17-7
    p17-8
    p17-9
    p17-10
    p17-11
    p17-12
    p17-13
    p17-14
    p17-15
    p17-16
    p17-17
    p17-18
    p17-19
    p17-20
    p18-1
    p18-2
    p18-3
    p18-4
    p18-5
    p18-6
    p18-7
    p18-8
    p18-9
    p18-10
    p18-11
    p18-12
    p18-13
    p18-14
    p18-15
    p18-16
    p18-17
    p18-18
    p18-19
    p18-20
    p19-1
    p19-2
    p19-3
    p19-4
    p19-5
    p19-6
    p19-7
    p19-8
    p19-9
    p19-10
    p19-11
    p19-12
    p19-13
    p19-14
    p19-15
    p19-16
    p19-17
    p19-18
    p19-19
    p19-20
    p20-1
    p20-2
    p20-3
    p20-4
    p20-5
    p20-6
    p20-7
    p20-8
    p20-9
    p20-10
    p20-11
    p20-12
    p20-13
    p20-14
    p20-15
    p20-16
    p20-17
    p20-18
    p20-19
    p20-20

     - pos
   )

   (:action cat-move
      :parameters ( )
      :effect (and (mouse-turn)
	(when (cat-at p1-1) (oneof (cat-at p2-1) (cat-at p1-2)) )
	(when (cat-at p1-2) (oneof (cat-at p1-1) (cat-at p2-2) (cat-at p1-3)) )
	(when (cat-at p1-3) (oneof (cat-at p1-2) (cat-at p2-3) (cat-at p1-4)) )
	(when (cat-at p1-4) (oneof (cat-at p1-3) (cat-at p2-4) (cat-at p1-5)) )
	(when (cat-at p1-5) (oneof (cat-at p1-4) (cat-at p2-5) (cat-at p1-6)) )
	(when (cat-at p1-6) (oneof (cat-at p1-5) (cat-at p2-6) (cat-at p1-7)) )
	(when (cat-at p1-7) (oneof (cat-at p1-6) (cat-at p2-7) (cat-at p1-8)) )
	(when (cat-at p1-8) (oneof (cat-at p1-7) (cat-at p2-8) (cat-at p1-9)) )
	(when (cat-at p1-9) (oneof (cat-at p1-8) (cat-at p2-9) (cat-at p1-10)) )
	(when (cat-at p1-10) (oneof (cat-at p1-9) (cat-at p2-10) (cat-at p1-11)) )
	(when (cat-at p1-11) (oneof (cat-at p1-10) (cat-at p2-11) (cat-at p1-12)) )
	(when (cat-at p1-12) (oneof (cat-at p1-11) (cat-at p2-12) (cat-at p1-13)) )
	(when (cat-at p1-13) (oneof (cat-at p1-12) (cat-at p2-13) (cat-at p1-14)) )
	(when (cat-at p1-14) (oneof (cat-at p1-13) (cat-at p2-14) (cat-at p1-15)) )
	(when (cat-at p1-15) (oneof (cat-at p1-14) (cat-at p2-15) (cat-at p1-16)) )
	(when (cat-at p1-16) (oneof (cat-at p1-15) (cat-at p2-16) (cat-at p1-17)) )
	(when (cat-at p1-17) (oneof (cat-at p1-16) (cat-at p2-17) (cat-at p1-18)) )
	(when (cat-at p1-18) (oneof (cat-at p1-17) (cat-at p2-18) (cat-at p1-19)) )
	(when (cat-at p1-19) (oneof (cat-at p1-18) (cat-at p2-19) (cat-at p1-20)) )
	(when (cat-at p1-20) (oneof (cat-at p1-19) (cat-at p2-20)) )
	(when (cat-at p2-1) (oneof (cat-at p1-1) (cat-at p3-1) (cat-at p2-2)) )
	(when (cat-at p2-2) (oneof (cat-at p1-2) (cat-at p2-1) (cat-at p3-2) (cat-at p2-3)) )
	(when (cat-at p2-3) (oneof (cat-at p1-3) (cat-at p2-2) (cat-at p3-3) (cat-at p2-4)) )
	(when (cat-at p2-4) (oneof (cat-at p1-4) (cat-at p2-3) (cat-at p3-4) (cat-at p2-5)) )
	(when (cat-at p2-5) (oneof (cat-at p1-5) (cat-at p2-4) (cat-at p3-5) (cat-at p2-6)) )
	(when (cat-at p2-6) (oneof (cat-at p1-6) (cat-at p2-5) (cat-at p3-6) (cat-at p2-7)) )
	(when (cat-at p2-7) (oneof (cat-at p1-7) (cat-at p2-6) (cat-at p3-7) (cat-at p2-8)) )
	(when (cat-at p2-8) (oneof (cat-at p1-8) (cat-at p2-7) (cat-at p3-8) (cat-at p2-9)) )
	(when (cat-at p2-9) (oneof (cat-at p1-9) (cat-at p2-8) (cat-at p3-9) (cat-at p2-10)) )
	(when (cat-at p2-10) (oneof (cat-at p1-10) (cat-at p2-9) (cat-at p3-10) (cat-at p2-11)) )
	(when (cat-at p2-11) (oneof (cat-at p1-11) (cat-at p2-10) (cat-at p3-11) (cat-at p2-12)) )
	(when (cat-at p2-12) (oneof (cat-at p1-12) (cat-at p2-11) (cat-at p3-12) (cat-at p2-13)) )
	(when (cat-at p2-13) (oneof (cat-at p1-13) (cat-at p2-12) (cat-at p3-13) (cat-at p2-14)) )
	(when (cat-at p2-14) (oneof (cat-at p1-14) (cat-at p2-13) (cat-at p3-14) (cat-at p2-15)) )
	(when (cat-at p2-15) (oneof (cat-at p1-15) (cat-at p2-14) (cat-at p3-15) (cat-at p2-16)) )
	(when (cat-at p2-16) (oneof (cat-at p1-16) (cat-at p2-15) (cat-at p3-16) (cat-at p2-17)) )
	(when (cat-at p2-17) (oneof (cat-at p1-17) (cat-at p2-16) (cat-at p3-17) (cat-at p2-18)) )
	(when (cat-at p2-18) (oneof (cat-at p1-18) (cat-at p2-17) (cat-at p3-18) (cat-at p2-19)) )
	(when (cat-at p2-19) (oneof (cat-at p1-19) (cat-at p2-18) (cat-at p3-19) (cat-at p2-20)) )
	(when (cat-at p2-20) (oneof (cat-at p1-20) (cat-at p2-19) (cat-at p3-20)) )
	(when (cat-at p3-1) (oneof (cat-at p2-1) (cat-at p4-1) (cat-at p3-2)) )
	(when (cat-at p3-2) (oneof (cat-at p2-2) (cat-at p3-1) (cat-at p4-2) (cat-at p3-3)) )
	(when (cat-at p3-3) (oneof (cat-at p2-3) (cat-at p3-2) (cat-at p4-3) (cat-at p3-4)) )
	(when (cat-at p3-4) (oneof (cat-at p2-4) (cat-at p3-3) (cat-at p4-4) (cat-at p3-5)) )
	(when (cat-at p3-5) (oneof (cat-at p2-5) (cat-at p3-4) (cat-at p4-5) (cat-at p3-6)) )
	(when (cat-at p3-6) (oneof (cat-at p2-6) (cat-at p3-5) (cat-at p4-6) (cat-at p3-7)) )
	(when (cat-at p3-7) (oneof (cat-at p2-7) (cat-at p3-6) (cat-at p4-7) (cat-at p3-8)) )
	(when (cat-at p3-8) (oneof (cat-at p2-8) (cat-at p3-7) (cat-at p4-8) (cat-at p3-9)) )
	(when (cat-at p3-9) (oneof (cat-at p2-9) (cat-at p3-8) (cat-at p4-9) (cat-at p3-10)) )
	(when (cat-at p3-10) (oneof (cat-at p2-10) (cat-at p3-9) (cat-at p4-10) (cat-at p3-11)) )
	(when (cat-at p3-11) (oneof (cat-at p2-11) (cat-at p3-10) (cat-at p4-11) (cat-at p3-12)) )
	(when (cat-at p3-12) (oneof (cat-at p2-12) (cat-at p3-11) (cat-at p4-12) (cat-at p3-13)) )
	(when (cat-at p3-13) (oneof (cat-at p2-13) (cat-at p3-12) (cat-at p4-13) (cat-at p3-14)) )
	(when (cat-at p3-14) (oneof (cat-at p2-14) (cat-at p3-13) (cat-at p4-14) (cat-at p3-15)) )
	(when (cat-at p3-15) (oneof (cat-at p2-15) (cat-at p3-14) (cat-at p4-15) (cat-at p3-16)) )
	(when (cat-at p3-16) (oneof (cat-at p2-16) (cat-at p3-15) (cat-at p4-16) (cat-at p3-17)) )
	(when (cat-at p3-17) (oneof (cat-at p2-17) (cat-at p3-16) (cat-at p4-17) (cat-at p3-18)) )
	(when (cat-at p3-18) (oneof (cat-at p2-18) (cat-at p3-17) (cat-at p4-18) (cat-at p3-19)) )
	(when (cat-at p3-19) (oneof (cat-at p2-19) (cat-at p3-18) (cat-at p4-19) (cat-at p3-20)) )
	(when (cat-at p3-20) (oneof (cat-at p2-20) (cat-at p3-19) (cat-at p4-20)) )
	(when (cat-at p4-1) (oneof (cat-at p3-1) (cat-at p5-1) (cat-at p4-2)) )
	(when (cat-at p4-2) (oneof (cat-at p3-2) (cat-at p4-1) (cat-at p5-2) (cat-at p4-3)) )
	(when (cat-at p4-3) (oneof (cat-at p3-3) (cat-at p4-2) (cat-at p5-3) (cat-at p4-4)) )
	(when (cat-at p4-4) (oneof (cat-at p3-4) (cat-at p4-3) (cat-at p5-4) (cat-at p4-5)) )
	(when (cat-at p4-5) (oneof (cat-at p3-5) (cat-at p4-4) (cat-at p5-5) (cat-at p4-6)) )
	(when (cat-at p4-6) (oneof (cat-at p3-6) (cat-at p4-5) (cat-at p5-6) (cat-at p4-7)) )
	(when (cat-at p4-7) (oneof (cat-at p3-7) (cat-at p4-6) (cat-at p5-7) (cat-at p4-8)) )
	(when (cat-at p4-8) (oneof (cat-at p3-8) (cat-at p4-7) (cat-at p5-8) (cat-at p4-9)) )
	(when (cat-at p4-9) (oneof (cat-at p3-9) (cat-at p4-8) (cat-at p5-9) (cat-at p4-10)) )
	(when (cat-at p4-10) (oneof (cat-at p3-10) (cat-at p4-9) (cat-at p5-10) (cat-at p4-11)) )
	(when (cat-at p4-11) (oneof (cat-at p3-11) (cat-at p4-10) (cat-at p5-11) (cat-at p4-12)) )
	(when (cat-at p4-12) (oneof (cat-at p3-12) (cat-at p4-11) (cat-at p5-12) (cat-at p4-13)) )
	(when (cat-at p4-13) (oneof (cat-at p3-13) (cat-at p4-12) (cat-at p5-13) (cat-at p4-14)) )
	(when (cat-at p4-14) (oneof (cat-at p3-14) (cat-at p4-13) (cat-at p5-14) (cat-at p4-15)) )
	(when (cat-at p4-15) (oneof (cat-at p3-15) (cat-at p4-14) (cat-at p5-15) (cat-at p4-16)) )
	(when (cat-at p4-16) (oneof (cat-at p3-16) (cat-at p4-15) (cat-at p5-16) (cat-at p4-17)) )
	(when (cat-at p4-17) (oneof (cat-at p3-17) (cat-at p4-16) (cat-at p5-17) (cat-at p4-18)) )
	(when (cat-at p4-18) (oneof (cat-at p3-18) (cat-at p4-17) (cat-at p5-18) (cat-at p4-19)) )
	(when (cat-at p4-19) (oneof (cat-at p3-19) (cat-at p4-18) (cat-at p5-19) (cat-at p4-20)) )
	(when (cat-at p4-20) (oneof (cat-at p3-20) (cat-at p4-19) (cat-at p5-20)) )
	(when (cat-at p5-1) (oneof (cat-at p4-1) (cat-at p6-1) (cat-at p5-2)) )
	(when (cat-at p5-2) (oneof (cat-at p4-2) (cat-at p5-1) (cat-at p6-2) (cat-at p5-3)) )
	(when (cat-at p5-3) (oneof (cat-at p4-3) (cat-at p5-2) (cat-at p6-3) (cat-at p5-4)) )
	(when (cat-at p5-4) (oneof (cat-at p4-4) (cat-at p5-3) (cat-at p6-4) (cat-at p5-5)) )
	(when (cat-at p5-5) (oneof (cat-at p4-5) (cat-at p5-4) (cat-at p6-5) (cat-at p5-6)) )
	(when (cat-at p5-6) (oneof (cat-at p4-6) (cat-at p5-5) (cat-at p6-6) (cat-at p5-7)) )
	(when (cat-at p5-7) (oneof (cat-at p4-7) (cat-at p5-6) (cat-at p6-7) (cat-at p5-8)) )
	(when (cat-at p5-8) (oneof (cat-at p4-8) (cat-at p5-7) (cat-at p6-8) (cat-at p5-9)) )
	(when (cat-at p5-9) (oneof (cat-at p4-9) (cat-at p5-8) (cat-at p6-9) (cat-at p5-10)) )
	(when (cat-at p5-10) (oneof (cat-at p4-10) (cat-at p5-9) (cat-at p6-10) (cat-at p5-11)) )
	(when (cat-at p5-11) (oneof (cat-at p4-11) (cat-at p5-10) (cat-at p6-11) (cat-at p5-12)) )
	(when (cat-at p5-12) (oneof (cat-at p4-12) (cat-at p5-11) (cat-at p6-12) (cat-at p5-13)) )
	(when (cat-at p5-13) (oneof (cat-at p4-13) (cat-at p5-12) (cat-at p6-13) (cat-at p5-14)) )
	(when (cat-at p5-14) (oneof (cat-at p4-14) (cat-at p5-13) (cat-at p6-14) (cat-at p5-15)) )
	(when (cat-at p5-15) (oneof (cat-at p4-15) (cat-at p5-14) (cat-at p6-15) (cat-at p5-16)) )
	(when (cat-at p5-16) (oneof (cat-at p4-16) (cat-at p5-15) (cat-at p6-16) (cat-at p5-17)) )
	(when (cat-at p5-17) (oneof (cat-at p4-17) (cat-at p5-16) (cat-at p6-17) (cat-at p5-18)) )
	(when (cat-at p5-18) (oneof (cat-at p4-18) (cat-at p5-17) (cat-at p6-18) (cat-at p5-19)) )
	(when (cat-at p5-19) (oneof (cat-at p4-19) (cat-at p5-18) (cat-at p6-19) (cat-at p5-20)) )
	(when (cat-at p5-20) (oneof (cat-at p4-20) (cat-at p5-19) (cat-at p6-20)) )
	(when (cat-at p6-1) (oneof (cat-at p5-1) (cat-at p7-1) (cat-at p6-2)) )
	(when (cat-at p6-2) (oneof (cat-at p5-2) (cat-at p6-1) (cat-at p7-2) (cat-at p6-3)) )
	(when (cat-at p6-3) (oneof (cat-at p5-3) (cat-at p6-2) (cat-at p7-3) (cat-at p6-4)) )
	(when (cat-at p6-4) (oneof (cat-at p5-4) (cat-at p6-3) (cat-at p7-4) (cat-at p6-5)) )
	(when (cat-at p6-5) (oneof (cat-at p5-5) (cat-at p6-4) (cat-at p7-5) (cat-at p6-6)) )
	(when (cat-at p6-6) (oneof (cat-at p5-6) (cat-at p6-5) (cat-at p7-6) (cat-at p6-7)) )
	(when (cat-at p6-7) (oneof (cat-at p5-7) (cat-at p6-6) (cat-at p7-7) (cat-at p6-8)) )
	(when (cat-at p6-8) (oneof (cat-at p5-8) (cat-at p6-7) (cat-at p7-8) (cat-at p6-9)) )
	(when (cat-at p6-9) (oneof (cat-at p5-9) (cat-at p6-8) (cat-at p7-9) (cat-at p6-10)) )
	(when (cat-at p6-10) (oneof (cat-at p5-10) (cat-at p6-9) (cat-at p7-10) (cat-at p6-11)) )
	(when (cat-at p6-11) (oneof (cat-at p5-11) (cat-at p6-10) (cat-at p7-11) (cat-at p6-12)) )
	(when (cat-at p6-12) (oneof (cat-at p5-12) (cat-at p6-11) (cat-at p7-12) (cat-at p6-13)) )
	(when (cat-at p6-13) (oneof (cat-at p5-13) (cat-at p6-12) (cat-at p7-13) (cat-at p6-14)) )
	(when (cat-at p6-14) (oneof (cat-at p5-14) (cat-at p6-13) (cat-at p7-14) (cat-at p6-15)) )
	(when (cat-at p6-15) (oneof (cat-at p5-15) (cat-at p6-14) (cat-at p7-15) (cat-at p6-16)) )
	(when (cat-at p6-16) (oneof (cat-at p5-16) (cat-at p6-15) (cat-at p7-16) (cat-at p6-17)) )
	(when (cat-at p6-17) (oneof (cat-at p5-17) (cat-at p6-16) (cat-at p7-17) (cat-at p6-18)) )
	(when (cat-at p6-18) (oneof (cat-at p5-18) (cat-at p6-17) (cat-at p7-18) (cat-at p6-19)) )
	(when (cat-at p6-19) (oneof (cat-at p5-19) (cat-at p6-18) (cat-at p7-19) (cat-at p6-20)) )
	(when (cat-at p6-20) (oneof (cat-at p5-20) (cat-at p6-19) (cat-at p7-20)) )
	(when (cat-at p7-1) (oneof (cat-at p6-1) (cat-at p8-1) (cat-at p7-2)) )
	(when (cat-at p7-2) (oneof (cat-at p6-2) (cat-at p7-1) (cat-at p8-2) (cat-at p7-3)) )
	(when (cat-at p7-3) (oneof (cat-at p6-3) (cat-at p7-2) (cat-at p8-3) (cat-at p7-4)) )
	(when (cat-at p7-4) (oneof (cat-at p6-4) (cat-at p7-3) (cat-at p8-4) (cat-at p7-5)) )
	(when (cat-at p7-5) (oneof (cat-at p6-5) (cat-at p7-4) (cat-at p8-5) (cat-at p7-6)) )
	(when (cat-at p7-6) (oneof (cat-at p6-6) (cat-at p7-5) (cat-at p8-6) (cat-at p7-7)) )
	(when (cat-at p7-7) (oneof (cat-at p6-7) (cat-at p7-6) (cat-at p8-7) (cat-at p7-8)) )
	(when (cat-at p7-8) (oneof (cat-at p6-8) (cat-at p7-7) (cat-at p8-8) (cat-at p7-9)) )
	(when (cat-at p7-9) (oneof (cat-at p6-9) (cat-at p7-8) (cat-at p8-9) (cat-at p7-10)) )
	(when (cat-at p7-10) (oneof (cat-at p6-10) (cat-at p7-9) (cat-at p8-10) (cat-at p7-11)) )
	(when (cat-at p7-11) (oneof (cat-at p6-11) (cat-at p7-10) (cat-at p8-11) (cat-at p7-12)) )
	(when (cat-at p7-12) (oneof (cat-at p6-12) (cat-at p7-11) (cat-at p8-12) (cat-at p7-13)) )
	(when (cat-at p7-13) (oneof (cat-at p6-13) (cat-at p7-12) (cat-at p8-13) (cat-at p7-14)) )
	(when (cat-at p7-14) (oneof (cat-at p6-14) (cat-at p7-13) (cat-at p8-14) (cat-at p7-15)) )
	(when (cat-at p7-15) (oneof (cat-at p6-15) (cat-at p7-14) (cat-at p8-15) (cat-at p7-16)) )
	(when (cat-at p7-16) (oneof (cat-at p6-16) (cat-at p7-15) (cat-at p8-16) (cat-at p7-17)) )
	(when (cat-at p7-17) (oneof (cat-at p6-17) (cat-at p7-16) (cat-at p8-17) (cat-at p7-18)) )
	(when (cat-at p7-18) (oneof (cat-at p6-18) (cat-at p7-17) (cat-at p8-18) (cat-at p7-19)) )
	(when (cat-at p7-19) (oneof (cat-at p6-19) (cat-at p7-18) (cat-at p8-19) (cat-at p7-20)) )
	(when (cat-at p7-20) (oneof (cat-at p6-20) (cat-at p7-19) (cat-at p8-20)) )
	(when (cat-at p8-1) (oneof (cat-at p7-1) (cat-at p9-1) (cat-at p8-2)) )
	(when (cat-at p8-2) (oneof (cat-at p7-2) (cat-at p8-1) (cat-at p9-2) (cat-at p8-3)) )
	(when (cat-at p8-3) (oneof (cat-at p7-3) (cat-at p8-2) (cat-at p9-3) (cat-at p8-4)) )
	(when (cat-at p8-4) (oneof (cat-at p7-4) (cat-at p8-3) (cat-at p9-4) (cat-at p8-5)) )
	(when (cat-at p8-5) (oneof (cat-at p7-5) (cat-at p8-4) (cat-at p9-5) (cat-at p8-6)) )
	(when (cat-at p8-6) (oneof (cat-at p7-6) (cat-at p8-5) (cat-at p9-6) (cat-at p8-7)) )
	(when (cat-at p8-7) (oneof (cat-at p7-7) (cat-at p8-6) (cat-at p9-7) (cat-at p8-8)) )
	(when (cat-at p8-8) (oneof (cat-at p7-8) (cat-at p8-7) (cat-at p9-8) (cat-at p8-9)) )
	(when (cat-at p8-9) (oneof (cat-at p7-9) (cat-at p8-8) (cat-at p9-9) (cat-at p8-10)) )
	(when (cat-at p8-10) (oneof (cat-at p7-10) (cat-at p8-9) (cat-at p9-10) (cat-at p8-11)) )
	(when (cat-at p8-11) (oneof (cat-at p7-11) (cat-at p8-10) (cat-at p9-11) (cat-at p8-12)) )
	(when (cat-at p8-12) (oneof (cat-at p7-12) (cat-at p8-11) (cat-at p9-12) (cat-at p8-13)) )
	(when (cat-at p8-13) (oneof (cat-at p7-13) (cat-at p8-12) (cat-at p9-13) (cat-at p8-14)) )
	(when (cat-at p8-14) (oneof (cat-at p7-14) (cat-at p8-13) (cat-at p9-14) (cat-at p8-15)) )
	(when (cat-at p8-15) (oneof (cat-at p7-15) (cat-at p8-14) (cat-at p9-15) (cat-at p8-16)) )
	(when (cat-at p8-16) (oneof (cat-at p7-16) (cat-at p8-15) (cat-at p9-16) (cat-at p8-17)) )
	(when (cat-at p8-17) (oneof (cat-at p7-17) (cat-at p8-16) (cat-at p9-17) (cat-at p8-18)) )
	(when (cat-at p8-18) (oneof (cat-at p7-18) (cat-at p8-17) (cat-at p9-18) (cat-at p8-19)) )
	(when (cat-at p8-19) (oneof (cat-at p7-19) (cat-at p8-18) (cat-at p9-19) (cat-at p8-20)) )
	(when (cat-at p8-20) (oneof (cat-at p7-20) (cat-at p8-19) (cat-at p9-20)) )
	(when (cat-at p9-1) (oneof (cat-at p8-1) (cat-at p10-1) (cat-at p9-2)) )
	(when (cat-at p9-2) (oneof (cat-at p8-2) (cat-at p9-1) (cat-at p10-2) (cat-at p9-3)) )
	(when (cat-at p9-3) (oneof (cat-at p8-3) (cat-at p9-2) (cat-at p10-3) (cat-at p9-4)) )
	(when (cat-at p9-4) (oneof (cat-at p8-4) (cat-at p9-3) (cat-at p10-4) (cat-at p9-5)) )
	(when (cat-at p9-5) (oneof (cat-at p8-5) (cat-at p9-4) (cat-at p10-5) (cat-at p9-6)) )
	(when (cat-at p9-6) (oneof (cat-at p8-6) (cat-at p9-5) (cat-at p10-6) (cat-at p9-7)) )
	(when (cat-at p9-7) (oneof (cat-at p8-7) (cat-at p9-6) (cat-at p10-7) (cat-at p9-8)) )
	(when (cat-at p9-8) (oneof (cat-at p8-8) (cat-at p9-7) (cat-at p10-8) (cat-at p9-9)) )
	(when (cat-at p9-9) (oneof (cat-at p8-9) (cat-at p9-8) (cat-at p10-9) (cat-at p9-10)) )
	(when (cat-at p9-10) (oneof (cat-at p8-10) (cat-at p9-9) (cat-at p10-10) (cat-at p9-11)) )
	(when (cat-at p9-11) (oneof (cat-at p8-11) (cat-at p9-10) (cat-at p10-11) (cat-at p9-12)) )
	(when (cat-at p9-12) (oneof (cat-at p8-12) (cat-at p9-11) (cat-at p10-12) (cat-at p9-13)) )
	(when (cat-at p9-13) (oneof (cat-at p8-13) (cat-at p9-12) (cat-at p10-13) (cat-at p9-14)) )
	(when (cat-at p9-14) (oneof (cat-at p8-14) (cat-at p9-13) (cat-at p10-14) (cat-at p9-15)) )
	(when (cat-at p9-15) (oneof (cat-at p8-15) (cat-at p9-14) (cat-at p10-15) (cat-at p9-16)) )
	(when (cat-at p9-16) (oneof (cat-at p8-16) (cat-at p9-15) (cat-at p10-16) (cat-at p9-17)) )
	(when (cat-at p9-17) (oneof (cat-at p8-17) (cat-at p9-16) (cat-at p10-17) (cat-at p9-18)) )
	(when (cat-at p9-18) (oneof (cat-at p8-18) (cat-at p9-17) (cat-at p10-18) (cat-at p9-19)) )
	(when (cat-at p9-19) (oneof (cat-at p8-19) (cat-at p9-18) (cat-at p10-19) (cat-at p9-20)) )
	(when (cat-at p9-20) (oneof (cat-at p8-20) (cat-at p9-19) (cat-at p10-20)) )
	(when (cat-at p10-1) (oneof (cat-at p9-1) (cat-at p11-1) (cat-at p10-2)) )
	(when (cat-at p10-2) (oneof (cat-at p9-2) (cat-at p10-1) (cat-at p11-2) (cat-at p10-3)) )
	(when (cat-at p10-3) (oneof (cat-at p9-3) (cat-at p10-2) (cat-at p11-3) (cat-at p10-4)) )
	(when (cat-at p10-4) (oneof (cat-at p9-4) (cat-at p10-3) (cat-at p11-4) (cat-at p10-5)) )
	(when (cat-at p10-5) (oneof (cat-at p9-5) (cat-at p10-4) (cat-at p11-5) (cat-at p10-6)) )
	(when (cat-at p10-6) (oneof (cat-at p9-6) (cat-at p10-5) (cat-at p11-6) (cat-at p10-7)) )
	(when (cat-at p10-7) (oneof (cat-at p9-7) (cat-at p10-6) (cat-at p11-7) (cat-at p10-8)) )
	(when (cat-at p10-8) (oneof (cat-at p9-8) (cat-at p10-7) (cat-at p11-8) (cat-at p10-9)) )
	(when (cat-at p10-9) (oneof (cat-at p9-9) (cat-at p10-8) (cat-at p11-9) (cat-at p10-10)) )
	(when (cat-at p10-10) (oneof (cat-at p9-10) (cat-at p10-9) (cat-at p11-10) (cat-at p10-11)) )
	(when (cat-at p10-11) (oneof (cat-at p9-11) (cat-at p10-10) (cat-at p11-11) (cat-at p10-12)) )
	(when (cat-at p10-12) (oneof (cat-at p9-12) (cat-at p10-11) (cat-at p11-12) (cat-at p10-13)) )
	(when (cat-at p10-13) (oneof (cat-at p9-13) (cat-at p10-12) (cat-at p11-13) (cat-at p10-14)) )
	(when (cat-at p10-14) (oneof (cat-at p9-14) (cat-at p10-13) (cat-at p11-14) (cat-at p10-15)) )
	(when (cat-at p10-15) (oneof (cat-at p9-15) (cat-at p10-14) (cat-at p11-15) (cat-at p10-16)) )
	(when (cat-at p10-16) (oneof (cat-at p9-16) (cat-at p10-15) (cat-at p11-16) (cat-at p10-17)) )
	(when (cat-at p10-17) (oneof (cat-at p9-17) (cat-at p10-16) (cat-at p11-17) (cat-at p10-18)) )
	(when (cat-at p10-18) (oneof (cat-at p9-18) (cat-at p10-17) (cat-at p11-18) (cat-at p10-19)) )
	(when (cat-at p10-19) (oneof (cat-at p9-19) (cat-at p10-18) (cat-at p11-19) (cat-at p10-20)) )
	(when (cat-at p10-20) (oneof (cat-at p9-20) (cat-at p10-19) (cat-at p11-20)) )
	(when (cat-at p11-1) (oneof (cat-at p10-1) (cat-at p12-1) (cat-at p11-2)) )
	(when (cat-at p11-2) (oneof (cat-at p10-2) (cat-at p11-1) (cat-at p12-2) (cat-at p11-3)) )
	(when (cat-at p11-3) (oneof (cat-at p10-3) (cat-at p11-2) (cat-at p12-3) (cat-at p11-4)) )
	(when (cat-at p11-4) (oneof (cat-at p10-4) (cat-at p11-3) (cat-at p12-4) (cat-at p11-5)) )
	(when (cat-at p11-5) (oneof (cat-at p10-5) (cat-at p11-4) (cat-at p12-5) (cat-at p11-6)) )
	(when (cat-at p11-6) (oneof (cat-at p10-6) (cat-at p11-5) (cat-at p12-6) (cat-at p11-7)) )
	(when (cat-at p11-7) (oneof (cat-at p10-7) (cat-at p11-6) (cat-at p12-7) (cat-at p11-8)) )
	(when (cat-at p11-8) (oneof (cat-at p10-8) (cat-at p11-7) (cat-at p12-8) (cat-at p11-9)) )
	(when (cat-at p11-9) (oneof (cat-at p10-9) (cat-at p11-8) (cat-at p12-9) (cat-at p11-10)) )
	(when (cat-at p11-10) (oneof (cat-at p10-10) (cat-at p11-9) (cat-at p12-10) (cat-at p11-11)) )
	(when (cat-at p11-11) (oneof (cat-at p10-11) (cat-at p11-10) (cat-at p12-11) (cat-at p11-12)) )
	(when (cat-at p11-12) (oneof (cat-at p10-12) (cat-at p11-11) (cat-at p12-12) (cat-at p11-13)) )
	(when (cat-at p11-13) (oneof (cat-at p10-13) (cat-at p11-12) (cat-at p12-13) (cat-at p11-14)) )
	(when (cat-at p11-14) (oneof (cat-at p10-14) (cat-at p11-13) (cat-at p12-14) (cat-at p11-15)) )
	(when (cat-at p11-15) (oneof (cat-at p10-15) (cat-at p11-14) (cat-at p12-15) (cat-at p11-16)) )
	(when (cat-at p11-16) (oneof (cat-at p10-16) (cat-at p11-15) (cat-at p12-16) (cat-at p11-17)) )
	(when (cat-at p11-17) (oneof (cat-at p10-17) (cat-at p11-16) (cat-at p12-17) (cat-at p11-18)) )
	(when (cat-at p11-18) (oneof (cat-at p10-18) (cat-at p11-17) (cat-at p12-18) (cat-at p11-19)) )
	(when (cat-at p11-19) (oneof (cat-at p10-19) (cat-at p11-18) (cat-at p12-19) (cat-at p11-20)) )
	(when (cat-at p11-20) (oneof (cat-at p10-20) (cat-at p11-19) (cat-at p12-20)) )
	(when (cat-at p12-1) (oneof (cat-at p11-1) (cat-at p13-1) (cat-at p12-2)) )
	(when (cat-at p12-2) (oneof (cat-at p11-2) (cat-at p12-1) (cat-at p13-2) (cat-at p12-3)) )
	(when (cat-at p12-3) (oneof (cat-at p11-3) (cat-at p12-2) (cat-at p13-3) (cat-at p12-4)) )
	(when (cat-at p12-4) (oneof (cat-at p11-4) (cat-at p12-3) (cat-at p13-4) (cat-at p12-5)) )
	(when (cat-at p12-5) (oneof (cat-at p11-5) (cat-at p12-4) (cat-at p13-5) (cat-at p12-6)) )
	(when (cat-at p12-6) (oneof (cat-at p11-6) (cat-at p12-5) (cat-at p13-6) (cat-at p12-7)) )
	(when (cat-at p12-7) (oneof (cat-at p11-7) (cat-at p12-6) (cat-at p13-7) (cat-at p12-8)) )
	(when (cat-at p12-8) (oneof (cat-at p11-8) (cat-at p12-7) (cat-at p13-8) (cat-at p12-9)) )
	(when (cat-at p12-9) (oneof (cat-at p11-9) (cat-at p12-8) (cat-at p13-9) (cat-at p12-10)) )
	(when (cat-at p12-10) (oneof (cat-at p11-10) (cat-at p12-9) (cat-at p13-10) (cat-at p12-11)) )
	(when (cat-at p12-11) (oneof (cat-at p11-11) (cat-at p12-10) (cat-at p13-11) (cat-at p12-12)) )
	(when (cat-at p12-12) (oneof (cat-at p11-12) (cat-at p12-11) (cat-at p13-12) (cat-at p12-13)) )
	(when (cat-at p12-13) (oneof (cat-at p11-13) (cat-at p12-12) (cat-at p13-13) (cat-at p12-14)) )
	(when (cat-at p12-14) (oneof (cat-at p11-14) (cat-at p12-13) (cat-at p13-14) (cat-at p12-15)) )
	(when (cat-at p12-15) (oneof (cat-at p11-15) (cat-at p12-14) (cat-at p13-15) (cat-at p12-16)) )
	(when (cat-at p12-16) (oneof (cat-at p11-16) (cat-at p12-15) (cat-at p13-16) (cat-at p12-17)) )
	(when (cat-at p12-17) (oneof (cat-at p11-17) (cat-at p12-16) (cat-at p13-17) (cat-at p12-18)) )
	(when (cat-at p12-18) (oneof (cat-at p11-18) (cat-at p12-17) (cat-at p13-18) (cat-at p12-19)) )
	(when (cat-at p12-19) (oneof (cat-at p11-19) (cat-at p12-18) (cat-at p13-19) (cat-at p12-20)) )
	(when (cat-at p12-20) (oneof (cat-at p11-20) (cat-at p12-19) (cat-at p13-20)) )
	(when (cat-at p13-1) (oneof (cat-at p12-1) (cat-at p14-1) (cat-at p13-2)) )
	(when (cat-at p13-2) (oneof (cat-at p12-2) (cat-at p13-1) (cat-at p14-2) (cat-at p13-3)) )
	(when (cat-at p13-3) (oneof (cat-at p12-3) (cat-at p13-2) (cat-at p14-3) (cat-at p13-4)) )
	(when (cat-at p13-4) (oneof (cat-at p12-4) (cat-at p13-3) (cat-at p14-4) (cat-at p13-5)) )
	(when (cat-at p13-5) (oneof (cat-at p12-5) (cat-at p13-4) (cat-at p14-5) (cat-at p13-6)) )
	(when (cat-at p13-6) (oneof (cat-at p12-6) (cat-at p13-5) (cat-at p14-6) (cat-at p13-7)) )
	(when (cat-at p13-7) (oneof (cat-at p12-7) (cat-at p13-6) (cat-at p14-7) (cat-at p13-8)) )
	(when (cat-at p13-8) (oneof (cat-at p12-8) (cat-at p13-7) (cat-at p14-8) (cat-at p13-9)) )
	(when (cat-at p13-9) (oneof (cat-at p12-9) (cat-at p13-8) (cat-at p14-9) (cat-at p13-10)) )
	(when (cat-at p13-10) (oneof (cat-at p12-10) (cat-at p13-9) (cat-at p14-10) (cat-at p13-11)) )
	(when (cat-at p13-11) (oneof (cat-at p12-11) (cat-at p13-10) (cat-at p14-11) (cat-at p13-12)) )
	(when (cat-at p13-12) (oneof (cat-at p12-12) (cat-at p13-11) (cat-at p14-12) (cat-at p13-13)) )
	(when (cat-at p13-13) (oneof (cat-at p12-13) (cat-at p13-12) (cat-at p14-13) (cat-at p13-14)) )
	(when (cat-at p13-14) (oneof (cat-at p12-14) (cat-at p13-13) (cat-at p14-14) (cat-at p13-15)) )
	(when (cat-at p13-15) (oneof (cat-at p12-15) (cat-at p13-14) (cat-at p14-15) (cat-at p13-16)) )
	(when (cat-at p13-16) (oneof (cat-at p12-16) (cat-at p13-15) (cat-at p14-16) (cat-at p13-17)) )
	(when (cat-at p13-17) (oneof (cat-at p12-17) (cat-at p13-16) (cat-at p14-17) (cat-at p13-18)) )
	(when (cat-at p13-18) (oneof (cat-at p12-18) (cat-at p13-17) (cat-at p14-18) (cat-at p13-19)) )
	(when (cat-at p13-19) (oneof (cat-at p12-19) (cat-at p13-18) (cat-at p14-19) (cat-at p13-20)) )
	(when (cat-at p13-20) (oneof (cat-at p12-20) (cat-at p13-19) (cat-at p14-20)) )
	(when (cat-at p14-1) (oneof (cat-at p13-1) (cat-at p15-1) (cat-at p14-2)) )
	(when (cat-at p14-2) (oneof (cat-at p13-2) (cat-at p14-1) (cat-at p15-2) (cat-at p14-3)) )
	(when (cat-at p14-3) (oneof (cat-at p13-3) (cat-at p14-2) (cat-at p15-3) (cat-at p14-4)) )
	(when (cat-at p14-4) (oneof (cat-at p13-4) (cat-at p14-3) (cat-at p15-4) (cat-at p14-5)) )
	(when (cat-at p14-5) (oneof (cat-at p13-5) (cat-at p14-4) (cat-at p15-5) (cat-at p14-6)) )
	(when (cat-at p14-6) (oneof (cat-at p13-6) (cat-at p14-5) (cat-at p15-6) (cat-at p14-7)) )
	(when (cat-at p14-7) (oneof (cat-at p13-7) (cat-at p14-6) (cat-at p15-7) (cat-at p14-8)) )
	(when (cat-at p14-8) (oneof (cat-at p13-8) (cat-at p14-7) (cat-at p15-8) (cat-at p14-9)) )
	(when (cat-at p14-9) (oneof (cat-at p13-9) (cat-at p14-8) (cat-at p15-9) (cat-at p14-10)) )
	(when (cat-at p14-10) (oneof (cat-at p13-10) (cat-at p14-9) (cat-at p15-10) (cat-at p14-11)) )
	(when (cat-at p14-11) (oneof (cat-at p13-11) (cat-at p14-10) (cat-at p15-11) (cat-at p14-12)) )
	(when (cat-at p14-12) (oneof (cat-at p13-12) (cat-at p14-11) (cat-at p15-12) (cat-at p14-13)) )
	(when (cat-at p14-13) (oneof (cat-at p13-13) (cat-at p14-12) (cat-at p15-13) (cat-at p14-14)) )
	(when (cat-at p14-14) (oneof (cat-at p13-14) (cat-at p14-13) (cat-at p15-14) (cat-at p14-15)) )
	(when (cat-at p14-15) (oneof (cat-at p13-15) (cat-at p14-14) (cat-at p15-15) (cat-at p14-16)) )
	(when (cat-at p14-16) (oneof (cat-at p13-16) (cat-at p14-15) (cat-at p15-16) (cat-at p14-17)) )
	(when (cat-at p14-17) (oneof (cat-at p13-17) (cat-at p14-16) (cat-at p15-17) (cat-at p14-18)) )
	(when (cat-at p14-18) (oneof (cat-at p13-18) (cat-at p14-17) (cat-at p15-18) (cat-at p14-19)) )
	(when (cat-at p14-19) (oneof (cat-at p13-19) (cat-at p14-18) (cat-at p15-19) (cat-at p14-20)) )
	(when (cat-at p14-20) (oneof (cat-at p13-20) (cat-at p14-19) (cat-at p15-20)) )
	(when (cat-at p15-1) (oneof (cat-at p14-1) (cat-at p16-1) (cat-at p15-2)) )
	(when (cat-at p15-2) (oneof (cat-at p14-2) (cat-at p15-1) (cat-at p16-2) (cat-at p15-3)) )
	(when (cat-at p15-3) (oneof (cat-at p14-3) (cat-at p15-2) (cat-at p16-3) (cat-at p15-4)) )
	(when (cat-at p15-4) (oneof (cat-at p14-4) (cat-at p15-3) (cat-at p16-4) (cat-at p15-5)) )
	(when (cat-at p15-5) (oneof (cat-at p14-5) (cat-at p15-4) (cat-at p16-5) (cat-at p15-6)) )
	(when (cat-at p15-6) (oneof (cat-at p14-6) (cat-at p15-5) (cat-at p16-6) (cat-at p15-7)) )
	(when (cat-at p15-7) (oneof (cat-at p14-7) (cat-at p15-6) (cat-at p16-7) (cat-at p15-8)) )
	(when (cat-at p15-8) (oneof (cat-at p14-8) (cat-at p15-7) (cat-at p16-8) (cat-at p15-9)) )
	(when (cat-at p15-9) (oneof (cat-at p14-9) (cat-at p15-8) (cat-at p16-9) (cat-at p15-10)) )
	(when (cat-at p15-10) (oneof (cat-at p14-10) (cat-at p15-9) (cat-at p16-10) (cat-at p15-11)) )
	(when (cat-at p15-11) (oneof (cat-at p14-11) (cat-at p15-10) (cat-at p16-11) (cat-at p15-12)) )
	(when (cat-at p15-12) (oneof (cat-at p14-12) (cat-at p15-11) (cat-at p16-12) (cat-at p15-13)) )
	(when (cat-at p15-13) (oneof (cat-at p14-13) (cat-at p15-12) (cat-at p16-13) (cat-at p15-14)) )
	(when (cat-at p15-14) (oneof (cat-at p14-14) (cat-at p15-13) (cat-at p16-14) (cat-at p15-15)) )
	(when (cat-at p15-15) (oneof (cat-at p14-15) (cat-at p15-14) (cat-at p16-15) (cat-at p15-16)) )
	(when (cat-at p15-16) (oneof (cat-at p14-16) (cat-at p15-15) (cat-at p16-16) (cat-at p15-17)) )
	(when (cat-at p15-17) (oneof (cat-at p14-17) (cat-at p15-16) (cat-at p16-17) (cat-at p15-18)) )
	(when (cat-at p15-18) (oneof (cat-at p14-18) (cat-at p15-17) (cat-at p16-18) (cat-at p15-19)) )
	(when (cat-at p15-19) (oneof (cat-at p14-19) (cat-at p15-18) (cat-at p16-19) (cat-at p15-20)) )
	(when (cat-at p15-20) (oneof (cat-at p14-20) (cat-at p15-19) (cat-at p16-20)) )
	(when (cat-at p16-1) (oneof (cat-at p15-1) (cat-at p17-1) (cat-at p16-2)) )
	(when (cat-at p16-2) (oneof (cat-at p15-2) (cat-at p16-1) (cat-at p17-2) (cat-at p16-3)) )
	(when (cat-at p16-3) (oneof (cat-at p15-3) (cat-at p16-2) (cat-at p17-3) (cat-at p16-4)) )
	(when (cat-at p16-4) (oneof (cat-at p15-4) (cat-at p16-3) (cat-at p17-4) (cat-at p16-5)) )
	(when (cat-at p16-5) (oneof (cat-at p15-5) (cat-at p16-4) (cat-at p17-5) (cat-at p16-6)) )
	(when (cat-at p16-6) (oneof (cat-at p15-6) (cat-at p16-5) (cat-at p17-6) (cat-at p16-7)) )
	(when (cat-at p16-7) (oneof (cat-at p15-7) (cat-at p16-6) (cat-at p17-7) (cat-at p16-8)) )
	(when (cat-at p16-8) (oneof (cat-at p15-8) (cat-at p16-7) (cat-at p17-8) (cat-at p16-9)) )
	(when (cat-at p16-9) (oneof (cat-at p15-9) (cat-at p16-8) (cat-at p17-9) (cat-at p16-10)) )
	(when (cat-at p16-10) (oneof (cat-at p15-10) (cat-at p16-9) (cat-at p17-10) (cat-at p16-11)) )
	(when (cat-at p16-11) (oneof (cat-at p15-11) (cat-at p16-10) (cat-at p17-11) (cat-at p16-12)) )
	(when (cat-at p16-12) (oneof (cat-at p15-12) (cat-at p16-11) (cat-at p17-12) (cat-at p16-13)) )
	(when (cat-at p16-13) (oneof (cat-at p15-13) (cat-at p16-12) (cat-at p17-13) (cat-at p16-14)) )
	(when (cat-at p16-14) (oneof (cat-at p15-14) (cat-at p16-13) (cat-at p17-14) (cat-at p16-15)) )
	(when (cat-at p16-15) (oneof (cat-at p15-15) (cat-at p16-14) (cat-at p17-15) (cat-at p16-16)) )
	(when (cat-at p16-16) (oneof (cat-at p15-16) (cat-at p16-15) (cat-at p17-16) (cat-at p16-17)) )
	(when (cat-at p16-17) (oneof (cat-at p15-17) (cat-at p16-16) (cat-at p17-17) (cat-at p16-18)) )
	(when (cat-at p16-18) (oneof (cat-at p15-18) (cat-at p16-17) (cat-at p17-18) (cat-at p16-19)) )
	(when (cat-at p16-19) (oneof (cat-at p15-19) (cat-at p16-18) (cat-at p17-19) (cat-at p16-20)) )
	(when (cat-at p16-20) (oneof (cat-at p15-20) (cat-at p16-19) (cat-at p17-20)) )
	(when (cat-at p17-1) (oneof (cat-at p16-1) (cat-at p18-1) (cat-at p17-2)) )
	(when (cat-at p17-2) (oneof (cat-at p16-2) (cat-at p17-1) (cat-at p18-2) (cat-at p17-3)) )
	(when (cat-at p17-3) (oneof (cat-at p16-3) (cat-at p17-2) (cat-at p18-3) (cat-at p17-4)) )
	(when (cat-at p17-4) (oneof (cat-at p16-4) (cat-at p17-3) (cat-at p18-4) (cat-at p17-5)) )
	(when (cat-at p17-5) (oneof (cat-at p16-5) (cat-at p17-4) (cat-at p18-5) (cat-at p17-6)) )
	(when (cat-at p17-6) (oneof (cat-at p16-6) (cat-at p17-5) (cat-at p18-6) (cat-at p17-7)) )
	(when (cat-at p17-7) (oneof (cat-at p16-7) (cat-at p17-6) (cat-at p18-7) (cat-at p17-8)) )
	(when (cat-at p17-8) (oneof (cat-at p16-8) (cat-at p17-7) (cat-at p18-8) (cat-at p17-9)) )
	(when (cat-at p17-9) (oneof (cat-at p16-9) (cat-at p17-8) (cat-at p18-9) (cat-at p17-10)) )
	(when (cat-at p17-10) (oneof (cat-at p16-10) (cat-at p17-9) (cat-at p18-10) (cat-at p17-11)) )
	(when (cat-at p17-11) (oneof (cat-at p16-11) (cat-at p17-10) (cat-at p18-11) (cat-at p17-12)) )
	(when (cat-at p17-12) (oneof (cat-at p16-12) (cat-at p17-11) (cat-at p18-12) (cat-at p17-13)) )
	(when (cat-at p17-13) (oneof (cat-at p16-13) (cat-at p17-12) (cat-at p18-13) (cat-at p17-14)) )
	(when (cat-at p17-14) (oneof (cat-at p16-14) (cat-at p17-13) (cat-at p18-14) (cat-at p17-15)) )
	(when (cat-at p17-15) (oneof (cat-at p16-15) (cat-at p17-14) (cat-at p18-15) (cat-at p17-16)) )
	(when (cat-at p17-16) (oneof (cat-at p16-16) (cat-at p17-15) (cat-at p18-16) (cat-at p17-17)) )
	(when (cat-at p17-17) (oneof (cat-at p16-17) (cat-at p17-16) (cat-at p18-17) (cat-at p17-18)) )
	(when (cat-at p17-18) (oneof (cat-at p16-18) (cat-at p17-17) (cat-at p18-18) (cat-at p17-19)) )
	(when (cat-at p17-19) (oneof (cat-at p16-19) (cat-at p17-18) (cat-at p18-19) (cat-at p17-20)) )
	(when (cat-at p17-20) (oneof (cat-at p16-20) (cat-at p17-19) (cat-at p18-20)) )
	(when (cat-at p18-1) (oneof (cat-at p17-1) (cat-at p19-1) (cat-at p18-2)) )
	(when (cat-at p18-2) (oneof (cat-at p17-2) (cat-at p18-1) (cat-at p19-2) (cat-at p18-3)) )
	(when (cat-at p18-3) (oneof (cat-at p17-3) (cat-at p18-2) (cat-at p19-3) (cat-at p18-4)) )
	(when (cat-at p18-4) (oneof (cat-at p17-4) (cat-at p18-3) (cat-at p19-4) (cat-at p18-5)) )
	(when (cat-at p18-5) (oneof (cat-at p17-5) (cat-at p18-4) (cat-at p19-5) (cat-at p18-6)) )
	(when (cat-at p18-6) (oneof (cat-at p17-6) (cat-at p18-5) (cat-at p19-6) (cat-at p18-7)) )
	(when (cat-at p18-7) (oneof (cat-at p17-7) (cat-at p18-6) (cat-at p19-7) (cat-at p18-8)) )
	(when (cat-at p18-8) (oneof (cat-at p17-8) (cat-at p18-7) (cat-at p19-8) (cat-at p18-9)) )
	(when (cat-at p18-9) (oneof (cat-at p17-9) (cat-at p18-8) (cat-at p19-9) (cat-at p18-10)) )
	(when (cat-at p18-10) (oneof (cat-at p17-10) (cat-at p18-9) (cat-at p19-10) (cat-at p18-11)) )
	(when (cat-at p18-11) (oneof (cat-at p17-11) (cat-at p18-10) (cat-at p19-11) (cat-at p18-12)) )
	(when (cat-at p18-12) (oneof (cat-at p17-12) (cat-at p18-11) (cat-at p19-12) (cat-at p18-13)) )
	(when (cat-at p18-13) (oneof (cat-at p17-13) (cat-at p18-12) (cat-at p19-13) (cat-at p18-14)) )
	(when (cat-at p18-14) (oneof (cat-at p17-14) (cat-at p18-13) (cat-at p19-14) (cat-at p18-15)) )
	(when (cat-at p18-15) (oneof (cat-at p17-15) (cat-at p18-14) (cat-at p19-15) (cat-at p18-16)) )
	(when (cat-at p18-16) (oneof (cat-at p17-16) (cat-at p18-15) (cat-at p19-16) (cat-at p18-17)) )
	(when (cat-at p18-17) (oneof (cat-at p17-17) (cat-at p18-16) (cat-at p19-17) (cat-at p18-18)) )
	(when (cat-at p18-18) (oneof (cat-at p17-18) (cat-at p18-17) (cat-at p19-18) (cat-at p18-19)) )
	(when (cat-at p18-19) (oneof (cat-at p17-19) (cat-at p18-18) (cat-at p19-19) (cat-at p18-20)) )
	(when (cat-at p18-20) (oneof (cat-at p17-20) (cat-at p18-19) (cat-at p19-20)) )
	(when (cat-at p19-1) (oneof (cat-at p18-1) (cat-at p20-1) (cat-at p19-2)) )
	(when (cat-at p19-2) (oneof (cat-at p18-2) (cat-at p19-1) (cat-at p20-2) (cat-at p19-3)) )
	(when (cat-at p19-3) (oneof (cat-at p18-3) (cat-at p19-2) (cat-at p20-3) (cat-at p19-4)) )
	(when (cat-at p19-4) (oneof (cat-at p18-4) (cat-at p19-3) (cat-at p20-4) (cat-at p19-5)) )
	(when (cat-at p19-5) (oneof (cat-at p18-5) (cat-at p19-4) (cat-at p20-5) (cat-at p19-6)) )
	(when (cat-at p19-6) (oneof (cat-at p18-6) (cat-at p19-5) (cat-at p20-6) (cat-at p19-7)) )
	(when (cat-at p19-7) (oneof (cat-at p18-7) (cat-at p19-6) (cat-at p20-7) (cat-at p19-8)) )
	(when (cat-at p19-8) (oneof (cat-at p18-8) (cat-at p19-7) (cat-at p20-8) (cat-at p19-9)) )
	(when (cat-at p19-9) (oneof (cat-at p18-9) (cat-at p19-8) (cat-at p20-9) (cat-at p19-10)) )
	(when (cat-at p19-10) (oneof (cat-at p18-10) (cat-at p19-9) (cat-at p20-10) (cat-at p19-11)) )
	(when (cat-at p19-11) (oneof (cat-at p18-11) (cat-at p19-10) (cat-at p20-11) (cat-at p19-12)) )
	(when (cat-at p19-12) (oneof (cat-at p18-12) (cat-at p19-11) (cat-at p20-12) (cat-at p19-13)) )
	(when (cat-at p19-13) (oneof (cat-at p18-13) (cat-at p19-12) (cat-at p20-13) (cat-at p19-14)) )
	(when (cat-at p19-14) (oneof (cat-at p18-14) (cat-at p19-13) (cat-at p20-14) (cat-at p19-15)) )
	(when (cat-at p19-15) (oneof (cat-at p18-15) (cat-at p19-14) (cat-at p20-15) (cat-at p19-16)) )
	(when (cat-at p19-16) (oneof (cat-at p18-16) (cat-at p19-15) (cat-at p20-16) (cat-at p19-17)) )
	(when (cat-at p19-17) (oneof (cat-at p18-17) (cat-at p19-16) (cat-at p20-17) (cat-at p19-18)) )
	(when (cat-at p19-18) (oneof (cat-at p18-18) (cat-at p19-17) (cat-at p20-18) (cat-at p19-19)) )
	(when (cat-at p19-19) (oneof (cat-at p18-19) (cat-at p19-18) (cat-at p20-19) (cat-at p19-20)) )
	(when (cat-at p19-20) (oneof (cat-at p18-20) (cat-at p19-19) (cat-at p20-20)) )
	(when (cat-at p20-1) (oneof (cat-at p19-1) (cat-at p20-2)) )
	(when (cat-at p20-2) (oneof (cat-at p19-2) (cat-at p20-1) (cat-at p20-3)) )
	(when (cat-at p20-3) (oneof (cat-at p19-3) (cat-at p20-2) (cat-at p20-4)) )
	(when (cat-at p20-4) (oneof (cat-at p19-4) (cat-at p20-3) (cat-at p20-5)) )
	(when (cat-at p20-5) (oneof (cat-at p19-5) (cat-at p20-4) (cat-at p20-6)) )
	(when (cat-at p20-6) (oneof (cat-at p19-6) (cat-at p20-5) (cat-at p20-7)) )
	(when (cat-at p20-7) (oneof (cat-at p19-7) (cat-at p20-6) (cat-at p20-8)) )
	(when (cat-at p20-8) (oneof (cat-at p19-8) (cat-at p20-7) (cat-at p20-9)) )
	(when (cat-at p20-9) (oneof (cat-at p19-9) (cat-at p20-8) (cat-at p20-10)) )
	(when (cat-at p20-10) (oneof (cat-at p19-10) (cat-at p20-9) (cat-at p20-11)) )
	(when (cat-at p20-11) (oneof (cat-at p19-11) (cat-at p20-10) (cat-at p20-12)) )
	(when (cat-at p20-12) (oneof (cat-at p19-12) (cat-at p20-11) (cat-at p20-13)) )
	(when (cat-at p20-13) (oneof (cat-at p19-13) (cat-at p20-12) (cat-at p20-14)) )
	(when (cat-at p20-14) (oneof (cat-at p19-14) (cat-at p20-13) (cat-at p20-15)) )
	(when (cat-at p20-15) (oneof (cat-at p19-15) (cat-at p20-14) (cat-at p20-16)) )
	(when (cat-at p20-16) (oneof (cat-at p19-16) (cat-at p20-15) (cat-at p20-17)) )
	(when (cat-at p20-17) (oneof (cat-at p19-17) (cat-at p20-16) (cat-at p20-18)) )
	(when (cat-at p20-18) (oneof (cat-at p19-18) (cat-at p20-17) (cat-at p20-19)) )
	(when (cat-at p20-19) (oneof (cat-at p19-19) (cat-at p20-18) (cat-at p20-20)) )
	(when (cat-at p20-20) (oneof (cat-at p19-20) (cat-at p20-19)) )   )
)
 
   (:action mouse-move
      :parameters (?i ?j - pos )
      :precondition (and (mouse-at ?i) (adj ?i ?j) (mouse-turn)) 
      :effect (and (not (mouse-turn))
      	      (when  (mouse-at ?i)  (and (mouse-at ?j) (not (mouse-at ?i)) ))
))

   (:action pickup 
     :parameters  (?i - pos )
     :precondition (and (cheese-at ?i) (mouse-at ?i) (mouse-turn) )
     :effect  (when (and (mouse-at ?i) (not (cat-at ?i)) ) (and (not (cheese-at ?i)) (have-cheese)))
   )
)

