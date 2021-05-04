
(define (domain mouseandcat) 

   (:requirements :strips :typing)
   (:types pos )
      

 (:constants
    p1_1
    p1_2
    p1_3
    p1_4
    p1_5
    p1_6
    p1_7
    p1_8
    p1_9
    p1_10
    p1_11
    p1_12
    p1_13
    p1_14
    p1_15
    p1_16
    p1_17
    p1_18
    p1_19
    p1_20
    p1_21
    p1_22
    p1_23
    p1_24
    p1_25
    p1_26
    p1_27
    p1_28
    p1_29
    p1_30
    p1_31
    p1_32
    p1_33
    p1_34
    p1_35
    p1_36
    p1_37
    p1_38
    p1_39
    p1_40
    p2_1
    p2_2
    p2_3
    p2_4
    p2_5
    p2_6
    p2_7
    p2_8
    p2_9
    p2_10
    p2_11
    p2_12
    p2_13
    p2_14
    p2_15
    p2_16
    p2_17
    p2_18
    p2_19
    p2_20
    p2_21
    p2_22
    p2_23
    p2_24
    p2_25
    p2_26
    p2_27
    p2_28
    p2_29
    p2_30
    p2_31
    p2_32
    p2_33
    p2_34
    p2_35
    p2_36
    p2_37
    p2_38
    p2_39
    p2_40
    p3_1
    p3_2
    p3_3
    p3_4
    p3_5
    p3_6
    p3_7
    p3_8
    p3_9
    p3_10
    p3_11
    p3_12
    p3_13
    p3_14
    p3_15
    p3_16
    p3_17
    p3_18
    p3_19
    p3_20
    p3_21
    p3_22
    p3_23
    p3_24
    p3_25
    p3_26
    p3_27
    p3_28
    p3_29
    p3_30
    p3_31
    p3_32
    p3_33
    p3_34
    p3_35
    p3_36
    p3_37
    p3_38
    p3_39
    p3_40
    p4_1
    p4_2
    p4_3
    p4_4
    p4_5
    p4_6
    p4_7
    p4_8
    p4_9
    p4_10
    p4_11
    p4_12
    p4_13
    p4_14
    p4_15
    p4_16
    p4_17
    p4_18
    p4_19
    p4_20
    p4_21
    p4_22
    p4_23
    p4_24
    p4_25
    p4_26
    p4_27
    p4_28
    p4_29
    p4_30
    p4_31
    p4_32
    p4_33
    p4_34
    p4_35
    p4_36
    p4_37
    p4_38
    p4_39
    p4_40
    p5_1
    p5_2
    p5_3
    p5_4
    p5_5
    p5_6
    p5_7
    p5_8
    p5_9
    p5_10
    p5_11
    p5_12
    p5_13
    p5_14
    p5_15
    p5_16
    p5_17
    p5_18
    p5_19
    p5_20
    p5_21
    p5_22
    p5_23
    p5_24
    p5_25
    p5_26
    p5_27
    p5_28
    p5_29
    p5_30
    p5_31
    p5_32
    p5_33
    p5_34
    p5_35
    p5_36
    p5_37
    p5_38
    p5_39
    p5_40
    p6_1
    p6_2
    p6_3
    p6_4
    p6_5
    p6_6
    p6_7
    p6_8
    p6_9
    p6_10
    p6_11
    p6_12
    p6_13
    p6_14
    p6_15
    p6_16
    p6_17
    p6_18
    p6_19
    p6_20
    p6_21
    p6_22
    p6_23
    p6_24
    p6_25
    p6_26
    p6_27
    p6_28
    p6_29
    p6_30
    p6_31
    p6_32
    p6_33
    p6_34
    p6_35
    p6_36
    p6_37
    p6_38
    p6_39
    p6_40
    p7_1
    p7_2
    p7_3
    p7_4
    p7_5
    p7_6
    p7_7
    p7_8
    p7_9
    p7_10
    p7_11
    p7_12
    p7_13
    p7_14
    p7_15
    p7_16
    p7_17
    p7_18
    p7_19
    p7_20
    p7_21
    p7_22
    p7_23
    p7_24
    p7_25
    p7_26
    p7_27
    p7_28
    p7_29
    p7_30
    p7_31
    p7_32
    p7_33
    p7_34
    p7_35
    p7_36
    p7_37
    p7_38
    p7_39
    p7_40
    p8_1
    p8_2
    p8_3
    p8_4
    p8_5
    p8_6
    p8_7
    p8_8
    p8_9
    p8_10
    p8_11
    p8_12
    p8_13
    p8_14
    p8_15
    p8_16
    p8_17
    p8_18
    p8_19
    p8_20
    p8_21
    p8_22
    p8_23
    p8_24
    p8_25
    p8_26
    p8_27
    p8_28
    p8_29
    p8_30
    p8_31
    p8_32
    p8_33
    p8_34
    p8_35
    p8_36
    p8_37
    p8_38
    p8_39
    p8_40
    p9_1
    p9_2
    p9_3
    p9_4
    p9_5
    p9_6
    p9_7
    p9_8
    p9_9
    p9_10
    p9_11
    p9_12
    p9_13
    p9_14
    p9_15
    p9_16
    p9_17
    p9_18
    p9_19
    p9_20
    p9_21
    p9_22
    p9_23
    p9_24
    p9_25
    p9_26
    p9_27
    p9_28
    p9_29
    p9_30
    p9_31
    p9_32
    p9_33
    p9_34
    p9_35
    p9_36
    p9_37
    p9_38
    p9_39
    p9_40
    p10_1
    p10_2
    p10_3
    p10_4
    p10_5
    p10_6
    p10_7
    p10_8
    p10_9
    p10_10
    p10_11
    p10_12
    p10_13
    p10_14
    p10_15
    p10_16
    p10_17
    p10_18
    p10_19
    p10_20
    p10_21
    p10_22
    p10_23
    p10_24
    p10_25
    p10_26
    p10_27
    p10_28
    p10_29
    p10_30
    p10_31
    p10_32
    p10_33
    p10_34
    p10_35
    p10_36
    p10_37
    p10_38
    p10_39
    p10_40
    p11_1
    p11_2
    p11_3
    p11_4
    p11_5
    p11_6
    p11_7
    p11_8
    p11_9
    p11_10
    p11_11
    p11_12
    p11_13
    p11_14
    p11_15
    p11_16
    p11_17
    p11_18
    p11_19
    p11_20
    p11_21
    p11_22
    p11_23
    p11_24
    p11_25
    p11_26
    p11_27
    p11_28
    p11_29
    p11_30
    p11_31
    p11_32
    p11_33
    p11_34
    p11_35
    p11_36
    p11_37
    p11_38
    p11_39
    p11_40
    p12_1
    p12_2
    p12_3
    p12_4
    p12_5
    p12_6
    p12_7
    p12_8
    p12_9
    p12_10
    p12_11
    p12_12
    p12_13
    p12_14
    p12_15
    p12_16
    p12_17
    p12_18
    p12_19
    p12_20
    p12_21
    p12_22
    p12_23
    p12_24
    p12_25
    p12_26
    p12_27
    p12_28
    p12_29
    p12_30
    p12_31
    p12_32
    p12_33
    p12_34
    p12_35
    p12_36
    p12_37
    p12_38
    p12_39
    p12_40
    p13_1
    p13_2
    p13_3
    p13_4
    p13_5
    p13_6
    p13_7
    p13_8
    p13_9
    p13_10
    p13_11
    p13_12
    p13_13
    p13_14
    p13_15
    p13_16
    p13_17
    p13_18
    p13_19
    p13_20
    p13_21
    p13_22
    p13_23
    p13_24
    p13_25
    p13_26
    p13_27
    p13_28
    p13_29
    p13_30
    p13_31
    p13_32
    p13_33
    p13_34
    p13_35
    p13_36
    p13_37
    p13_38
    p13_39
    p13_40
    p14_1
    p14_2
    p14_3
    p14_4
    p14_5
    p14_6
    p14_7
    p14_8
    p14_9
    p14_10
    p14_11
    p14_12
    p14_13
    p14_14
    p14_15
    p14_16
    p14_17
    p14_18
    p14_19
    p14_20
    p14_21
    p14_22
    p14_23
    p14_24
    p14_25
    p14_26
    p14_27
    p14_28
    p14_29
    p14_30
    p14_31
    p14_32
    p14_33
    p14_34
    p14_35
    p14_36
    p14_37
    p14_38
    p14_39
    p14_40
    p15_1
    p15_2
    p15_3
    p15_4
    p15_5
    p15_6
    p15_7
    p15_8
    p15_9
    p15_10
    p15_11
    p15_12
    p15_13
    p15_14
    p15_15
    p15_16
    p15_17
    p15_18
    p15_19
    p15_20
    p15_21
    p15_22
    p15_23
    p15_24
    p15_25
    p15_26
    p15_27
    p15_28
    p15_29
    p15_30
    p15_31
    p15_32
    p15_33
    p15_34
    p15_35
    p15_36
    p15_37
    p15_38
    p15_39
    p15_40
    p16_1
    p16_2
    p16_3
    p16_4
    p16_5
    p16_6
    p16_7
    p16_8
    p16_9
    p16_10
    p16_11
    p16_12
    p16_13
    p16_14
    p16_15
    p16_16
    p16_17
    p16_18
    p16_19
    p16_20
    p16_21
    p16_22
    p16_23
    p16_24
    p16_25
    p16_26
    p16_27
    p16_28
    p16_29
    p16_30
    p16_31
    p16_32
    p16_33
    p16_34
    p16_35
    p16_36
    p16_37
    p16_38
    p16_39
    p16_40
    p17_1
    p17_2
    p17_3
    p17_4
    p17_5
    p17_6
    p17_7
    p17_8
    p17_9
    p17_10
    p17_11
    p17_12
    p17_13
    p17_14
    p17_15
    p17_16
    p17_17
    p17_18
    p17_19
    p17_20
    p17_21
    p17_22
    p17_23
    p17_24
    p17_25
    p17_26
    p17_27
    p17_28
    p17_29
    p17_30
    p17_31
    p17_32
    p17_33
    p17_34
    p17_35
    p17_36
    p17_37
    p17_38
    p17_39
    p17_40
    p18_1
    p18_2
    p18_3
    p18_4
    p18_5
    p18_6
    p18_7
    p18_8
    p18_9
    p18_10
    p18_11
    p18_12
    p18_13
    p18_14
    p18_15
    p18_16
    p18_17
    p18_18
    p18_19
    p18_20
    p18_21
    p18_22
    p18_23
    p18_24
    p18_25
    p18_26
    p18_27
    p18_28
    p18_29
    p18_30
    p18_31
    p18_32
    p18_33
    p18_34
    p18_35
    p18_36
    p18_37
    p18_38
    p18_39
    p18_40
    p19_1
    p19_2
    p19_3
    p19_4
    p19_5
    p19_6
    p19_7
    p19_8
    p19_9
    p19_10
    p19_11
    p19_12
    p19_13
    p19_14
    p19_15
    p19_16
    p19_17
    p19_18
    p19_19
    p19_20
    p19_21
    p19_22
    p19_23
    p19_24
    p19_25
    p19_26
    p19_27
    p19_28
    p19_29
    p19_30
    p19_31
    p19_32
    p19_33
    p19_34
    p19_35
    p19_36
    p19_37
    p19_38
    p19_39
    p19_40
    p20_1
    p20_2
    p20_3
    p20_4
    p20_5
    p20_6
    p20_7
    p20_8
    p20_9
    p20_10
    p20_11
    p20_12
    p20_13
    p20_14
    p20_15
    p20_16
    p20_17
    p20_18
    p20_19
    p20_20
    p20_21
    p20_22
    p20_23
    p20_24
    p20_25
    p20_26
    p20_27
    p20_28
    p20_29
    p20_30
    p20_31
    p20_32
    p20_33
    p20_34
    p20_35
    p20_36
    p20_37
    p20_38
    p20_39
    p20_40
    p21_1
    p21_2
    p21_3
    p21_4
    p21_5
    p21_6
    p21_7
    p21_8
    p21_9
    p21_10
    p21_11
    p21_12
    p21_13
    p21_14
    p21_15
    p21_16
    p21_17
    p21_18
    p21_19
    p21_20
    p21_21
    p21_22
    p21_23
    p21_24
    p21_25
    p21_26
    p21_27
    p21_28
    p21_29
    p21_30
    p21_31
    p21_32
    p21_33
    p21_34
    p21_35
    p21_36
    p21_37
    p21_38
    p21_39
    p21_40
    p22_1
    p22_2
    p22_3
    p22_4
    p22_5
    p22_6
    p22_7
    p22_8
    p22_9
    p22_10
    p22_11
    p22_12
    p22_13
    p22_14
    p22_15
    p22_16
    p22_17
    p22_18
    p22_19
    p22_20
    p22_21
    p22_22
    p22_23
    p22_24
    p22_25
    p22_26
    p22_27
    p22_28
    p22_29
    p22_30
    p22_31
    p22_32
    p22_33
    p22_34
    p22_35
    p22_36
    p22_37
    p22_38
    p22_39
    p22_40
    p23_1
    p23_2
    p23_3
    p23_4
    p23_5
    p23_6
    p23_7
    p23_8
    p23_9
    p23_10
    p23_11
    p23_12
    p23_13
    p23_14
    p23_15
    p23_16
    p23_17
    p23_18
    p23_19
    p23_20
    p23_21
    p23_22
    p23_23
    p23_24
    p23_25
    p23_26
    p23_27
    p23_28
    p23_29
    p23_30
    p23_31
    p23_32
    p23_33
    p23_34
    p23_35
    p23_36
    p23_37
    p23_38
    p23_39
    p23_40
    p24_1
    p24_2
    p24_3
    p24_4
    p24_5
    p24_6
    p24_7
    p24_8
    p24_9
    p24_10
    p24_11
    p24_12
    p24_13
    p24_14
    p24_15
    p24_16
    p24_17
    p24_18
    p24_19
    p24_20
    p24_21
    p24_22
    p24_23
    p24_24
    p24_25
    p24_26
    p24_27
    p24_28
    p24_29
    p24_30
    p24_31
    p24_32
    p24_33
    p24_34
    p24_35
    p24_36
    p24_37
    p24_38
    p24_39
    p24_40
    p25_1
    p25_2
    p25_3
    p25_4
    p25_5
    p25_6
    p25_7
    p25_8
    p25_9
    p25_10
    p25_11
    p25_12
    p25_13
    p25_14
    p25_15
    p25_16
    p25_17
    p25_18
    p25_19
    p25_20
    p25_21
    p25_22
    p25_23
    p25_24
    p25_25
    p25_26
    p25_27
    p25_28
    p25_29
    p25_30
    p25_31
    p25_32
    p25_33
    p25_34
    p25_35
    p25_36
    p25_37
    p25_38
    p25_39
    p25_40
    p26_1
    p26_2
    p26_3
    p26_4
    p26_5
    p26_6
    p26_7
    p26_8
    p26_9
    p26_10
    p26_11
    p26_12
    p26_13
    p26_14
    p26_15
    p26_16
    p26_17
    p26_18
    p26_19
    p26_20
    p26_21
    p26_22
    p26_23
    p26_24
    p26_25
    p26_26
    p26_27
    p26_28
    p26_29
    p26_30
    p26_31
    p26_32
    p26_33
    p26_34
    p26_35
    p26_36
    p26_37
    p26_38
    p26_39
    p26_40
    p27_1
    p27_2
    p27_3
    p27_4
    p27_5
    p27_6
    p27_7
    p27_8
    p27_9
    p27_10
    p27_11
    p27_12
    p27_13
    p27_14
    p27_15
    p27_16
    p27_17
    p27_18
    p27_19
    p27_20
    p27_21
    p27_22
    p27_23
    p27_24
    p27_25
    p27_26
    p27_27
    p27_28
    p27_29
    p27_30
    p27_31
    p27_32
    p27_33
    p27_34
    p27_35
    p27_36
    p27_37
    p27_38
    p27_39
    p27_40
    p28_1
    p28_2
    p28_3
    p28_4
    p28_5
    p28_6
    p28_7
    p28_8
    p28_9
    p28_10
    p28_11
    p28_12
    p28_13
    p28_14
    p28_15
    p28_16
    p28_17
    p28_18
    p28_19
    p28_20
    p28_21
    p28_22
    p28_23
    p28_24
    p28_25
    p28_26
    p28_27
    p28_28
    p28_29
    p28_30
    p28_31
    p28_32
    p28_33
    p28_34
    p28_35
    p28_36
    p28_37
    p28_38
    p28_39
    p28_40
    p29_1
    p29_2
    p29_3
    p29_4
    p29_5
    p29_6
    p29_7
    p29_8
    p29_9
    p29_10
    p29_11
    p29_12
    p29_13
    p29_14
    p29_15
    p29_16
    p29_17
    p29_18
    p29_19
    p29_20
    p29_21
    p29_22
    p29_23
    p29_24
    p29_25
    p29_26
    p29_27
    p29_28
    p29_29
    p29_30
    p29_31
    p29_32
    p29_33
    p29_34
    p29_35
    p29_36
    p29_37
    p29_38
    p29_39
    p29_40
    p30_1
    p30_2
    p30_3
    p30_4
    p30_5
    p30_6
    p30_7
    p30_8
    p30_9
    p30_10
    p30_11
    p30_12
    p30_13
    p30_14
    p30_15
    p30_16
    p30_17
    p30_18
    p30_19
    p30_20
    p30_21
    p30_22
    p30_23
    p30_24
    p30_25
    p30_26
    p30_27
    p30_28
    p30_29
    p30_30
    p30_31
    p30_32
    p30_33
    p30_34
    p30_35
    p30_36
    p30_37
    p30_38
    p30_39
    p30_40
    p31_1
    p31_2
    p31_3
    p31_4
    p31_5
    p31_6
    p31_7
    p31_8
    p31_9
    p31_10
    p31_11
    p31_12
    p31_13
    p31_14
    p31_15
    p31_16
    p31_17
    p31_18
    p31_19
    p31_20
    p31_21
    p31_22
    p31_23
    p31_24
    p31_25
    p31_26
    p31_27
    p31_28
    p31_29
    p31_30
    p31_31
    p31_32
    p31_33
    p31_34
    p31_35
    p31_36
    p31_37
    p31_38
    p31_39
    p31_40
    p32_1
    p32_2
    p32_3
    p32_4
    p32_5
    p32_6
    p32_7
    p32_8
    p32_9
    p32_10
    p32_11
    p32_12
    p32_13
    p32_14
    p32_15
    p32_16
    p32_17
    p32_18
    p32_19
    p32_20
    p32_21
    p32_22
    p32_23
    p32_24
    p32_25
    p32_26
    p32_27
    p32_28
    p32_29
    p32_30
    p32_31
    p32_32
    p32_33
    p32_34
    p32_35
    p32_36
    p32_37
    p32_38
    p32_39
    p32_40
    p33_1
    p33_2
    p33_3
    p33_4
    p33_5
    p33_6
    p33_7
    p33_8
    p33_9
    p33_10
    p33_11
    p33_12
    p33_13
    p33_14
    p33_15
    p33_16
    p33_17
    p33_18
    p33_19
    p33_20
    p33_21
    p33_22
    p33_23
    p33_24
    p33_25
    p33_26
    p33_27
    p33_28
    p33_29
    p33_30
    p33_31
    p33_32
    p33_33
    p33_34
    p33_35
    p33_36
    p33_37
    p33_38
    p33_39
    p33_40
    p34_1
    p34_2
    p34_3
    p34_4
    p34_5
    p34_6
    p34_7
    p34_8
    p34_9
    p34_10
    p34_11
    p34_12
    p34_13
    p34_14
    p34_15
    p34_16
    p34_17
    p34_18
    p34_19
    p34_20
    p34_21
    p34_22
    p34_23
    p34_24
    p34_25
    p34_26
    p34_27
    p34_28
    p34_29
    p34_30
    p34_31
    p34_32
    p34_33
    p34_34
    p34_35
    p34_36
    p34_37
    p34_38
    p34_39
    p34_40
    p35_1
    p35_2
    p35_3
    p35_4
    p35_5
    p35_6
    p35_7
    p35_8
    p35_9
    p35_10
    p35_11
    p35_12
    p35_13
    p35_14
    p35_15
    p35_16
    p35_17
    p35_18
    p35_19
    p35_20
    p35_21
    p35_22
    p35_23
    p35_24
    p35_25
    p35_26
    p35_27
    p35_28
    p35_29
    p35_30
    p35_31
    p35_32
    p35_33
    p35_34
    p35_35
    p35_36
    p35_37
    p35_38
    p35_39
    p35_40
    p36_1
    p36_2
    p36_3
    p36_4
    p36_5
    p36_6
    p36_7
    p36_8
    p36_9
    p36_10
    p36_11
    p36_12
    p36_13
    p36_14
    p36_15
    p36_16
    p36_17
    p36_18
    p36_19
    p36_20
    p36_21
    p36_22
    p36_23
    p36_24
    p36_25
    p36_26
    p36_27
    p36_28
    p36_29
    p36_30
    p36_31
    p36_32
    p36_33
    p36_34
    p36_35
    p36_36
    p36_37
    p36_38
    p36_39
    p36_40
    p37_1
    p37_2
    p37_3
    p37_4
    p37_5
    p37_6
    p37_7
    p37_8
    p37_9
    p37_10
    p37_11
    p37_12
    p37_13
    p37_14
    p37_15
    p37_16
    p37_17
    p37_18
    p37_19
    p37_20
    p37_21
    p37_22
    p37_23
    p37_24
    p37_25
    p37_26
    p37_27
    p37_28
    p37_29
    p37_30
    p37_31
    p37_32
    p37_33
    p37_34
    p37_35
    p37_36
    p37_37
    p37_38
    p37_39
    p37_40
    p38_1
    p38_2
    p38_3
    p38_4
    p38_5
    p38_6
    p38_7
    p38_8
    p38_9
    p38_10
    p38_11
    p38_12
    p38_13
    p38_14
    p38_15
    p38_16
    p38_17
    p38_18
    p38_19
    p38_20
    p38_21
    p38_22
    p38_23
    p38_24
    p38_25
    p38_26
    p38_27
    p38_28
    p38_29
    p38_30
    p38_31
    p38_32
    p38_33
    p38_34
    p38_35
    p38_36
    p38_37
    p38_38
    p38_39
    p38_40
    p39_1
    p39_2
    p39_3
    p39_4
    p39_5
    p39_6
    p39_7
    p39_8
    p39_9
    p39_10
    p39_11
    p39_12
    p39_13
    p39_14
    p39_15
    p39_16
    p39_17
    p39_18
    p39_19
    p39_20
    p39_21
    p39_22
    p39_23
    p39_24
    p39_25
    p39_26
    p39_27
    p39_28
    p39_29
    p39_30
    p39_31
    p39_32
    p39_33
    p39_34
    p39_35
    p39_36
    p39_37
    p39_38
    p39_39
    p39_40
    p40_1
    p40_2
    p40_3
    p40_4
    p40_5
    p40_6
    p40_7
    p40_8
    p40_9
    p40_10
    p40_11
    p40_12
    p40_13
    p40_14
    p40_15
    p40_16
    p40_17
    p40_18
    p40_19
    p40_20
    p40_21
    p40_22
    p40_23
    p40_24
    p40_25
    p40_26
    p40_27
    p40_28
    p40_29
    p40_30
    p40_31
    p40_32
    p40_33
    p40_34
    p40_35
    p40_36
    p40_37
    p40_38
    p40_39
    p40_40

     - pos
   )

   (:predicates  (adj ?i ?j - pos) (mouse_at ?i - pos) (cat_at ?i - pos) 
                 (cheese_at ?i - pos)  (have_cheese) (mouse_turn) )

   (:action cat_move
      :parameters ( )
      :effect (and (mouse_turn)
	(when (cat_at p1_1) (oneof (cat_at p2_1) (cat_at p1_2)) )
	(when (cat_at p1_2) (oneof (cat_at p1_1) (cat_at p2_2) (cat_at p1_3)) )
	(when (cat_at p1_3) (oneof (cat_at p1_2) (cat_at p2_3) (cat_at p1_4)) )
	(when (cat_at p1_4) (oneof (cat_at p1_3) (cat_at p2_4) (cat_at p1_5)) )
	(when (cat_at p1_5) (oneof (cat_at p1_4) (cat_at p2_5) (cat_at p1_6)) )
	(when (cat_at p1_6) (oneof (cat_at p1_5) (cat_at p2_6) (cat_at p1_7)) )
	(when (cat_at p1_7) (oneof (cat_at p1_6) (cat_at p2_7) (cat_at p1_8)) )
	(when (cat_at p1_8) (oneof (cat_at p1_7) (cat_at p2_8) (cat_at p1_9)) )
	(when (cat_at p1_9) (oneof (cat_at p1_8) (cat_at p2_9) (cat_at p1_10)) )
	(when (cat_at p1_10) (oneof (cat_at p1_9) (cat_at p2_10) (cat_at p1_11)) )
	(when (cat_at p1_11) (oneof (cat_at p1_10) (cat_at p2_11) (cat_at p1_12)) )
	(when (cat_at p1_12) (oneof (cat_at p1_11) (cat_at p2_12) (cat_at p1_13)) )
	(when (cat_at p1_13) (oneof (cat_at p1_12) (cat_at p2_13) (cat_at p1_14)) )
	(when (cat_at p1_14) (oneof (cat_at p1_13) (cat_at p2_14) (cat_at p1_15)) )
	(when (cat_at p1_15) (oneof (cat_at p1_14) (cat_at p2_15) (cat_at p1_16)) )
	(when (cat_at p1_16) (oneof (cat_at p1_15) (cat_at p2_16) (cat_at p1_17)) )
	(when (cat_at p1_17) (oneof (cat_at p1_16) (cat_at p2_17) (cat_at p1_18)) )
	(when (cat_at p1_18) (oneof (cat_at p1_17) (cat_at p2_18) (cat_at p1_19)) )
	(when (cat_at p1_19) (oneof (cat_at p1_18) (cat_at p2_19) (cat_at p1_20)) )
	(when (cat_at p1_20) (oneof (cat_at p1_19) (cat_at p2_20) (cat_at p1_21)) )
	(when (cat_at p1_21) (oneof (cat_at p1_20) (cat_at p2_21) (cat_at p1_22)) )
	(when (cat_at p1_22) (oneof (cat_at p1_21) (cat_at p2_22) (cat_at p1_23)) )
	(when (cat_at p1_23) (oneof (cat_at p1_22) (cat_at p2_23) (cat_at p1_24)) )
	(when (cat_at p1_24) (oneof (cat_at p1_23) (cat_at p2_24) (cat_at p1_25)) )
	(when (cat_at p1_25) (oneof (cat_at p1_24) (cat_at p2_25) (cat_at p1_26)) )
	(when (cat_at p1_26) (oneof (cat_at p1_25) (cat_at p2_26) (cat_at p1_27)) )
	(when (cat_at p1_27) (oneof (cat_at p1_26) (cat_at p2_27) (cat_at p1_28)) )
	(when (cat_at p1_28) (oneof (cat_at p1_27) (cat_at p2_28) (cat_at p1_29)) )
	(when (cat_at p1_29) (oneof (cat_at p1_28) (cat_at p2_29) (cat_at p1_30)) )
	(when (cat_at p1_30) (oneof (cat_at p1_29) (cat_at p2_30) (cat_at p1_31)) )
	(when (cat_at p1_31) (oneof (cat_at p1_30) (cat_at p2_31) (cat_at p1_32)) )
	(when (cat_at p1_32) (oneof (cat_at p1_31) (cat_at p2_32) (cat_at p1_33)) )
	(when (cat_at p1_33) (oneof (cat_at p1_32) (cat_at p2_33) (cat_at p1_34)) )
	(when (cat_at p1_34) (oneof (cat_at p1_33) (cat_at p2_34) (cat_at p1_35)) )
	(when (cat_at p1_35) (oneof (cat_at p1_34) (cat_at p2_35) (cat_at p1_36)) )
	(when (cat_at p1_36) (oneof (cat_at p1_35) (cat_at p2_36) (cat_at p1_37)) )
	(when (cat_at p1_37) (oneof (cat_at p1_36) (cat_at p2_37) (cat_at p1_38)) )
	(when (cat_at p1_38) (oneof (cat_at p1_37) (cat_at p2_38) (cat_at p1_39)) )
	(when (cat_at p1_39) (oneof (cat_at p1_38) (cat_at p2_39) (cat_at p1_40)) )
	(when (cat_at p1_40) (oneof (cat_at p1_39) (cat_at p2_40)) )
	(when (cat_at p2_1) (oneof (cat_at p1_1) (cat_at p3_1) (cat_at p2_2)) )
	(when (cat_at p2_2) (oneof (cat_at p1_2) (cat_at p2_1) (cat_at p3_2) (cat_at p2_3)) )
	(when (cat_at p2_3) (oneof (cat_at p1_3) (cat_at p2_2) (cat_at p3_3) (cat_at p2_4)) )
	(when (cat_at p2_4) (oneof (cat_at p1_4) (cat_at p2_3) (cat_at p3_4) (cat_at p2_5)) )
	(when (cat_at p2_5) (oneof (cat_at p1_5) (cat_at p2_4) (cat_at p3_5) (cat_at p2_6)) )
	(when (cat_at p2_6) (oneof (cat_at p1_6) (cat_at p2_5) (cat_at p3_6) (cat_at p2_7)) )
	(when (cat_at p2_7) (oneof (cat_at p1_7) (cat_at p2_6) (cat_at p3_7) (cat_at p2_8)) )
	(when (cat_at p2_8) (oneof (cat_at p1_8) (cat_at p2_7) (cat_at p3_8) (cat_at p2_9)) )
	(when (cat_at p2_9) (oneof (cat_at p1_9) (cat_at p2_8) (cat_at p3_9) (cat_at p2_10)) )
	(when (cat_at p2_10) (oneof (cat_at p1_10) (cat_at p2_9) (cat_at p3_10) (cat_at p2_11)) )
	(when (cat_at p2_11) (oneof (cat_at p1_11) (cat_at p2_10) (cat_at p3_11) (cat_at p2_12)) )
	(when (cat_at p2_12) (oneof (cat_at p1_12) (cat_at p2_11) (cat_at p3_12) (cat_at p2_13)) )
	(when (cat_at p2_13) (oneof (cat_at p1_13) (cat_at p2_12) (cat_at p3_13) (cat_at p2_14)) )
	(when (cat_at p2_14) (oneof (cat_at p1_14) (cat_at p2_13) (cat_at p3_14) (cat_at p2_15)) )
	(when (cat_at p2_15) (oneof (cat_at p1_15) (cat_at p2_14) (cat_at p3_15) (cat_at p2_16)) )
	(when (cat_at p2_16) (oneof (cat_at p1_16) (cat_at p2_15) (cat_at p3_16) (cat_at p2_17)) )
	(when (cat_at p2_17) (oneof (cat_at p1_17) (cat_at p2_16) (cat_at p3_17) (cat_at p2_18)) )
	(when (cat_at p2_18) (oneof (cat_at p1_18) (cat_at p2_17) (cat_at p3_18) (cat_at p2_19)) )
	(when (cat_at p2_19) (oneof (cat_at p1_19) (cat_at p2_18) (cat_at p3_19) (cat_at p2_20)) )
	(when (cat_at p2_20) (oneof (cat_at p1_20) (cat_at p2_19) (cat_at p3_20) (cat_at p2_21)) )
	(when (cat_at p2_21) (oneof (cat_at p1_21) (cat_at p2_20) (cat_at p3_21) (cat_at p2_22)) )
	(when (cat_at p2_22) (oneof (cat_at p1_22) (cat_at p2_21) (cat_at p3_22) (cat_at p2_23)) )
	(when (cat_at p2_23) (oneof (cat_at p1_23) (cat_at p2_22) (cat_at p3_23) (cat_at p2_24)) )
	(when (cat_at p2_24) (oneof (cat_at p1_24) (cat_at p2_23) (cat_at p3_24) (cat_at p2_25)) )
	(when (cat_at p2_25) (oneof (cat_at p1_25) (cat_at p2_24) (cat_at p3_25) (cat_at p2_26)) )
	(when (cat_at p2_26) (oneof (cat_at p1_26) (cat_at p2_25) (cat_at p3_26) (cat_at p2_27)) )
	(when (cat_at p2_27) (oneof (cat_at p1_27) (cat_at p2_26) (cat_at p3_27) (cat_at p2_28)) )
	(when (cat_at p2_28) (oneof (cat_at p1_28) (cat_at p2_27) (cat_at p3_28) (cat_at p2_29)) )
	(when (cat_at p2_29) (oneof (cat_at p1_29) (cat_at p2_28) (cat_at p3_29) (cat_at p2_30)) )
	(when (cat_at p2_30) (oneof (cat_at p1_30) (cat_at p2_29) (cat_at p3_30) (cat_at p2_31)) )
	(when (cat_at p2_31) (oneof (cat_at p1_31) (cat_at p2_30) (cat_at p3_31) (cat_at p2_32)) )
	(when (cat_at p2_32) (oneof (cat_at p1_32) (cat_at p2_31) (cat_at p3_32) (cat_at p2_33)) )
	(when (cat_at p2_33) (oneof (cat_at p1_33) (cat_at p2_32) (cat_at p3_33) (cat_at p2_34)) )
	(when (cat_at p2_34) (oneof (cat_at p1_34) (cat_at p2_33) (cat_at p3_34) (cat_at p2_35)) )
	(when (cat_at p2_35) (oneof (cat_at p1_35) (cat_at p2_34) (cat_at p3_35) (cat_at p2_36)) )
	(when (cat_at p2_36) (oneof (cat_at p1_36) (cat_at p2_35) (cat_at p3_36) (cat_at p2_37)) )
	(when (cat_at p2_37) (oneof (cat_at p1_37) (cat_at p2_36) (cat_at p3_37) (cat_at p2_38)) )
	(when (cat_at p2_38) (oneof (cat_at p1_38) (cat_at p2_37) (cat_at p3_38) (cat_at p2_39)) )
	(when (cat_at p2_39) (oneof (cat_at p1_39) (cat_at p2_38) (cat_at p3_39) (cat_at p2_40)) )
	(when (cat_at p2_40) (oneof (cat_at p1_40) (cat_at p2_39) (cat_at p3_40)) )
	(when (cat_at p3_1) (oneof (cat_at p2_1) (cat_at p4_1) (cat_at p3_2)) )
	(when (cat_at p3_2) (oneof (cat_at p2_2) (cat_at p3_1) (cat_at p4_2) (cat_at p3_3)) )
	(when (cat_at p3_3) (oneof (cat_at p2_3) (cat_at p3_2) (cat_at p4_3) (cat_at p3_4)) )
	(when (cat_at p3_4) (oneof (cat_at p2_4) (cat_at p3_3) (cat_at p4_4) (cat_at p3_5)) )
	(when (cat_at p3_5) (oneof (cat_at p2_5) (cat_at p3_4) (cat_at p4_5) (cat_at p3_6)) )
	(when (cat_at p3_6) (oneof (cat_at p2_6) (cat_at p3_5) (cat_at p4_6) (cat_at p3_7)) )
	(when (cat_at p3_7) (oneof (cat_at p2_7) (cat_at p3_6) (cat_at p4_7) (cat_at p3_8)) )
	(when (cat_at p3_8) (oneof (cat_at p2_8) (cat_at p3_7) (cat_at p4_8) (cat_at p3_9)) )
	(when (cat_at p3_9) (oneof (cat_at p2_9) (cat_at p3_8) (cat_at p4_9) (cat_at p3_10)) )
	(when (cat_at p3_10) (oneof (cat_at p2_10) (cat_at p3_9) (cat_at p4_10) (cat_at p3_11)) )
	(when (cat_at p3_11) (oneof (cat_at p2_11) (cat_at p3_10) (cat_at p4_11) (cat_at p3_12)) )
	(when (cat_at p3_12) (oneof (cat_at p2_12) (cat_at p3_11) (cat_at p4_12) (cat_at p3_13)) )
	(when (cat_at p3_13) (oneof (cat_at p2_13) (cat_at p3_12) (cat_at p4_13) (cat_at p3_14)) )
	(when (cat_at p3_14) (oneof (cat_at p2_14) (cat_at p3_13) (cat_at p4_14) (cat_at p3_15)) )
	(when (cat_at p3_15) (oneof (cat_at p2_15) (cat_at p3_14) (cat_at p4_15) (cat_at p3_16)) )
	(when (cat_at p3_16) (oneof (cat_at p2_16) (cat_at p3_15) (cat_at p4_16) (cat_at p3_17)) )
	(when (cat_at p3_17) (oneof (cat_at p2_17) (cat_at p3_16) (cat_at p4_17) (cat_at p3_18)) )
	(when (cat_at p3_18) (oneof (cat_at p2_18) (cat_at p3_17) (cat_at p4_18) (cat_at p3_19)) )
	(when (cat_at p3_19) (oneof (cat_at p2_19) (cat_at p3_18) (cat_at p4_19) (cat_at p3_20)) )
	(when (cat_at p3_20) (oneof (cat_at p2_20) (cat_at p3_19) (cat_at p4_20) (cat_at p3_21)) )
	(when (cat_at p3_21) (oneof (cat_at p2_21) (cat_at p3_20) (cat_at p4_21) (cat_at p3_22)) )
	(when (cat_at p3_22) (oneof (cat_at p2_22) (cat_at p3_21) (cat_at p4_22) (cat_at p3_23)) )
	(when (cat_at p3_23) (oneof (cat_at p2_23) (cat_at p3_22) (cat_at p4_23) (cat_at p3_24)) )
	(when (cat_at p3_24) (oneof (cat_at p2_24) (cat_at p3_23) (cat_at p4_24) (cat_at p3_25)) )
	(when (cat_at p3_25) (oneof (cat_at p2_25) (cat_at p3_24) (cat_at p4_25) (cat_at p3_26)) )
	(when (cat_at p3_26) (oneof (cat_at p2_26) (cat_at p3_25) (cat_at p4_26) (cat_at p3_27)) )
	(when (cat_at p3_27) (oneof (cat_at p2_27) (cat_at p3_26) (cat_at p4_27) (cat_at p3_28)) )
	(when (cat_at p3_28) (oneof (cat_at p2_28) (cat_at p3_27) (cat_at p4_28) (cat_at p3_29)) )
	(when (cat_at p3_29) (oneof (cat_at p2_29) (cat_at p3_28) (cat_at p4_29) (cat_at p3_30)) )
	(when (cat_at p3_30) (oneof (cat_at p2_30) (cat_at p3_29) (cat_at p4_30) (cat_at p3_31)) )
	(when (cat_at p3_31) (oneof (cat_at p2_31) (cat_at p3_30) (cat_at p4_31) (cat_at p3_32)) )
	(when (cat_at p3_32) (oneof (cat_at p2_32) (cat_at p3_31) (cat_at p4_32) (cat_at p3_33)) )
	(when (cat_at p3_33) (oneof (cat_at p2_33) (cat_at p3_32) (cat_at p4_33) (cat_at p3_34)) )
	(when (cat_at p3_34) (oneof (cat_at p2_34) (cat_at p3_33) (cat_at p4_34) (cat_at p3_35)) )
	(when (cat_at p3_35) (oneof (cat_at p2_35) (cat_at p3_34) (cat_at p4_35) (cat_at p3_36)) )
	(when (cat_at p3_36) (oneof (cat_at p2_36) (cat_at p3_35) (cat_at p4_36) (cat_at p3_37)) )
	(when (cat_at p3_37) (oneof (cat_at p2_37) (cat_at p3_36) (cat_at p4_37) (cat_at p3_38)) )
	(when (cat_at p3_38) (oneof (cat_at p2_38) (cat_at p3_37) (cat_at p4_38) (cat_at p3_39)) )
	(when (cat_at p3_39) (oneof (cat_at p2_39) (cat_at p3_38) (cat_at p4_39) (cat_at p3_40)) )
	(when (cat_at p3_40) (oneof (cat_at p2_40) (cat_at p3_39) (cat_at p4_40)) )
	(when (cat_at p4_1) (oneof (cat_at p3_1) (cat_at p5_1) (cat_at p4_2)) )
	(when (cat_at p4_2) (oneof (cat_at p3_2) (cat_at p4_1) (cat_at p5_2) (cat_at p4_3)) )
	(when (cat_at p4_3) (oneof (cat_at p3_3) (cat_at p4_2) (cat_at p5_3) (cat_at p4_4)) )
	(when (cat_at p4_4) (oneof (cat_at p3_4) (cat_at p4_3) (cat_at p5_4) (cat_at p4_5)) )
	(when (cat_at p4_5) (oneof (cat_at p3_5) (cat_at p4_4) (cat_at p5_5) (cat_at p4_6)) )
	(when (cat_at p4_6) (oneof (cat_at p3_6) (cat_at p4_5) (cat_at p5_6) (cat_at p4_7)) )
	(when (cat_at p4_7) (oneof (cat_at p3_7) (cat_at p4_6) (cat_at p5_7) (cat_at p4_8)) )
	(when (cat_at p4_8) (oneof (cat_at p3_8) (cat_at p4_7) (cat_at p5_8) (cat_at p4_9)) )
	(when (cat_at p4_9) (oneof (cat_at p3_9) (cat_at p4_8) (cat_at p5_9) (cat_at p4_10)) )
	(when (cat_at p4_10) (oneof (cat_at p3_10) (cat_at p4_9) (cat_at p5_10) (cat_at p4_11)) )
	(when (cat_at p4_11) (oneof (cat_at p3_11) (cat_at p4_10) (cat_at p5_11) (cat_at p4_12)) )
	(when (cat_at p4_12) (oneof (cat_at p3_12) (cat_at p4_11) (cat_at p5_12) (cat_at p4_13)) )
	(when (cat_at p4_13) (oneof (cat_at p3_13) (cat_at p4_12) (cat_at p5_13) (cat_at p4_14)) )
	(when (cat_at p4_14) (oneof (cat_at p3_14) (cat_at p4_13) (cat_at p5_14) (cat_at p4_15)) )
	(when (cat_at p4_15) (oneof (cat_at p3_15) (cat_at p4_14) (cat_at p5_15) (cat_at p4_16)) )
	(when (cat_at p4_16) (oneof (cat_at p3_16) (cat_at p4_15) (cat_at p5_16) (cat_at p4_17)) )
	(when (cat_at p4_17) (oneof (cat_at p3_17) (cat_at p4_16) (cat_at p5_17) (cat_at p4_18)) )
	(when (cat_at p4_18) (oneof (cat_at p3_18) (cat_at p4_17) (cat_at p5_18) (cat_at p4_19)) )
	(when (cat_at p4_19) (oneof (cat_at p3_19) (cat_at p4_18) (cat_at p5_19) (cat_at p4_20)) )
	(when (cat_at p4_20) (oneof (cat_at p3_20) (cat_at p4_19) (cat_at p5_20) (cat_at p4_21)) )
	(when (cat_at p4_21) (oneof (cat_at p3_21) (cat_at p4_20) (cat_at p5_21) (cat_at p4_22)) )
	(when (cat_at p4_22) (oneof (cat_at p3_22) (cat_at p4_21) (cat_at p5_22) (cat_at p4_23)) )
	(when (cat_at p4_23) (oneof (cat_at p3_23) (cat_at p4_22) (cat_at p5_23) (cat_at p4_24)) )
	(when (cat_at p4_24) (oneof (cat_at p3_24) (cat_at p4_23) (cat_at p5_24) (cat_at p4_25)) )
	(when (cat_at p4_25) (oneof (cat_at p3_25) (cat_at p4_24) (cat_at p5_25) (cat_at p4_26)) )
	(when (cat_at p4_26) (oneof (cat_at p3_26) (cat_at p4_25) (cat_at p5_26) (cat_at p4_27)) )
	(when (cat_at p4_27) (oneof (cat_at p3_27) (cat_at p4_26) (cat_at p5_27) (cat_at p4_28)) )
	(when (cat_at p4_28) (oneof (cat_at p3_28) (cat_at p4_27) (cat_at p5_28) (cat_at p4_29)) )
	(when (cat_at p4_29) (oneof (cat_at p3_29) (cat_at p4_28) (cat_at p5_29) (cat_at p4_30)) )
	(when (cat_at p4_30) (oneof (cat_at p3_30) (cat_at p4_29) (cat_at p5_30) (cat_at p4_31)) )
	(when (cat_at p4_31) (oneof (cat_at p3_31) (cat_at p4_30) (cat_at p5_31) (cat_at p4_32)) )
	(when (cat_at p4_32) (oneof (cat_at p3_32) (cat_at p4_31) (cat_at p5_32) (cat_at p4_33)) )
	(when (cat_at p4_33) (oneof (cat_at p3_33) (cat_at p4_32) (cat_at p5_33) (cat_at p4_34)) )
	(when (cat_at p4_34) (oneof (cat_at p3_34) (cat_at p4_33) (cat_at p5_34) (cat_at p4_35)) )
	(when (cat_at p4_35) (oneof (cat_at p3_35) (cat_at p4_34) (cat_at p5_35) (cat_at p4_36)) )
	(when (cat_at p4_36) (oneof (cat_at p3_36) (cat_at p4_35) (cat_at p5_36) (cat_at p4_37)) )
	(when (cat_at p4_37) (oneof (cat_at p3_37) (cat_at p4_36) (cat_at p5_37) (cat_at p4_38)) )
	(when (cat_at p4_38) (oneof (cat_at p3_38) (cat_at p4_37) (cat_at p5_38) (cat_at p4_39)) )
	(when (cat_at p4_39) (oneof (cat_at p3_39) (cat_at p4_38) (cat_at p5_39) (cat_at p4_40)) )
	(when (cat_at p4_40) (oneof (cat_at p3_40) (cat_at p4_39) (cat_at p5_40)) )
	(when (cat_at p5_1) (oneof (cat_at p4_1) (cat_at p6_1) (cat_at p5_2)) )
	(when (cat_at p5_2) (oneof (cat_at p4_2) (cat_at p5_1) (cat_at p6_2) (cat_at p5_3)) )
	(when (cat_at p5_3) (oneof (cat_at p4_3) (cat_at p5_2) (cat_at p6_3) (cat_at p5_4)) )
	(when (cat_at p5_4) (oneof (cat_at p4_4) (cat_at p5_3) (cat_at p6_4) (cat_at p5_5)) )
	(when (cat_at p5_5) (oneof (cat_at p4_5) (cat_at p5_4) (cat_at p6_5) (cat_at p5_6)) )
	(when (cat_at p5_6) (oneof (cat_at p4_6) (cat_at p5_5) (cat_at p6_6) (cat_at p5_7)) )
	(when (cat_at p5_7) (oneof (cat_at p4_7) (cat_at p5_6) (cat_at p6_7) (cat_at p5_8)) )
	(when (cat_at p5_8) (oneof (cat_at p4_8) (cat_at p5_7) (cat_at p6_8) (cat_at p5_9)) )
	(when (cat_at p5_9) (oneof (cat_at p4_9) (cat_at p5_8) (cat_at p6_9) (cat_at p5_10)) )
	(when (cat_at p5_10) (oneof (cat_at p4_10) (cat_at p5_9) (cat_at p6_10) (cat_at p5_11)) )
	(when (cat_at p5_11) (oneof (cat_at p4_11) (cat_at p5_10) (cat_at p6_11) (cat_at p5_12)) )
	(when (cat_at p5_12) (oneof (cat_at p4_12) (cat_at p5_11) (cat_at p6_12) (cat_at p5_13)) )
	(when (cat_at p5_13) (oneof (cat_at p4_13) (cat_at p5_12) (cat_at p6_13) (cat_at p5_14)) )
	(when (cat_at p5_14) (oneof (cat_at p4_14) (cat_at p5_13) (cat_at p6_14) (cat_at p5_15)) )
	(when (cat_at p5_15) (oneof (cat_at p4_15) (cat_at p5_14) (cat_at p6_15) (cat_at p5_16)) )
	(when (cat_at p5_16) (oneof (cat_at p4_16) (cat_at p5_15) (cat_at p6_16) (cat_at p5_17)) )
	(when (cat_at p5_17) (oneof (cat_at p4_17) (cat_at p5_16) (cat_at p6_17) (cat_at p5_18)) )
	(when (cat_at p5_18) (oneof (cat_at p4_18) (cat_at p5_17) (cat_at p6_18) (cat_at p5_19)) )
	(when (cat_at p5_19) (oneof (cat_at p4_19) (cat_at p5_18) (cat_at p6_19) (cat_at p5_20)) )
	(when (cat_at p5_20) (oneof (cat_at p4_20) (cat_at p5_19) (cat_at p6_20) (cat_at p5_21)) )
	(when (cat_at p5_21) (oneof (cat_at p4_21) (cat_at p5_20) (cat_at p6_21) (cat_at p5_22)) )
	(when (cat_at p5_22) (oneof (cat_at p4_22) (cat_at p5_21) (cat_at p6_22) (cat_at p5_23)) )
	(when (cat_at p5_23) (oneof (cat_at p4_23) (cat_at p5_22) (cat_at p6_23) (cat_at p5_24)) )
	(when (cat_at p5_24) (oneof (cat_at p4_24) (cat_at p5_23) (cat_at p6_24) (cat_at p5_25)) )
	(when (cat_at p5_25) (oneof (cat_at p4_25) (cat_at p5_24) (cat_at p6_25) (cat_at p5_26)) )
	(when (cat_at p5_26) (oneof (cat_at p4_26) (cat_at p5_25) (cat_at p6_26) (cat_at p5_27)) )
	(when (cat_at p5_27) (oneof (cat_at p4_27) (cat_at p5_26) (cat_at p6_27) (cat_at p5_28)) )
	(when (cat_at p5_28) (oneof (cat_at p4_28) (cat_at p5_27) (cat_at p6_28) (cat_at p5_29)) )
	(when (cat_at p5_29) (oneof (cat_at p4_29) (cat_at p5_28) (cat_at p6_29) (cat_at p5_30)) )
	(when (cat_at p5_30) (oneof (cat_at p4_30) (cat_at p5_29) (cat_at p6_30) (cat_at p5_31)) )
	(when (cat_at p5_31) (oneof (cat_at p4_31) (cat_at p5_30) (cat_at p6_31) (cat_at p5_32)) )
	(when (cat_at p5_32) (oneof (cat_at p4_32) (cat_at p5_31) (cat_at p6_32) (cat_at p5_33)) )
	(when (cat_at p5_33) (oneof (cat_at p4_33) (cat_at p5_32) (cat_at p6_33) (cat_at p5_34)) )
	(when (cat_at p5_34) (oneof (cat_at p4_34) (cat_at p5_33) (cat_at p6_34) (cat_at p5_35)) )
	(when (cat_at p5_35) (oneof (cat_at p4_35) (cat_at p5_34) (cat_at p6_35) (cat_at p5_36)) )
	(when (cat_at p5_36) (oneof (cat_at p4_36) (cat_at p5_35) (cat_at p6_36) (cat_at p5_37)) )
	(when (cat_at p5_37) (oneof (cat_at p4_37) (cat_at p5_36) (cat_at p6_37) (cat_at p5_38)) )
	(when (cat_at p5_38) (oneof (cat_at p4_38) (cat_at p5_37) (cat_at p6_38) (cat_at p5_39)) )
	(when (cat_at p5_39) (oneof (cat_at p4_39) (cat_at p5_38) (cat_at p6_39) (cat_at p5_40)) )
	(when (cat_at p5_40) (oneof (cat_at p4_40) (cat_at p5_39) (cat_at p6_40)) )
	(when (cat_at p6_1) (oneof (cat_at p5_1) (cat_at p7_1) (cat_at p6_2)) )
	(when (cat_at p6_2) (oneof (cat_at p5_2) (cat_at p6_1) (cat_at p7_2) (cat_at p6_3)) )
	(when (cat_at p6_3) (oneof (cat_at p5_3) (cat_at p6_2) (cat_at p7_3) (cat_at p6_4)) )
	(when (cat_at p6_4) (oneof (cat_at p5_4) (cat_at p6_3) (cat_at p7_4) (cat_at p6_5)) )
	(when (cat_at p6_5) (oneof (cat_at p5_5) (cat_at p6_4) (cat_at p7_5) (cat_at p6_6)) )
	(when (cat_at p6_6) (oneof (cat_at p5_6) (cat_at p6_5) (cat_at p7_6) (cat_at p6_7)) )
	(when (cat_at p6_7) (oneof (cat_at p5_7) (cat_at p6_6) (cat_at p7_7) (cat_at p6_8)) )
	(when (cat_at p6_8) (oneof (cat_at p5_8) (cat_at p6_7) (cat_at p7_8) (cat_at p6_9)) )
	(when (cat_at p6_9) (oneof (cat_at p5_9) (cat_at p6_8) (cat_at p7_9) (cat_at p6_10)) )
	(when (cat_at p6_10) (oneof (cat_at p5_10) (cat_at p6_9) (cat_at p7_10) (cat_at p6_11)) )
	(when (cat_at p6_11) (oneof (cat_at p5_11) (cat_at p6_10) (cat_at p7_11) (cat_at p6_12)) )
	(when (cat_at p6_12) (oneof (cat_at p5_12) (cat_at p6_11) (cat_at p7_12) (cat_at p6_13)) )
	(when (cat_at p6_13) (oneof (cat_at p5_13) (cat_at p6_12) (cat_at p7_13) (cat_at p6_14)) )
	(when (cat_at p6_14) (oneof (cat_at p5_14) (cat_at p6_13) (cat_at p7_14) (cat_at p6_15)) )
	(when (cat_at p6_15) (oneof (cat_at p5_15) (cat_at p6_14) (cat_at p7_15) (cat_at p6_16)) )
	(when (cat_at p6_16) (oneof (cat_at p5_16) (cat_at p6_15) (cat_at p7_16) (cat_at p6_17)) )
	(when (cat_at p6_17) (oneof (cat_at p5_17) (cat_at p6_16) (cat_at p7_17) (cat_at p6_18)) )
	(when (cat_at p6_18) (oneof (cat_at p5_18) (cat_at p6_17) (cat_at p7_18) (cat_at p6_19)) )
	(when (cat_at p6_19) (oneof (cat_at p5_19) (cat_at p6_18) (cat_at p7_19) (cat_at p6_20)) )
	(when (cat_at p6_20) (oneof (cat_at p5_20) (cat_at p6_19) (cat_at p7_20) (cat_at p6_21)) )
	(when (cat_at p6_21) (oneof (cat_at p5_21) (cat_at p6_20) (cat_at p7_21) (cat_at p6_22)) )
	(when (cat_at p6_22) (oneof (cat_at p5_22) (cat_at p6_21) (cat_at p7_22) (cat_at p6_23)) )
	(when (cat_at p6_23) (oneof (cat_at p5_23) (cat_at p6_22) (cat_at p7_23) (cat_at p6_24)) )
	(when (cat_at p6_24) (oneof (cat_at p5_24) (cat_at p6_23) (cat_at p7_24) (cat_at p6_25)) )
	(when (cat_at p6_25) (oneof (cat_at p5_25) (cat_at p6_24) (cat_at p7_25) (cat_at p6_26)) )
	(when (cat_at p6_26) (oneof (cat_at p5_26) (cat_at p6_25) (cat_at p7_26) (cat_at p6_27)) )
	(when (cat_at p6_27) (oneof (cat_at p5_27) (cat_at p6_26) (cat_at p7_27) (cat_at p6_28)) )
	(when (cat_at p6_28) (oneof (cat_at p5_28) (cat_at p6_27) (cat_at p7_28) (cat_at p6_29)) )
	(when (cat_at p6_29) (oneof (cat_at p5_29) (cat_at p6_28) (cat_at p7_29) (cat_at p6_30)) )
	(when (cat_at p6_30) (oneof (cat_at p5_30) (cat_at p6_29) (cat_at p7_30) (cat_at p6_31)) )
	(when (cat_at p6_31) (oneof (cat_at p5_31) (cat_at p6_30) (cat_at p7_31) (cat_at p6_32)) )
	(when (cat_at p6_32) (oneof (cat_at p5_32) (cat_at p6_31) (cat_at p7_32) (cat_at p6_33)) )
	(when (cat_at p6_33) (oneof (cat_at p5_33) (cat_at p6_32) (cat_at p7_33) (cat_at p6_34)) )
	(when (cat_at p6_34) (oneof (cat_at p5_34) (cat_at p6_33) (cat_at p7_34) (cat_at p6_35)) )
	(when (cat_at p6_35) (oneof (cat_at p5_35) (cat_at p6_34) (cat_at p7_35) (cat_at p6_36)) )
	(when (cat_at p6_36) (oneof (cat_at p5_36) (cat_at p6_35) (cat_at p7_36) (cat_at p6_37)) )
	(when (cat_at p6_37) (oneof (cat_at p5_37) (cat_at p6_36) (cat_at p7_37) (cat_at p6_38)) )
	(when (cat_at p6_38) (oneof (cat_at p5_38) (cat_at p6_37) (cat_at p7_38) (cat_at p6_39)) )
	(when (cat_at p6_39) (oneof (cat_at p5_39) (cat_at p6_38) (cat_at p7_39) (cat_at p6_40)) )
	(when (cat_at p6_40) (oneof (cat_at p5_40) (cat_at p6_39) (cat_at p7_40)) )
	(when (cat_at p7_1) (oneof (cat_at p6_1) (cat_at p8_1) (cat_at p7_2)) )
	(when (cat_at p7_2) (oneof (cat_at p6_2) (cat_at p7_1) (cat_at p8_2) (cat_at p7_3)) )
	(when (cat_at p7_3) (oneof (cat_at p6_3) (cat_at p7_2) (cat_at p8_3) (cat_at p7_4)) )
	(when (cat_at p7_4) (oneof (cat_at p6_4) (cat_at p7_3) (cat_at p8_4) (cat_at p7_5)) )
	(when (cat_at p7_5) (oneof (cat_at p6_5) (cat_at p7_4) (cat_at p8_5) (cat_at p7_6)) )
	(when (cat_at p7_6) (oneof (cat_at p6_6) (cat_at p7_5) (cat_at p8_6) (cat_at p7_7)) )
	(when (cat_at p7_7) (oneof (cat_at p6_7) (cat_at p7_6) (cat_at p8_7) (cat_at p7_8)) )
	(when (cat_at p7_8) (oneof (cat_at p6_8) (cat_at p7_7) (cat_at p8_8) (cat_at p7_9)) )
	(when (cat_at p7_9) (oneof (cat_at p6_9) (cat_at p7_8) (cat_at p8_9) (cat_at p7_10)) )
	(when (cat_at p7_10) (oneof (cat_at p6_10) (cat_at p7_9) (cat_at p8_10) (cat_at p7_11)) )
	(when (cat_at p7_11) (oneof (cat_at p6_11) (cat_at p7_10) (cat_at p8_11) (cat_at p7_12)) )
	(when (cat_at p7_12) (oneof (cat_at p6_12) (cat_at p7_11) (cat_at p8_12) (cat_at p7_13)) )
	(when (cat_at p7_13) (oneof (cat_at p6_13) (cat_at p7_12) (cat_at p8_13) (cat_at p7_14)) )
	(when (cat_at p7_14) (oneof (cat_at p6_14) (cat_at p7_13) (cat_at p8_14) (cat_at p7_15)) )
	(when (cat_at p7_15) (oneof (cat_at p6_15) (cat_at p7_14) (cat_at p8_15) (cat_at p7_16)) )
	(when (cat_at p7_16) (oneof (cat_at p6_16) (cat_at p7_15) (cat_at p8_16) (cat_at p7_17)) )
	(when (cat_at p7_17) (oneof (cat_at p6_17) (cat_at p7_16) (cat_at p8_17) (cat_at p7_18)) )
	(when (cat_at p7_18) (oneof (cat_at p6_18) (cat_at p7_17) (cat_at p8_18) (cat_at p7_19)) )
	(when (cat_at p7_19) (oneof (cat_at p6_19) (cat_at p7_18) (cat_at p8_19) (cat_at p7_20)) )
	(when (cat_at p7_20) (oneof (cat_at p6_20) (cat_at p7_19) (cat_at p8_20) (cat_at p7_21)) )
	(when (cat_at p7_21) (oneof (cat_at p6_21) (cat_at p7_20) (cat_at p8_21) (cat_at p7_22)) )
	(when (cat_at p7_22) (oneof (cat_at p6_22) (cat_at p7_21) (cat_at p8_22) (cat_at p7_23)) )
	(when (cat_at p7_23) (oneof (cat_at p6_23) (cat_at p7_22) (cat_at p8_23) (cat_at p7_24)) )
	(when (cat_at p7_24) (oneof (cat_at p6_24) (cat_at p7_23) (cat_at p8_24) (cat_at p7_25)) )
	(when (cat_at p7_25) (oneof (cat_at p6_25) (cat_at p7_24) (cat_at p8_25) (cat_at p7_26)) )
	(when (cat_at p7_26) (oneof (cat_at p6_26) (cat_at p7_25) (cat_at p8_26) (cat_at p7_27)) )
	(when (cat_at p7_27) (oneof (cat_at p6_27) (cat_at p7_26) (cat_at p8_27) (cat_at p7_28)) )
	(when (cat_at p7_28) (oneof (cat_at p6_28) (cat_at p7_27) (cat_at p8_28) (cat_at p7_29)) )
	(when (cat_at p7_29) (oneof (cat_at p6_29) (cat_at p7_28) (cat_at p8_29) (cat_at p7_30)) )
	(when (cat_at p7_30) (oneof (cat_at p6_30) (cat_at p7_29) (cat_at p8_30) (cat_at p7_31)) )
	(when (cat_at p7_31) (oneof (cat_at p6_31) (cat_at p7_30) (cat_at p8_31) (cat_at p7_32)) )
	(when (cat_at p7_32) (oneof (cat_at p6_32) (cat_at p7_31) (cat_at p8_32) (cat_at p7_33)) )
	(when (cat_at p7_33) (oneof (cat_at p6_33) (cat_at p7_32) (cat_at p8_33) (cat_at p7_34)) )
	(when (cat_at p7_34) (oneof (cat_at p6_34) (cat_at p7_33) (cat_at p8_34) (cat_at p7_35)) )
	(when (cat_at p7_35) (oneof (cat_at p6_35) (cat_at p7_34) (cat_at p8_35) (cat_at p7_36)) )
	(when (cat_at p7_36) (oneof (cat_at p6_36) (cat_at p7_35) (cat_at p8_36) (cat_at p7_37)) )
	(when (cat_at p7_37) (oneof (cat_at p6_37) (cat_at p7_36) (cat_at p8_37) (cat_at p7_38)) )
	(when (cat_at p7_38) (oneof (cat_at p6_38) (cat_at p7_37) (cat_at p8_38) (cat_at p7_39)) )
	(when (cat_at p7_39) (oneof (cat_at p6_39) (cat_at p7_38) (cat_at p8_39) (cat_at p7_40)) )
	(when (cat_at p7_40) (oneof (cat_at p6_40) (cat_at p7_39) (cat_at p8_40)) )
	(when (cat_at p8_1) (oneof (cat_at p7_1) (cat_at p9_1) (cat_at p8_2)) )
	(when (cat_at p8_2) (oneof (cat_at p7_2) (cat_at p8_1) (cat_at p9_2) (cat_at p8_3)) )
	(when (cat_at p8_3) (oneof (cat_at p7_3) (cat_at p8_2) (cat_at p9_3) (cat_at p8_4)) )
	(when (cat_at p8_4) (oneof (cat_at p7_4) (cat_at p8_3) (cat_at p9_4) (cat_at p8_5)) )
	(when (cat_at p8_5) (oneof (cat_at p7_5) (cat_at p8_4) (cat_at p9_5) (cat_at p8_6)) )
	(when (cat_at p8_6) (oneof (cat_at p7_6) (cat_at p8_5) (cat_at p9_6) (cat_at p8_7)) )
	(when (cat_at p8_7) (oneof (cat_at p7_7) (cat_at p8_6) (cat_at p9_7) (cat_at p8_8)) )
	(when (cat_at p8_8) (oneof (cat_at p7_8) (cat_at p8_7) (cat_at p9_8) (cat_at p8_9)) )
	(when (cat_at p8_9) (oneof (cat_at p7_9) (cat_at p8_8) (cat_at p9_9) (cat_at p8_10)) )
	(when (cat_at p8_10) (oneof (cat_at p7_10) (cat_at p8_9) (cat_at p9_10) (cat_at p8_11)) )
	(when (cat_at p8_11) (oneof (cat_at p7_11) (cat_at p8_10) (cat_at p9_11) (cat_at p8_12)) )
	(when (cat_at p8_12) (oneof (cat_at p7_12) (cat_at p8_11) (cat_at p9_12) (cat_at p8_13)) )
	(when (cat_at p8_13) (oneof (cat_at p7_13) (cat_at p8_12) (cat_at p9_13) (cat_at p8_14)) )
	(when (cat_at p8_14) (oneof (cat_at p7_14) (cat_at p8_13) (cat_at p9_14) (cat_at p8_15)) )
	(when (cat_at p8_15) (oneof (cat_at p7_15) (cat_at p8_14) (cat_at p9_15) (cat_at p8_16)) )
	(when (cat_at p8_16) (oneof (cat_at p7_16) (cat_at p8_15) (cat_at p9_16) (cat_at p8_17)) )
	(when (cat_at p8_17) (oneof (cat_at p7_17) (cat_at p8_16) (cat_at p9_17) (cat_at p8_18)) )
	(when (cat_at p8_18) (oneof (cat_at p7_18) (cat_at p8_17) (cat_at p9_18) (cat_at p8_19)) )
	(when (cat_at p8_19) (oneof (cat_at p7_19) (cat_at p8_18) (cat_at p9_19) (cat_at p8_20)) )
	(when (cat_at p8_20) (oneof (cat_at p7_20) (cat_at p8_19) (cat_at p9_20) (cat_at p8_21)) )
	(when (cat_at p8_21) (oneof (cat_at p7_21) (cat_at p8_20) (cat_at p9_21) (cat_at p8_22)) )
	(when (cat_at p8_22) (oneof (cat_at p7_22) (cat_at p8_21) (cat_at p9_22) (cat_at p8_23)) )
	(when (cat_at p8_23) (oneof (cat_at p7_23) (cat_at p8_22) (cat_at p9_23) (cat_at p8_24)) )
	(when (cat_at p8_24) (oneof (cat_at p7_24) (cat_at p8_23) (cat_at p9_24) (cat_at p8_25)) )
	(when (cat_at p8_25) (oneof (cat_at p7_25) (cat_at p8_24) (cat_at p9_25) (cat_at p8_26)) )
	(when (cat_at p8_26) (oneof (cat_at p7_26) (cat_at p8_25) (cat_at p9_26) (cat_at p8_27)) )
	(when (cat_at p8_27) (oneof (cat_at p7_27) (cat_at p8_26) (cat_at p9_27) (cat_at p8_28)) )
	(when (cat_at p8_28) (oneof (cat_at p7_28) (cat_at p8_27) (cat_at p9_28) (cat_at p8_29)) )
	(when (cat_at p8_29) (oneof (cat_at p7_29) (cat_at p8_28) (cat_at p9_29) (cat_at p8_30)) )
	(when (cat_at p8_30) (oneof (cat_at p7_30) (cat_at p8_29) (cat_at p9_30) (cat_at p8_31)) )
	(when (cat_at p8_31) (oneof (cat_at p7_31) (cat_at p8_30) (cat_at p9_31) (cat_at p8_32)) )
	(when (cat_at p8_32) (oneof (cat_at p7_32) (cat_at p8_31) (cat_at p9_32) (cat_at p8_33)) )
	(when (cat_at p8_33) (oneof (cat_at p7_33) (cat_at p8_32) (cat_at p9_33) (cat_at p8_34)) )
	(when (cat_at p8_34) (oneof (cat_at p7_34) (cat_at p8_33) (cat_at p9_34) (cat_at p8_35)) )
	(when (cat_at p8_35) (oneof (cat_at p7_35) (cat_at p8_34) (cat_at p9_35) (cat_at p8_36)) )
	(when (cat_at p8_36) (oneof (cat_at p7_36) (cat_at p8_35) (cat_at p9_36) (cat_at p8_37)) )
	(when (cat_at p8_37) (oneof (cat_at p7_37) (cat_at p8_36) (cat_at p9_37) (cat_at p8_38)) )
	(when (cat_at p8_38) (oneof (cat_at p7_38) (cat_at p8_37) (cat_at p9_38) (cat_at p8_39)) )
	(when (cat_at p8_39) (oneof (cat_at p7_39) (cat_at p8_38) (cat_at p9_39) (cat_at p8_40)) )
	(when (cat_at p8_40) (oneof (cat_at p7_40) (cat_at p8_39) (cat_at p9_40)) )
	(when (cat_at p9_1) (oneof (cat_at p8_1) (cat_at p10_1) (cat_at p9_2)) )
	(when (cat_at p9_2) (oneof (cat_at p8_2) (cat_at p9_1) (cat_at p10_2) (cat_at p9_3)) )
	(when (cat_at p9_3) (oneof (cat_at p8_3) (cat_at p9_2) (cat_at p10_3) (cat_at p9_4)) )
	(when (cat_at p9_4) (oneof (cat_at p8_4) (cat_at p9_3) (cat_at p10_4) (cat_at p9_5)) )
	(when (cat_at p9_5) (oneof (cat_at p8_5) (cat_at p9_4) (cat_at p10_5) (cat_at p9_6)) )
	(when (cat_at p9_6) (oneof (cat_at p8_6) (cat_at p9_5) (cat_at p10_6) (cat_at p9_7)) )
	(when (cat_at p9_7) (oneof (cat_at p8_7) (cat_at p9_6) (cat_at p10_7) (cat_at p9_8)) )
	(when (cat_at p9_8) (oneof (cat_at p8_8) (cat_at p9_7) (cat_at p10_8) (cat_at p9_9)) )
	(when (cat_at p9_9) (oneof (cat_at p8_9) (cat_at p9_8) (cat_at p10_9) (cat_at p9_10)) )
	(when (cat_at p9_10) (oneof (cat_at p8_10) (cat_at p9_9) (cat_at p10_10) (cat_at p9_11)) )
	(when (cat_at p9_11) (oneof (cat_at p8_11) (cat_at p9_10) (cat_at p10_11) (cat_at p9_12)) )
	(when (cat_at p9_12) (oneof (cat_at p8_12) (cat_at p9_11) (cat_at p10_12) (cat_at p9_13)) )
	(when (cat_at p9_13) (oneof (cat_at p8_13) (cat_at p9_12) (cat_at p10_13) (cat_at p9_14)) )
	(when (cat_at p9_14) (oneof (cat_at p8_14) (cat_at p9_13) (cat_at p10_14) (cat_at p9_15)) )
	(when (cat_at p9_15) (oneof (cat_at p8_15) (cat_at p9_14) (cat_at p10_15) (cat_at p9_16)) )
	(when (cat_at p9_16) (oneof (cat_at p8_16) (cat_at p9_15) (cat_at p10_16) (cat_at p9_17)) )
	(when (cat_at p9_17) (oneof (cat_at p8_17) (cat_at p9_16) (cat_at p10_17) (cat_at p9_18)) )
	(when (cat_at p9_18) (oneof (cat_at p8_18) (cat_at p9_17) (cat_at p10_18) (cat_at p9_19)) )
	(when (cat_at p9_19) (oneof (cat_at p8_19) (cat_at p9_18) (cat_at p10_19) (cat_at p9_20)) )
	(when (cat_at p9_20) (oneof (cat_at p8_20) (cat_at p9_19) (cat_at p10_20) (cat_at p9_21)) )
	(when (cat_at p9_21) (oneof (cat_at p8_21) (cat_at p9_20) (cat_at p10_21) (cat_at p9_22)) )
	(when (cat_at p9_22) (oneof (cat_at p8_22) (cat_at p9_21) (cat_at p10_22) (cat_at p9_23)) )
	(when (cat_at p9_23) (oneof (cat_at p8_23) (cat_at p9_22) (cat_at p10_23) (cat_at p9_24)) )
	(when (cat_at p9_24) (oneof (cat_at p8_24) (cat_at p9_23) (cat_at p10_24) (cat_at p9_25)) )
	(when (cat_at p9_25) (oneof (cat_at p8_25) (cat_at p9_24) (cat_at p10_25) (cat_at p9_26)) )
	(when (cat_at p9_26) (oneof (cat_at p8_26) (cat_at p9_25) (cat_at p10_26) (cat_at p9_27)) )
	(when (cat_at p9_27) (oneof (cat_at p8_27) (cat_at p9_26) (cat_at p10_27) (cat_at p9_28)) )
	(when (cat_at p9_28) (oneof (cat_at p8_28) (cat_at p9_27) (cat_at p10_28) (cat_at p9_29)) )
	(when (cat_at p9_29) (oneof (cat_at p8_29) (cat_at p9_28) (cat_at p10_29) (cat_at p9_30)) )
	(when (cat_at p9_30) (oneof (cat_at p8_30) (cat_at p9_29) (cat_at p10_30) (cat_at p9_31)) )
	(when (cat_at p9_31) (oneof (cat_at p8_31) (cat_at p9_30) (cat_at p10_31) (cat_at p9_32)) )
	(when (cat_at p9_32) (oneof (cat_at p8_32) (cat_at p9_31) (cat_at p10_32) (cat_at p9_33)) )
	(when (cat_at p9_33) (oneof (cat_at p8_33) (cat_at p9_32) (cat_at p10_33) (cat_at p9_34)) )
	(when (cat_at p9_34) (oneof (cat_at p8_34) (cat_at p9_33) (cat_at p10_34) (cat_at p9_35)) )
	(when (cat_at p9_35) (oneof (cat_at p8_35) (cat_at p9_34) (cat_at p10_35) (cat_at p9_36)) )
	(when (cat_at p9_36) (oneof (cat_at p8_36) (cat_at p9_35) (cat_at p10_36) (cat_at p9_37)) )
	(when (cat_at p9_37) (oneof (cat_at p8_37) (cat_at p9_36) (cat_at p10_37) (cat_at p9_38)) )
	(when (cat_at p9_38) (oneof (cat_at p8_38) (cat_at p9_37) (cat_at p10_38) (cat_at p9_39)) )
	(when (cat_at p9_39) (oneof (cat_at p8_39) (cat_at p9_38) (cat_at p10_39) (cat_at p9_40)) )
	(when (cat_at p9_40) (oneof (cat_at p8_40) (cat_at p9_39) (cat_at p10_40)) )
	(when (cat_at p10_1) (oneof (cat_at p9_1) (cat_at p11_1) (cat_at p10_2)) )
	(when (cat_at p10_2) (oneof (cat_at p9_2) (cat_at p10_1) (cat_at p11_2) (cat_at p10_3)) )
	(when (cat_at p10_3) (oneof (cat_at p9_3) (cat_at p10_2) (cat_at p11_3) (cat_at p10_4)) )
	(when (cat_at p10_4) (oneof (cat_at p9_4) (cat_at p10_3) (cat_at p11_4) (cat_at p10_5)) )
	(when (cat_at p10_5) (oneof (cat_at p9_5) (cat_at p10_4) (cat_at p11_5) (cat_at p10_6)) )
	(when (cat_at p10_6) (oneof (cat_at p9_6) (cat_at p10_5) (cat_at p11_6) (cat_at p10_7)) )
	(when (cat_at p10_7) (oneof (cat_at p9_7) (cat_at p10_6) (cat_at p11_7) (cat_at p10_8)) )
	(when (cat_at p10_8) (oneof (cat_at p9_8) (cat_at p10_7) (cat_at p11_8) (cat_at p10_9)) )
	(when (cat_at p10_9) (oneof (cat_at p9_9) (cat_at p10_8) (cat_at p11_9) (cat_at p10_10)) )
	(when (cat_at p10_10) (oneof (cat_at p9_10) (cat_at p10_9) (cat_at p11_10) (cat_at p10_11)) )
	(when (cat_at p10_11) (oneof (cat_at p9_11) (cat_at p10_10) (cat_at p11_11) (cat_at p10_12)) )
	(when (cat_at p10_12) (oneof (cat_at p9_12) (cat_at p10_11) (cat_at p11_12) (cat_at p10_13)) )
	(when (cat_at p10_13) (oneof (cat_at p9_13) (cat_at p10_12) (cat_at p11_13) (cat_at p10_14)) )
	(when (cat_at p10_14) (oneof (cat_at p9_14) (cat_at p10_13) (cat_at p11_14) (cat_at p10_15)) )
	(when (cat_at p10_15) (oneof (cat_at p9_15) (cat_at p10_14) (cat_at p11_15) (cat_at p10_16)) )
	(when (cat_at p10_16) (oneof (cat_at p9_16) (cat_at p10_15) (cat_at p11_16) (cat_at p10_17)) )
	(when (cat_at p10_17) (oneof (cat_at p9_17) (cat_at p10_16) (cat_at p11_17) (cat_at p10_18)) )
	(when (cat_at p10_18) (oneof (cat_at p9_18) (cat_at p10_17) (cat_at p11_18) (cat_at p10_19)) )
	(when (cat_at p10_19) (oneof (cat_at p9_19) (cat_at p10_18) (cat_at p11_19) (cat_at p10_20)) )
	(when (cat_at p10_20) (oneof (cat_at p9_20) (cat_at p10_19) (cat_at p11_20) (cat_at p10_21)) )
	(when (cat_at p10_21) (oneof (cat_at p9_21) (cat_at p10_20) (cat_at p11_21) (cat_at p10_22)) )
	(when (cat_at p10_22) (oneof (cat_at p9_22) (cat_at p10_21) (cat_at p11_22) (cat_at p10_23)) )
	(when (cat_at p10_23) (oneof (cat_at p9_23) (cat_at p10_22) (cat_at p11_23) (cat_at p10_24)) )
	(when (cat_at p10_24) (oneof (cat_at p9_24) (cat_at p10_23) (cat_at p11_24) (cat_at p10_25)) )
	(when (cat_at p10_25) (oneof (cat_at p9_25) (cat_at p10_24) (cat_at p11_25) (cat_at p10_26)) )
	(when (cat_at p10_26) (oneof (cat_at p9_26) (cat_at p10_25) (cat_at p11_26) (cat_at p10_27)) )
	(when (cat_at p10_27) (oneof (cat_at p9_27) (cat_at p10_26) (cat_at p11_27) (cat_at p10_28)) )
	(when (cat_at p10_28) (oneof (cat_at p9_28) (cat_at p10_27) (cat_at p11_28) (cat_at p10_29)) )
	(when (cat_at p10_29) (oneof (cat_at p9_29) (cat_at p10_28) (cat_at p11_29) (cat_at p10_30)) )
	(when (cat_at p10_30) (oneof (cat_at p9_30) (cat_at p10_29) (cat_at p11_30) (cat_at p10_31)) )
	(when (cat_at p10_31) (oneof (cat_at p9_31) (cat_at p10_30) (cat_at p11_31) (cat_at p10_32)) )
	(when (cat_at p10_32) (oneof (cat_at p9_32) (cat_at p10_31) (cat_at p11_32) (cat_at p10_33)) )
	(when (cat_at p10_33) (oneof (cat_at p9_33) (cat_at p10_32) (cat_at p11_33) (cat_at p10_34)) )
	(when (cat_at p10_34) (oneof (cat_at p9_34) (cat_at p10_33) (cat_at p11_34) (cat_at p10_35)) )
	(when (cat_at p10_35) (oneof (cat_at p9_35) (cat_at p10_34) (cat_at p11_35) (cat_at p10_36)) )
	(when (cat_at p10_36) (oneof (cat_at p9_36) (cat_at p10_35) (cat_at p11_36) (cat_at p10_37)) )
	(when (cat_at p10_37) (oneof (cat_at p9_37) (cat_at p10_36) (cat_at p11_37) (cat_at p10_38)) )
	(when (cat_at p10_38) (oneof (cat_at p9_38) (cat_at p10_37) (cat_at p11_38) (cat_at p10_39)) )
	(when (cat_at p10_39) (oneof (cat_at p9_39) (cat_at p10_38) (cat_at p11_39) (cat_at p10_40)) )
	(when (cat_at p10_40) (oneof (cat_at p9_40) (cat_at p10_39) (cat_at p11_40)) )
	(when (cat_at p11_1) (oneof (cat_at p10_1) (cat_at p12_1) (cat_at p11_2)) )
	(when (cat_at p11_2) (oneof (cat_at p10_2) (cat_at p11_1) (cat_at p12_2) (cat_at p11_3)) )
	(when (cat_at p11_3) (oneof (cat_at p10_3) (cat_at p11_2) (cat_at p12_3) (cat_at p11_4)) )
	(when (cat_at p11_4) (oneof (cat_at p10_4) (cat_at p11_3) (cat_at p12_4) (cat_at p11_5)) )
	(when (cat_at p11_5) (oneof (cat_at p10_5) (cat_at p11_4) (cat_at p12_5) (cat_at p11_6)) )
	(when (cat_at p11_6) (oneof (cat_at p10_6) (cat_at p11_5) (cat_at p12_6) (cat_at p11_7)) )
	(when (cat_at p11_7) (oneof (cat_at p10_7) (cat_at p11_6) (cat_at p12_7) (cat_at p11_8)) )
	(when (cat_at p11_8) (oneof (cat_at p10_8) (cat_at p11_7) (cat_at p12_8) (cat_at p11_9)) )
	(when (cat_at p11_9) (oneof (cat_at p10_9) (cat_at p11_8) (cat_at p12_9) (cat_at p11_10)) )
	(when (cat_at p11_10) (oneof (cat_at p10_10) (cat_at p11_9) (cat_at p12_10) (cat_at p11_11)) )
	(when (cat_at p11_11) (oneof (cat_at p10_11) (cat_at p11_10) (cat_at p12_11) (cat_at p11_12)) )
	(when (cat_at p11_12) (oneof (cat_at p10_12) (cat_at p11_11) (cat_at p12_12) (cat_at p11_13)) )
	(when (cat_at p11_13) (oneof (cat_at p10_13) (cat_at p11_12) (cat_at p12_13) (cat_at p11_14)) )
	(when (cat_at p11_14) (oneof (cat_at p10_14) (cat_at p11_13) (cat_at p12_14) (cat_at p11_15)) )
	(when (cat_at p11_15) (oneof (cat_at p10_15) (cat_at p11_14) (cat_at p12_15) (cat_at p11_16)) )
	(when (cat_at p11_16) (oneof (cat_at p10_16) (cat_at p11_15) (cat_at p12_16) (cat_at p11_17)) )
	(when (cat_at p11_17) (oneof (cat_at p10_17) (cat_at p11_16) (cat_at p12_17) (cat_at p11_18)) )
	(when (cat_at p11_18) (oneof (cat_at p10_18) (cat_at p11_17) (cat_at p12_18) (cat_at p11_19)) )
	(when (cat_at p11_19) (oneof (cat_at p10_19) (cat_at p11_18) (cat_at p12_19) (cat_at p11_20)) )
	(when (cat_at p11_20) (oneof (cat_at p10_20) (cat_at p11_19) (cat_at p12_20) (cat_at p11_21)) )
	(when (cat_at p11_21) (oneof (cat_at p10_21) (cat_at p11_20) (cat_at p12_21) (cat_at p11_22)) )
	(when (cat_at p11_22) (oneof (cat_at p10_22) (cat_at p11_21) (cat_at p12_22) (cat_at p11_23)) )
	(when (cat_at p11_23) (oneof (cat_at p10_23) (cat_at p11_22) (cat_at p12_23) (cat_at p11_24)) )
	(when (cat_at p11_24) (oneof (cat_at p10_24) (cat_at p11_23) (cat_at p12_24) (cat_at p11_25)) )
	(when (cat_at p11_25) (oneof (cat_at p10_25) (cat_at p11_24) (cat_at p12_25) (cat_at p11_26)) )
	(when (cat_at p11_26) (oneof (cat_at p10_26) (cat_at p11_25) (cat_at p12_26) (cat_at p11_27)) )
	(when (cat_at p11_27) (oneof (cat_at p10_27) (cat_at p11_26) (cat_at p12_27) (cat_at p11_28)) )
	(when (cat_at p11_28) (oneof (cat_at p10_28) (cat_at p11_27) (cat_at p12_28) (cat_at p11_29)) )
	(when (cat_at p11_29) (oneof (cat_at p10_29) (cat_at p11_28) (cat_at p12_29) (cat_at p11_30)) )
	(when (cat_at p11_30) (oneof (cat_at p10_30) (cat_at p11_29) (cat_at p12_30) (cat_at p11_31)) )
	(when (cat_at p11_31) (oneof (cat_at p10_31) (cat_at p11_30) (cat_at p12_31) (cat_at p11_32)) )
	(when (cat_at p11_32) (oneof (cat_at p10_32) (cat_at p11_31) (cat_at p12_32) (cat_at p11_33)) )
	(when (cat_at p11_33) (oneof (cat_at p10_33) (cat_at p11_32) (cat_at p12_33) (cat_at p11_34)) )
	(when (cat_at p11_34) (oneof (cat_at p10_34) (cat_at p11_33) (cat_at p12_34) (cat_at p11_35)) )
	(when (cat_at p11_35) (oneof (cat_at p10_35) (cat_at p11_34) (cat_at p12_35) (cat_at p11_36)) )
	(when (cat_at p11_36) (oneof (cat_at p10_36) (cat_at p11_35) (cat_at p12_36) (cat_at p11_37)) )
	(when (cat_at p11_37) (oneof (cat_at p10_37) (cat_at p11_36) (cat_at p12_37) (cat_at p11_38)) )
	(when (cat_at p11_38) (oneof (cat_at p10_38) (cat_at p11_37) (cat_at p12_38) (cat_at p11_39)) )
	(when (cat_at p11_39) (oneof (cat_at p10_39) (cat_at p11_38) (cat_at p12_39) (cat_at p11_40)) )
	(when (cat_at p11_40) (oneof (cat_at p10_40) (cat_at p11_39) (cat_at p12_40)) )
	(when (cat_at p12_1) (oneof (cat_at p11_1) (cat_at p13_1) (cat_at p12_2)) )
	(when (cat_at p12_2) (oneof (cat_at p11_2) (cat_at p12_1) (cat_at p13_2) (cat_at p12_3)) )
	(when (cat_at p12_3) (oneof (cat_at p11_3) (cat_at p12_2) (cat_at p13_3) (cat_at p12_4)) )
	(when (cat_at p12_4) (oneof (cat_at p11_4) (cat_at p12_3) (cat_at p13_4) (cat_at p12_5)) )
	(when (cat_at p12_5) (oneof (cat_at p11_5) (cat_at p12_4) (cat_at p13_5) (cat_at p12_6)) )
	(when (cat_at p12_6) (oneof (cat_at p11_6) (cat_at p12_5) (cat_at p13_6) (cat_at p12_7)) )
	(when (cat_at p12_7) (oneof (cat_at p11_7) (cat_at p12_6) (cat_at p13_7) (cat_at p12_8)) )
	(when (cat_at p12_8) (oneof (cat_at p11_8) (cat_at p12_7) (cat_at p13_8) (cat_at p12_9)) )
	(when (cat_at p12_9) (oneof (cat_at p11_9) (cat_at p12_8) (cat_at p13_9) (cat_at p12_10)) )
	(when (cat_at p12_10) (oneof (cat_at p11_10) (cat_at p12_9) (cat_at p13_10) (cat_at p12_11)) )
	(when (cat_at p12_11) (oneof (cat_at p11_11) (cat_at p12_10) (cat_at p13_11) (cat_at p12_12)) )
	(when (cat_at p12_12) (oneof (cat_at p11_12) (cat_at p12_11) (cat_at p13_12) (cat_at p12_13)) )
	(when (cat_at p12_13) (oneof (cat_at p11_13) (cat_at p12_12) (cat_at p13_13) (cat_at p12_14)) )
	(when (cat_at p12_14) (oneof (cat_at p11_14) (cat_at p12_13) (cat_at p13_14) (cat_at p12_15)) )
	(when (cat_at p12_15) (oneof (cat_at p11_15) (cat_at p12_14) (cat_at p13_15) (cat_at p12_16)) )
	(when (cat_at p12_16) (oneof (cat_at p11_16) (cat_at p12_15) (cat_at p13_16) (cat_at p12_17)) )
	(when (cat_at p12_17) (oneof (cat_at p11_17) (cat_at p12_16) (cat_at p13_17) (cat_at p12_18)) )
	(when (cat_at p12_18) (oneof (cat_at p11_18) (cat_at p12_17) (cat_at p13_18) (cat_at p12_19)) )
	(when (cat_at p12_19) (oneof (cat_at p11_19) (cat_at p12_18) (cat_at p13_19) (cat_at p12_20)) )
	(when (cat_at p12_20) (oneof (cat_at p11_20) (cat_at p12_19) (cat_at p13_20) (cat_at p12_21)) )
	(when (cat_at p12_21) (oneof (cat_at p11_21) (cat_at p12_20) (cat_at p13_21) (cat_at p12_22)) )
	(when (cat_at p12_22) (oneof (cat_at p11_22) (cat_at p12_21) (cat_at p13_22) (cat_at p12_23)) )
	(when (cat_at p12_23) (oneof (cat_at p11_23) (cat_at p12_22) (cat_at p13_23) (cat_at p12_24)) )
	(when (cat_at p12_24) (oneof (cat_at p11_24) (cat_at p12_23) (cat_at p13_24) (cat_at p12_25)) )
	(when (cat_at p12_25) (oneof (cat_at p11_25) (cat_at p12_24) (cat_at p13_25) (cat_at p12_26)) )
	(when (cat_at p12_26) (oneof (cat_at p11_26) (cat_at p12_25) (cat_at p13_26) (cat_at p12_27)) )
	(when (cat_at p12_27) (oneof (cat_at p11_27) (cat_at p12_26) (cat_at p13_27) (cat_at p12_28)) )
	(when (cat_at p12_28) (oneof (cat_at p11_28) (cat_at p12_27) (cat_at p13_28) (cat_at p12_29)) )
	(when (cat_at p12_29) (oneof (cat_at p11_29) (cat_at p12_28) (cat_at p13_29) (cat_at p12_30)) )
	(when (cat_at p12_30) (oneof (cat_at p11_30) (cat_at p12_29) (cat_at p13_30) (cat_at p12_31)) )
	(when (cat_at p12_31) (oneof (cat_at p11_31) (cat_at p12_30) (cat_at p13_31) (cat_at p12_32)) )
	(when (cat_at p12_32) (oneof (cat_at p11_32) (cat_at p12_31) (cat_at p13_32) (cat_at p12_33)) )
	(when (cat_at p12_33) (oneof (cat_at p11_33) (cat_at p12_32) (cat_at p13_33) (cat_at p12_34)) )
	(when (cat_at p12_34) (oneof (cat_at p11_34) (cat_at p12_33) (cat_at p13_34) (cat_at p12_35)) )
	(when (cat_at p12_35) (oneof (cat_at p11_35) (cat_at p12_34) (cat_at p13_35) (cat_at p12_36)) )
	(when (cat_at p12_36) (oneof (cat_at p11_36) (cat_at p12_35) (cat_at p13_36) (cat_at p12_37)) )
	(when (cat_at p12_37) (oneof (cat_at p11_37) (cat_at p12_36) (cat_at p13_37) (cat_at p12_38)) )
	(when (cat_at p12_38) (oneof (cat_at p11_38) (cat_at p12_37) (cat_at p13_38) (cat_at p12_39)) )
	(when (cat_at p12_39) (oneof (cat_at p11_39) (cat_at p12_38) (cat_at p13_39) (cat_at p12_40)) )
	(when (cat_at p12_40) (oneof (cat_at p11_40) (cat_at p12_39) (cat_at p13_40)) )
	(when (cat_at p13_1) (oneof (cat_at p12_1) (cat_at p14_1) (cat_at p13_2)) )
	(when (cat_at p13_2) (oneof (cat_at p12_2) (cat_at p13_1) (cat_at p14_2) (cat_at p13_3)) )
	(when (cat_at p13_3) (oneof (cat_at p12_3) (cat_at p13_2) (cat_at p14_3) (cat_at p13_4)) )
	(when (cat_at p13_4) (oneof (cat_at p12_4) (cat_at p13_3) (cat_at p14_4) (cat_at p13_5)) )
	(when (cat_at p13_5) (oneof (cat_at p12_5) (cat_at p13_4) (cat_at p14_5) (cat_at p13_6)) )
	(when (cat_at p13_6) (oneof (cat_at p12_6) (cat_at p13_5) (cat_at p14_6) (cat_at p13_7)) )
	(when (cat_at p13_7) (oneof (cat_at p12_7) (cat_at p13_6) (cat_at p14_7) (cat_at p13_8)) )
	(when (cat_at p13_8) (oneof (cat_at p12_8) (cat_at p13_7) (cat_at p14_8) (cat_at p13_9)) )
	(when (cat_at p13_9) (oneof (cat_at p12_9) (cat_at p13_8) (cat_at p14_9) (cat_at p13_10)) )
	(when (cat_at p13_10) (oneof (cat_at p12_10) (cat_at p13_9) (cat_at p14_10) (cat_at p13_11)) )
	(when (cat_at p13_11) (oneof (cat_at p12_11) (cat_at p13_10) (cat_at p14_11) (cat_at p13_12)) )
	(when (cat_at p13_12) (oneof (cat_at p12_12) (cat_at p13_11) (cat_at p14_12) (cat_at p13_13)) )
	(when (cat_at p13_13) (oneof (cat_at p12_13) (cat_at p13_12) (cat_at p14_13) (cat_at p13_14)) )
	(when (cat_at p13_14) (oneof (cat_at p12_14) (cat_at p13_13) (cat_at p14_14) (cat_at p13_15)) )
	(when (cat_at p13_15) (oneof (cat_at p12_15) (cat_at p13_14) (cat_at p14_15) (cat_at p13_16)) )
	(when (cat_at p13_16) (oneof (cat_at p12_16) (cat_at p13_15) (cat_at p14_16) (cat_at p13_17)) )
	(when (cat_at p13_17) (oneof (cat_at p12_17) (cat_at p13_16) (cat_at p14_17) (cat_at p13_18)) )
	(when (cat_at p13_18) (oneof (cat_at p12_18) (cat_at p13_17) (cat_at p14_18) (cat_at p13_19)) )
	(when (cat_at p13_19) (oneof (cat_at p12_19) (cat_at p13_18) (cat_at p14_19) (cat_at p13_20)) )
	(when (cat_at p13_20) (oneof (cat_at p12_20) (cat_at p13_19) (cat_at p14_20) (cat_at p13_21)) )
	(when (cat_at p13_21) (oneof (cat_at p12_21) (cat_at p13_20) (cat_at p14_21) (cat_at p13_22)) )
	(when (cat_at p13_22) (oneof (cat_at p12_22) (cat_at p13_21) (cat_at p14_22) (cat_at p13_23)) )
	(when (cat_at p13_23) (oneof (cat_at p12_23) (cat_at p13_22) (cat_at p14_23) (cat_at p13_24)) )
	(when (cat_at p13_24) (oneof (cat_at p12_24) (cat_at p13_23) (cat_at p14_24) (cat_at p13_25)) )
	(when (cat_at p13_25) (oneof (cat_at p12_25) (cat_at p13_24) (cat_at p14_25) (cat_at p13_26)) )
	(when (cat_at p13_26) (oneof (cat_at p12_26) (cat_at p13_25) (cat_at p14_26) (cat_at p13_27)) )
	(when (cat_at p13_27) (oneof (cat_at p12_27) (cat_at p13_26) (cat_at p14_27) (cat_at p13_28)) )
	(when (cat_at p13_28) (oneof (cat_at p12_28) (cat_at p13_27) (cat_at p14_28) (cat_at p13_29)) )
	(when (cat_at p13_29) (oneof (cat_at p12_29) (cat_at p13_28) (cat_at p14_29) (cat_at p13_30)) )
	(when (cat_at p13_30) (oneof (cat_at p12_30) (cat_at p13_29) (cat_at p14_30) (cat_at p13_31)) )
	(when (cat_at p13_31) (oneof (cat_at p12_31) (cat_at p13_30) (cat_at p14_31) (cat_at p13_32)) )
	(when (cat_at p13_32) (oneof (cat_at p12_32) (cat_at p13_31) (cat_at p14_32) (cat_at p13_33)) )
	(when (cat_at p13_33) (oneof (cat_at p12_33) (cat_at p13_32) (cat_at p14_33) (cat_at p13_34)) )
	(when (cat_at p13_34) (oneof (cat_at p12_34) (cat_at p13_33) (cat_at p14_34) (cat_at p13_35)) )
	(when (cat_at p13_35) (oneof (cat_at p12_35) (cat_at p13_34) (cat_at p14_35) (cat_at p13_36)) )
	(when (cat_at p13_36) (oneof (cat_at p12_36) (cat_at p13_35) (cat_at p14_36) (cat_at p13_37)) )
	(when (cat_at p13_37) (oneof (cat_at p12_37) (cat_at p13_36) (cat_at p14_37) (cat_at p13_38)) )
	(when (cat_at p13_38) (oneof (cat_at p12_38) (cat_at p13_37) (cat_at p14_38) (cat_at p13_39)) )
	(when (cat_at p13_39) (oneof (cat_at p12_39) (cat_at p13_38) (cat_at p14_39) (cat_at p13_40)) )
	(when (cat_at p13_40) (oneof (cat_at p12_40) (cat_at p13_39) (cat_at p14_40)) )
	(when (cat_at p14_1) (oneof (cat_at p13_1) (cat_at p15_1) (cat_at p14_2)) )
	(when (cat_at p14_2) (oneof (cat_at p13_2) (cat_at p14_1) (cat_at p15_2) (cat_at p14_3)) )
	(when (cat_at p14_3) (oneof (cat_at p13_3) (cat_at p14_2) (cat_at p15_3) (cat_at p14_4)) )
	(when (cat_at p14_4) (oneof (cat_at p13_4) (cat_at p14_3) (cat_at p15_4) (cat_at p14_5)) )
	(when (cat_at p14_5) (oneof (cat_at p13_5) (cat_at p14_4) (cat_at p15_5) (cat_at p14_6)) )
	(when (cat_at p14_6) (oneof (cat_at p13_6) (cat_at p14_5) (cat_at p15_6) (cat_at p14_7)) )
	(when (cat_at p14_7) (oneof (cat_at p13_7) (cat_at p14_6) (cat_at p15_7) (cat_at p14_8)) )
	(when (cat_at p14_8) (oneof (cat_at p13_8) (cat_at p14_7) (cat_at p15_8) (cat_at p14_9)) )
	(when (cat_at p14_9) (oneof (cat_at p13_9) (cat_at p14_8) (cat_at p15_9) (cat_at p14_10)) )
	(when (cat_at p14_10) (oneof (cat_at p13_10) (cat_at p14_9) (cat_at p15_10) (cat_at p14_11)) )
	(when (cat_at p14_11) (oneof (cat_at p13_11) (cat_at p14_10) (cat_at p15_11) (cat_at p14_12)) )
	(when (cat_at p14_12) (oneof (cat_at p13_12) (cat_at p14_11) (cat_at p15_12) (cat_at p14_13)) )
	(when (cat_at p14_13) (oneof (cat_at p13_13) (cat_at p14_12) (cat_at p15_13) (cat_at p14_14)) )
	(when (cat_at p14_14) (oneof (cat_at p13_14) (cat_at p14_13) (cat_at p15_14) (cat_at p14_15)) )
	(when (cat_at p14_15) (oneof (cat_at p13_15) (cat_at p14_14) (cat_at p15_15) (cat_at p14_16)) )
	(when (cat_at p14_16) (oneof (cat_at p13_16) (cat_at p14_15) (cat_at p15_16) (cat_at p14_17)) )
	(when (cat_at p14_17) (oneof (cat_at p13_17) (cat_at p14_16) (cat_at p15_17) (cat_at p14_18)) )
	(when (cat_at p14_18) (oneof (cat_at p13_18) (cat_at p14_17) (cat_at p15_18) (cat_at p14_19)) )
	(when (cat_at p14_19) (oneof (cat_at p13_19) (cat_at p14_18) (cat_at p15_19) (cat_at p14_20)) )
	(when (cat_at p14_20) (oneof (cat_at p13_20) (cat_at p14_19) (cat_at p15_20) (cat_at p14_21)) )
	(when (cat_at p14_21) (oneof (cat_at p13_21) (cat_at p14_20) (cat_at p15_21) (cat_at p14_22)) )
	(when (cat_at p14_22) (oneof (cat_at p13_22) (cat_at p14_21) (cat_at p15_22) (cat_at p14_23)) )
	(when (cat_at p14_23) (oneof (cat_at p13_23) (cat_at p14_22) (cat_at p15_23) (cat_at p14_24)) )
	(when (cat_at p14_24) (oneof (cat_at p13_24) (cat_at p14_23) (cat_at p15_24) (cat_at p14_25)) )
	(when (cat_at p14_25) (oneof (cat_at p13_25) (cat_at p14_24) (cat_at p15_25) (cat_at p14_26)) )
	(when (cat_at p14_26) (oneof (cat_at p13_26) (cat_at p14_25) (cat_at p15_26) (cat_at p14_27)) )
	(when (cat_at p14_27) (oneof (cat_at p13_27) (cat_at p14_26) (cat_at p15_27) (cat_at p14_28)) )
	(when (cat_at p14_28) (oneof (cat_at p13_28) (cat_at p14_27) (cat_at p15_28) (cat_at p14_29)) )
	(when (cat_at p14_29) (oneof (cat_at p13_29) (cat_at p14_28) (cat_at p15_29) (cat_at p14_30)) )
	(when (cat_at p14_30) (oneof (cat_at p13_30) (cat_at p14_29) (cat_at p15_30) (cat_at p14_31)) )
	(when (cat_at p14_31) (oneof (cat_at p13_31) (cat_at p14_30) (cat_at p15_31) (cat_at p14_32)) )
	(when (cat_at p14_32) (oneof (cat_at p13_32) (cat_at p14_31) (cat_at p15_32) (cat_at p14_33)) )
	(when (cat_at p14_33) (oneof (cat_at p13_33) (cat_at p14_32) (cat_at p15_33) (cat_at p14_34)) )
	(when (cat_at p14_34) (oneof (cat_at p13_34) (cat_at p14_33) (cat_at p15_34) (cat_at p14_35)) )
	(when (cat_at p14_35) (oneof (cat_at p13_35) (cat_at p14_34) (cat_at p15_35) (cat_at p14_36)) )
	(when (cat_at p14_36) (oneof (cat_at p13_36) (cat_at p14_35) (cat_at p15_36) (cat_at p14_37)) )
	(when (cat_at p14_37) (oneof (cat_at p13_37) (cat_at p14_36) (cat_at p15_37) (cat_at p14_38)) )
	(when (cat_at p14_38) (oneof (cat_at p13_38) (cat_at p14_37) (cat_at p15_38) (cat_at p14_39)) )
	(when (cat_at p14_39) (oneof (cat_at p13_39) (cat_at p14_38) (cat_at p15_39) (cat_at p14_40)) )
	(when (cat_at p14_40) (oneof (cat_at p13_40) (cat_at p14_39) (cat_at p15_40)) )
	(when (cat_at p15_1) (oneof (cat_at p14_1) (cat_at p16_1) (cat_at p15_2)) )
	(when (cat_at p15_2) (oneof (cat_at p14_2) (cat_at p15_1) (cat_at p16_2) (cat_at p15_3)) )
	(when (cat_at p15_3) (oneof (cat_at p14_3) (cat_at p15_2) (cat_at p16_3) (cat_at p15_4)) )
	(when (cat_at p15_4) (oneof (cat_at p14_4) (cat_at p15_3) (cat_at p16_4) (cat_at p15_5)) )
	(when (cat_at p15_5) (oneof (cat_at p14_5) (cat_at p15_4) (cat_at p16_5) (cat_at p15_6)) )
	(when (cat_at p15_6) (oneof (cat_at p14_6) (cat_at p15_5) (cat_at p16_6) (cat_at p15_7)) )
	(when (cat_at p15_7) (oneof (cat_at p14_7) (cat_at p15_6) (cat_at p16_7) (cat_at p15_8)) )
	(when (cat_at p15_8) (oneof (cat_at p14_8) (cat_at p15_7) (cat_at p16_8) (cat_at p15_9)) )
	(when (cat_at p15_9) (oneof (cat_at p14_9) (cat_at p15_8) (cat_at p16_9) (cat_at p15_10)) )
	(when (cat_at p15_10) (oneof (cat_at p14_10) (cat_at p15_9) (cat_at p16_10) (cat_at p15_11)) )
	(when (cat_at p15_11) (oneof (cat_at p14_11) (cat_at p15_10) (cat_at p16_11) (cat_at p15_12)) )
	(when (cat_at p15_12) (oneof (cat_at p14_12) (cat_at p15_11) (cat_at p16_12) (cat_at p15_13)) )
	(when (cat_at p15_13) (oneof (cat_at p14_13) (cat_at p15_12) (cat_at p16_13) (cat_at p15_14)) )
	(when (cat_at p15_14) (oneof (cat_at p14_14) (cat_at p15_13) (cat_at p16_14) (cat_at p15_15)) )
	(when (cat_at p15_15) (oneof (cat_at p14_15) (cat_at p15_14) (cat_at p16_15) (cat_at p15_16)) )
	(when (cat_at p15_16) (oneof (cat_at p14_16) (cat_at p15_15) (cat_at p16_16) (cat_at p15_17)) )
	(when (cat_at p15_17) (oneof (cat_at p14_17) (cat_at p15_16) (cat_at p16_17) (cat_at p15_18)) )
	(when (cat_at p15_18) (oneof (cat_at p14_18) (cat_at p15_17) (cat_at p16_18) (cat_at p15_19)) )
	(when (cat_at p15_19) (oneof (cat_at p14_19) (cat_at p15_18) (cat_at p16_19) (cat_at p15_20)) )
	(when (cat_at p15_20) (oneof (cat_at p14_20) (cat_at p15_19) (cat_at p16_20) (cat_at p15_21)) )
	(when (cat_at p15_21) (oneof (cat_at p14_21) (cat_at p15_20) (cat_at p16_21) (cat_at p15_22)) )
	(when (cat_at p15_22) (oneof (cat_at p14_22) (cat_at p15_21) (cat_at p16_22) (cat_at p15_23)) )
	(when (cat_at p15_23) (oneof (cat_at p14_23) (cat_at p15_22) (cat_at p16_23) (cat_at p15_24)) )
	(when (cat_at p15_24) (oneof (cat_at p14_24) (cat_at p15_23) (cat_at p16_24) (cat_at p15_25)) )
	(when (cat_at p15_25) (oneof (cat_at p14_25) (cat_at p15_24) (cat_at p16_25) (cat_at p15_26)) )
	(when (cat_at p15_26) (oneof (cat_at p14_26) (cat_at p15_25) (cat_at p16_26) (cat_at p15_27)) )
	(when (cat_at p15_27) (oneof (cat_at p14_27) (cat_at p15_26) (cat_at p16_27) (cat_at p15_28)) )
	(when (cat_at p15_28) (oneof (cat_at p14_28) (cat_at p15_27) (cat_at p16_28) (cat_at p15_29)) )
	(when (cat_at p15_29) (oneof (cat_at p14_29) (cat_at p15_28) (cat_at p16_29) (cat_at p15_30)) )
	(when (cat_at p15_30) (oneof (cat_at p14_30) (cat_at p15_29) (cat_at p16_30) (cat_at p15_31)) )
	(when (cat_at p15_31) (oneof (cat_at p14_31) (cat_at p15_30) (cat_at p16_31) (cat_at p15_32)) )
	(when (cat_at p15_32) (oneof (cat_at p14_32) (cat_at p15_31) (cat_at p16_32) (cat_at p15_33)) )
	(when (cat_at p15_33) (oneof (cat_at p14_33) (cat_at p15_32) (cat_at p16_33) (cat_at p15_34)) )
	(when (cat_at p15_34) (oneof (cat_at p14_34) (cat_at p15_33) (cat_at p16_34) (cat_at p15_35)) )
	(when (cat_at p15_35) (oneof (cat_at p14_35) (cat_at p15_34) (cat_at p16_35) (cat_at p15_36)) )
	(when (cat_at p15_36) (oneof (cat_at p14_36) (cat_at p15_35) (cat_at p16_36) (cat_at p15_37)) )
	(when (cat_at p15_37) (oneof (cat_at p14_37) (cat_at p15_36) (cat_at p16_37) (cat_at p15_38)) )
	(when (cat_at p15_38) (oneof (cat_at p14_38) (cat_at p15_37) (cat_at p16_38) (cat_at p15_39)) )
	(when (cat_at p15_39) (oneof (cat_at p14_39) (cat_at p15_38) (cat_at p16_39) (cat_at p15_40)) )
	(when (cat_at p15_40) (oneof (cat_at p14_40) (cat_at p15_39) (cat_at p16_40)) )
	(when (cat_at p16_1) (oneof (cat_at p15_1) (cat_at p17_1) (cat_at p16_2)) )
	(when (cat_at p16_2) (oneof (cat_at p15_2) (cat_at p16_1) (cat_at p17_2) (cat_at p16_3)) )
	(when (cat_at p16_3) (oneof (cat_at p15_3) (cat_at p16_2) (cat_at p17_3) (cat_at p16_4)) )
	(when (cat_at p16_4) (oneof (cat_at p15_4) (cat_at p16_3) (cat_at p17_4) (cat_at p16_5)) )
	(when (cat_at p16_5) (oneof (cat_at p15_5) (cat_at p16_4) (cat_at p17_5) (cat_at p16_6)) )
	(when (cat_at p16_6) (oneof (cat_at p15_6) (cat_at p16_5) (cat_at p17_6) (cat_at p16_7)) )
	(when (cat_at p16_7) (oneof (cat_at p15_7) (cat_at p16_6) (cat_at p17_7) (cat_at p16_8)) )
	(when (cat_at p16_8) (oneof (cat_at p15_8) (cat_at p16_7) (cat_at p17_8) (cat_at p16_9)) )
	(when (cat_at p16_9) (oneof (cat_at p15_9) (cat_at p16_8) (cat_at p17_9) (cat_at p16_10)) )
	(when (cat_at p16_10) (oneof (cat_at p15_10) (cat_at p16_9) (cat_at p17_10) (cat_at p16_11)) )
	(when (cat_at p16_11) (oneof (cat_at p15_11) (cat_at p16_10) (cat_at p17_11) (cat_at p16_12)) )
	(when (cat_at p16_12) (oneof (cat_at p15_12) (cat_at p16_11) (cat_at p17_12) (cat_at p16_13)) )
	(when (cat_at p16_13) (oneof (cat_at p15_13) (cat_at p16_12) (cat_at p17_13) (cat_at p16_14)) )
	(when (cat_at p16_14) (oneof (cat_at p15_14) (cat_at p16_13) (cat_at p17_14) (cat_at p16_15)) )
	(when (cat_at p16_15) (oneof (cat_at p15_15) (cat_at p16_14) (cat_at p17_15) (cat_at p16_16)) )
	(when (cat_at p16_16) (oneof (cat_at p15_16) (cat_at p16_15) (cat_at p17_16) (cat_at p16_17)) )
	(when (cat_at p16_17) (oneof (cat_at p15_17) (cat_at p16_16) (cat_at p17_17) (cat_at p16_18)) )
	(when (cat_at p16_18) (oneof (cat_at p15_18) (cat_at p16_17) (cat_at p17_18) (cat_at p16_19)) )
	(when (cat_at p16_19) (oneof (cat_at p15_19) (cat_at p16_18) (cat_at p17_19) (cat_at p16_20)) )
	(when (cat_at p16_20) (oneof (cat_at p15_20) (cat_at p16_19) (cat_at p17_20) (cat_at p16_21)) )
	(when (cat_at p16_21) (oneof (cat_at p15_21) (cat_at p16_20) (cat_at p17_21) (cat_at p16_22)) )
	(when (cat_at p16_22) (oneof (cat_at p15_22) (cat_at p16_21) (cat_at p17_22) (cat_at p16_23)) )
	(when (cat_at p16_23) (oneof (cat_at p15_23) (cat_at p16_22) (cat_at p17_23) (cat_at p16_24)) )
	(when (cat_at p16_24) (oneof (cat_at p15_24) (cat_at p16_23) (cat_at p17_24) (cat_at p16_25)) )
	(when (cat_at p16_25) (oneof (cat_at p15_25) (cat_at p16_24) (cat_at p17_25) (cat_at p16_26)) )
	(when (cat_at p16_26) (oneof (cat_at p15_26) (cat_at p16_25) (cat_at p17_26) (cat_at p16_27)) )
	(when (cat_at p16_27) (oneof (cat_at p15_27) (cat_at p16_26) (cat_at p17_27) (cat_at p16_28)) )
	(when (cat_at p16_28) (oneof (cat_at p15_28) (cat_at p16_27) (cat_at p17_28) (cat_at p16_29)) )
	(when (cat_at p16_29) (oneof (cat_at p15_29) (cat_at p16_28) (cat_at p17_29) (cat_at p16_30)) )
	(when (cat_at p16_30) (oneof (cat_at p15_30) (cat_at p16_29) (cat_at p17_30) (cat_at p16_31)) )
	(when (cat_at p16_31) (oneof (cat_at p15_31) (cat_at p16_30) (cat_at p17_31) (cat_at p16_32)) )
	(when (cat_at p16_32) (oneof (cat_at p15_32) (cat_at p16_31) (cat_at p17_32) (cat_at p16_33)) )
	(when (cat_at p16_33) (oneof (cat_at p15_33) (cat_at p16_32) (cat_at p17_33) (cat_at p16_34)) )
	(when (cat_at p16_34) (oneof (cat_at p15_34) (cat_at p16_33) (cat_at p17_34) (cat_at p16_35)) )
	(when (cat_at p16_35) (oneof (cat_at p15_35) (cat_at p16_34) (cat_at p17_35) (cat_at p16_36)) )
	(when (cat_at p16_36) (oneof (cat_at p15_36) (cat_at p16_35) (cat_at p17_36) (cat_at p16_37)) )
	(when (cat_at p16_37) (oneof (cat_at p15_37) (cat_at p16_36) (cat_at p17_37) (cat_at p16_38)) )
	(when (cat_at p16_38) (oneof (cat_at p15_38) (cat_at p16_37) (cat_at p17_38) (cat_at p16_39)) )
	(when (cat_at p16_39) (oneof (cat_at p15_39) (cat_at p16_38) (cat_at p17_39) (cat_at p16_40)) )
	(when (cat_at p16_40) (oneof (cat_at p15_40) (cat_at p16_39) (cat_at p17_40)) )
	(when (cat_at p17_1) (oneof (cat_at p16_1) (cat_at p18_1) (cat_at p17_2)) )
	(when (cat_at p17_2) (oneof (cat_at p16_2) (cat_at p17_1) (cat_at p18_2) (cat_at p17_3)) )
	(when (cat_at p17_3) (oneof (cat_at p16_3) (cat_at p17_2) (cat_at p18_3) (cat_at p17_4)) )
	(when (cat_at p17_4) (oneof (cat_at p16_4) (cat_at p17_3) (cat_at p18_4) (cat_at p17_5)) )
	(when (cat_at p17_5) (oneof (cat_at p16_5) (cat_at p17_4) (cat_at p18_5) (cat_at p17_6)) )
	(when (cat_at p17_6) (oneof (cat_at p16_6) (cat_at p17_5) (cat_at p18_6) (cat_at p17_7)) )
	(when (cat_at p17_7) (oneof (cat_at p16_7) (cat_at p17_6) (cat_at p18_7) (cat_at p17_8)) )
	(when (cat_at p17_8) (oneof (cat_at p16_8) (cat_at p17_7) (cat_at p18_8) (cat_at p17_9)) )
	(when (cat_at p17_9) (oneof (cat_at p16_9) (cat_at p17_8) (cat_at p18_9) (cat_at p17_10)) )
	(when (cat_at p17_10) (oneof (cat_at p16_10) (cat_at p17_9) (cat_at p18_10) (cat_at p17_11)) )
	(when (cat_at p17_11) (oneof (cat_at p16_11) (cat_at p17_10) (cat_at p18_11) (cat_at p17_12)) )
	(when (cat_at p17_12) (oneof (cat_at p16_12) (cat_at p17_11) (cat_at p18_12) (cat_at p17_13)) )
	(when (cat_at p17_13) (oneof (cat_at p16_13) (cat_at p17_12) (cat_at p18_13) (cat_at p17_14)) )
	(when (cat_at p17_14) (oneof (cat_at p16_14) (cat_at p17_13) (cat_at p18_14) (cat_at p17_15)) )
	(when (cat_at p17_15) (oneof (cat_at p16_15) (cat_at p17_14) (cat_at p18_15) (cat_at p17_16)) )
	(when (cat_at p17_16) (oneof (cat_at p16_16) (cat_at p17_15) (cat_at p18_16) (cat_at p17_17)) )
	(when (cat_at p17_17) (oneof (cat_at p16_17) (cat_at p17_16) (cat_at p18_17) (cat_at p17_18)) )
	(when (cat_at p17_18) (oneof (cat_at p16_18) (cat_at p17_17) (cat_at p18_18) (cat_at p17_19)) )
	(when (cat_at p17_19) (oneof (cat_at p16_19) (cat_at p17_18) (cat_at p18_19) (cat_at p17_20)) )
	(when (cat_at p17_20) (oneof (cat_at p16_20) (cat_at p17_19) (cat_at p18_20) (cat_at p17_21)) )
	(when (cat_at p17_21) (oneof (cat_at p16_21) (cat_at p17_20) (cat_at p18_21) (cat_at p17_22)) )
	(when (cat_at p17_22) (oneof (cat_at p16_22) (cat_at p17_21) (cat_at p18_22) (cat_at p17_23)) )
	(when (cat_at p17_23) (oneof (cat_at p16_23) (cat_at p17_22) (cat_at p18_23) (cat_at p17_24)) )
	(when (cat_at p17_24) (oneof (cat_at p16_24) (cat_at p17_23) (cat_at p18_24) (cat_at p17_25)) )
	(when (cat_at p17_25) (oneof (cat_at p16_25) (cat_at p17_24) (cat_at p18_25) (cat_at p17_26)) )
	(when (cat_at p17_26) (oneof (cat_at p16_26) (cat_at p17_25) (cat_at p18_26) (cat_at p17_27)) )
	(when (cat_at p17_27) (oneof (cat_at p16_27) (cat_at p17_26) (cat_at p18_27) (cat_at p17_28)) )
	(when (cat_at p17_28) (oneof (cat_at p16_28) (cat_at p17_27) (cat_at p18_28) (cat_at p17_29)) )
	(when (cat_at p17_29) (oneof (cat_at p16_29) (cat_at p17_28) (cat_at p18_29) (cat_at p17_30)) )
	(when (cat_at p17_30) (oneof (cat_at p16_30) (cat_at p17_29) (cat_at p18_30) (cat_at p17_31)) )
	(when (cat_at p17_31) (oneof (cat_at p16_31) (cat_at p17_30) (cat_at p18_31) (cat_at p17_32)) )
	(when (cat_at p17_32) (oneof (cat_at p16_32) (cat_at p17_31) (cat_at p18_32) (cat_at p17_33)) )
	(when (cat_at p17_33) (oneof (cat_at p16_33) (cat_at p17_32) (cat_at p18_33) (cat_at p17_34)) )
	(when (cat_at p17_34) (oneof (cat_at p16_34) (cat_at p17_33) (cat_at p18_34) (cat_at p17_35)) )
	(when (cat_at p17_35) (oneof (cat_at p16_35) (cat_at p17_34) (cat_at p18_35) (cat_at p17_36)) )
	(when (cat_at p17_36) (oneof (cat_at p16_36) (cat_at p17_35) (cat_at p18_36) (cat_at p17_37)) )
	(when (cat_at p17_37) (oneof (cat_at p16_37) (cat_at p17_36) (cat_at p18_37) (cat_at p17_38)) )
	(when (cat_at p17_38) (oneof (cat_at p16_38) (cat_at p17_37) (cat_at p18_38) (cat_at p17_39)) )
	(when (cat_at p17_39) (oneof (cat_at p16_39) (cat_at p17_38) (cat_at p18_39) (cat_at p17_40)) )
	(when (cat_at p17_40) (oneof (cat_at p16_40) (cat_at p17_39) (cat_at p18_40)) )
	(when (cat_at p18_1) (oneof (cat_at p17_1) (cat_at p19_1) (cat_at p18_2)) )
	(when (cat_at p18_2) (oneof (cat_at p17_2) (cat_at p18_1) (cat_at p19_2) (cat_at p18_3)) )
	(when (cat_at p18_3) (oneof (cat_at p17_3) (cat_at p18_2) (cat_at p19_3) (cat_at p18_4)) )
	(when (cat_at p18_4) (oneof (cat_at p17_4) (cat_at p18_3) (cat_at p19_4) (cat_at p18_5)) )
	(when (cat_at p18_5) (oneof (cat_at p17_5) (cat_at p18_4) (cat_at p19_5) (cat_at p18_6)) )
	(when (cat_at p18_6) (oneof (cat_at p17_6) (cat_at p18_5) (cat_at p19_6) (cat_at p18_7)) )
	(when (cat_at p18_7) (oneof (cat_at p17_7) (cat_at p18_6) (cat_at p19_7) (cat_at p18_8)) )
	(when (cat_at p18_8) (oneof (cat_at p17_8) (cat_at p18_7) (cat_at p19_8) (cat_at p18_9)) )
	(when (cat_at p18_9) (oneof (cat_at p17_9) (cat_at p18_8) (cat_at p19_9) (cat_at p18_10)) )
	(when (cat_at p18_10) (oneof (cat_at p17_10) (cat_at p18_9) (cat_at p19_10) (cat_at p18_11)) )
	(when (cat_at p18_11) (oneof (cat_at p17_11) (cat_at p18_10) (cat_at p19_11) (cat_at p18_12)) )
	(when (cat_at p18_12) (oneof (cat_at p17_12) (cat_at p18_11) (cat_at p19_12) (cat_at p18_13)) )
	(when (cat_at p18_13) (oneof (cat_at p17_13) (cat_at p18_12) (cat_at p19_13) (cat_at p18_14)) )
	(when (cat_at p18_14) (oneof (cat_at p17_14) (cat_at p18_13) (cat_at p19_14) (cat_at p18_15)) )
	(when (cat_at p18_15) (oneof (cat_at p17_15) (cat_at p18_14) (cat_at p19_15) (cat_at p18_16)) )
	(when (cat_at p18_16) (oneof (cat_at p17_16) (cat_at p18_15) (cat_at p19_16) (cat_at p18_17)) )
	(when (cat_at p18_17) (oneof (cat_at p17_17) (cat_at p18_16) (cat_at p19_17) (cat_at p18_18)) )
	(when (cat_at p18_18) (oneof (cat_at p17_18) (cat_at p18_17) (cat_at p19_18) (cat_at p18_19)) )
	(when (cat_at p18_19) (oneof (cat_at p17_19) (cat_at p18_18) (cat_at p19_19) (cat_at p18_20)) )
	(when (cat_at p18_20) (oneof (cat_at p17_20) (cat_at p18_19) (cat_at p19_20) (cat_at p18_21)) )
	(when (cat_at p18_21) (oneof (cat_at p17_21) (cat_at p18_20) (cat_at p19_21) (cat_at p18_22)) )
	(when (cat_at p18_22) (oneof (cat_at p17_22) (cat_at p18_21) (cat_at p19_22) (cat_at p18_23)) )
	(when (cat_at p18_23) (oneof (cat_at p17_23) (cat_at p18_22) (cat_at p19_23) (cat_at p18_24)) )
	(when (cat_at p18_24) (oneof (cat_at p17_24) (cat_at p18_23) (cat_at p19_24) (cat_at p18_25)) )
	(when (cat_at p18_25) (oneof (cat_at p17_25) (cat_at p18_24) (cat_at p19_25) (cat_at p18_26)) )
	(when (cat_at p18_26) (oneof (cat_at p17_26) (cat_at p18_25) (cat_at p19_26) (cat_at p18_27)) )
	(when (cat_at p18_27) (oneof (cat_at p17_27) (cat_at p18_26) (cat_at p19_27) (cat_at p18_28)) )
	(when (cat_at p18_28) (oneof (cat_at p17_28) (cat_at p18_27) (cat_at p19_28) (cat_at p18_29)) )
	(when (cat_at p18_29) (oneof (cat_at p17_29) (cat_at p18_28) (cat_at p19_29) (cat_at p18_30)) )
	(when (cat_at p18_30) (oneof (cat_at p17_30) (cat_at p18_29) (cat_at p19_30) (cat_at p18_31)) )
	(when (cat_at p18_31) (oneof (cat_at p17_31) (cat_at p18_30) (cat_at p19_31) (cat_at p18_32)) )
	(when (cat_at p18_32) (oneof (cat_at p17_32) (cat_at p18_31) (cat_at p19_32) (cat_at p18_33)) )
	(when (cat_at p18_33) (oneof (cat_at p17_33) (cat_at p18_32) (cat_at p19_33) (cat_at p18_34)) )
	(when (cat_at p18_34) (oneof (cat_at p17_34) (cat_at p18_33) (cat_at p19_34) (cat_at p18_35)) )
	(when (cat_at p18_35) (oneof (cat_at p17_35) (cat_at p18_34) (cat_at p19_35) (cat_at p18_36)) )
	(when (cat_at p18_36) (oneof (cat_at p17_36) (cat_at p18_35) (cat_at p19_36) (cat_at p18_37)) )
	(when (cat_at p18_37) (oneof (cat_at p17_37) (cat_at p18_36) (cat_at p19_37) (cat_at p18_38)) )
	(when (cat_at p18_38) (oneof (cat_at p17_38) (cat_at p18_37) (cat_at p19_38) (cat_at p18_39)) )
	(when (cat_at p18_39) (oneof (cat_at p17_39) (cat_at p18_38) (cat_at p19_39) (cat_at p18_40)) )
	(when (cat_at p18_40) (oneof (cat_at p17_40) (cat_at p18_39) (cat_at p19_40)) )
	(when (cat_at p19_1) (oneof (cat_at p18_1) (cat_at p20_1) (cat_at p19_2)) )
	(when (cat_at p19_2) (oneof (cat_at p18_2) (cat_at p19_1) (cat_at p20_2) (cat_at p19_3)) )
	(when (cat_at p19_3) (oneof (cat_at p18_3) (cat_at p19_2) (cat_at p20_3) (cat_at p19_4)) )
	(when (cat_at p19_4) (oneof (cat_at p18_4) (cat_at p19_3) (cat_at p20_4) (cat_at p19_5)) )
	(when (cat_at p19_5) (oneof (cat_at p18_5) (cat_at p19_4) (cat_at p20_5) (cat_at p19_6)) )
	(when (cat_at p19_6) (oneof (cat_at p18_6) (cat_at p19_5) (cat_at p20_6) (cat_at p19_7)) )
	(when (cat_at p19_7) (oneof (cat_at p18_7) (cat_at p19_6) (cat_at p20_7) (cat_at p19_8)) )
	(when (cat_at p19_8) (oneof (cat_at p18_8) (cat_at p19_7) (cat_at p20_8) (cat_at p19_9)) )
	(when (cat_at p19_9) (oneof (cat_at p18_9) (cat_at p19_8) (cat_at p20_9) (cat_at p19_10)) )
	(when (cat_at p19_10) (oneof (cat_at p18_10) (cat_at p19_9) (cat_at p20_10) (cat_at p19_11)) )
	(when (cat_at p19_11) (oneof (cat_at p18_11) (cat_at p19_10) (cat_at p20_11) (cat_at p19_12)) )
	(when (cat_at p19_12) (oneof (cat_at p18_12) (cat_at p19_11) (cat_at p20_12) (cat_at p19_13)) )
	(when (cat_at p19_13) (oneof (cat_at p18_13) (cat_at p19_12) (cat_at p20_13) (cat_at p19_14)) )
	(when (cat_at p19_14) (oneof (cat_at p18_14) (cat_at p19_13) (cat_at p20_14) (cat_at p19_15)) )
	(when (cat_at p19_15) (oneof (cat_at p18_15) (cat_at p19_14) (cat_at p20_15) (cat_at p19_16)) )
	(when (cat_at p19_16) (oneof (cat_at p18_16) (cat_at p19_15) (cat_at p20_16) (cat_at p19_17)) )
	(when (cat_at p19_17) (oneof (cat_at p18_17) (cat_at p19_16) (cat_at p20_17) (cat_at p19_18)) )
	(when (cat_at p19_18) (oneof (cat_at p18_18) (cat_at p19_17) (cat_at p20_18) (cat_at p19_19)) )
	(when (cat_at p19_19) (oneof (cat_at p18_19) (cat_at p19_18) (cat_at p20_19) (cat_at p19_20)) )
	(when (cat_at p19_20) (oneof (cat_at p18_20) (cat_at p19_19) (cat_at p20_20) (cat_at p19_21)) )
	(when (cat_at p19_21) (oneof (cat_at p18_21) (cat_at p19_20) (cat_at p20_21) (cat_at p19_22)) )
	(when (cat_at p19_22) (oneof (cat_at p18_22) (cat_at p19_21) (cat_at p20_22) (cat_at p19_23)) )
	(when (cat_at p19_23) (oneof (cat_at p18_23) (cat_at p19_22) (cat_at p20_23) (cat_at p19_24)) )
	(when (cat_at p19_24) (oneof (cat_at p18_24) (cat_at p19_23) (cat_at p20_24) (cat_at p19_25)) )
	(when (cat_at p19_25) (oneof (cat_at p18_25) (cat_at p19_24) (cat_at p20_25) (cat_at p19_26)) )
	(when (cat_at p19_26) (oneof (cat_at p18_26) (cat_at p19_25) (cat_at p20_26) (cat_at p19_27)) )
	(when (cat_at p19_27) (oneof (cat_at p18_27) (cat_at p19_26) (cat_at p20_27) (cat_at p19_28)) )
	(when (cat_at p19_28) (oneof (cat_at p18_28) (cat_at p19_27) (cat_at p20_28) (cat_at p19_29)) )
	(when (cat_at p19_29) (oneof (cat_at p18_29) (cat_at p19_28) (cat_at p20_29) (cat_at p19_30)) )
	(when (cat_at p19_30) (oneof (cat_at p18_30) (cat_at p19_29) (cat_at p20_30) (cat_at p19_31)) )
	(when (cat_at p19_31) (oneof (cat_at p18_31) (cat_at p19_30) (cat_at p20_31) (cat_at p19_32)) )
	(when (cat_at p19_32) (oneof (cat_at p18_32) (cat_at p19_31) (cat_at p20_32) (cat_at p19_33)) )
	(when (cat_at p19_33) (oneof (cat_at p18_33) (cat_at p19_32) (cat_at p20_33) (cat_at p19_34)) )
	(when (cat_at p19_34) (oneof (cat_at p18_34) (cat_at p19_33) (cat_at p20_34) (cat_at p19_35)) )
	(when (cat_at p19_35) (oneof (cat_at p18_35) (cat_at p19_34) (cat_at p20_35) (cat_at p19_36)) )
	(when (cat_at p19_36) (oneof (cat_at p18_36) (cat_at p19_35) (cat_at p20_36) (cat_at p19_37)) )
	(when (cat_at p19_37) (oneof (cat_at p18_37) (cat_at p19_36) (cat_at p20_37) (cat_at p19_38)) )
	(when (cat_at p19_38) (oneof (cat_at p18_38) (cat_at p19_37) (cat_at p20_38) (cat_at p19_39)) )
	(when (cat_at p19_39) (oneof (cat_at p18_39) (cat_at p19_38) (cat_at p20_39) (cat_at p19_40)) )
	(when (cat_at p19_40) (oneof (cat_at p18_40) (cat_at p19_39) (cat_at p20_40)) )
	(when (cat_at p20_1) (oneof (cat_at p19_1) (cat_at p21_1) (cat_at p20_2)) )
	(when (cat_at p20_2) (oneof (cat_at p19_2) (cat_at p20_1) (cat_at p21_2) (cat_at p20_3)) )
	(when (cat_at p20_3) (oneof (cat_at p19_3) (cat_at p20_2) (cat_at p21_3) (cat_at p20_4)) )
	(when (cat_at p20_4) (oneof (cat_at p19_4) (cat_at p20_3) (cat_at p21_4) (cat_at p20_5)) )
	(when (cat_at p20_5) (oneof (cat_at p19_5) (cat_at p20_4) (cat_at p21_5) (cat_at p20_6)) )
	(when (cat_at p20_6) (oneof (cat_at p19_6) (cat_at p20_5) (cat_at p21_6) (cat_at p20_7)) )
	(when (cat_at p20_7) (oneof (cat_at p19_7) (cat_at p20_6) (cat_at p21_7) (cat_at p20_8)) )
	(when (cat_at p20_8) (oneof (cat_at p19_8) (cat_at p20_7) (cat_at p21_8) (cat_at p20_9)) )
	(when (cat_at p20_9) (oneof (cat_at p19_9) (cat_at p20_8) (cat_at p21_9) (cat_at p20_10)) )
	(when (cat_at p20_10) (oneof (cat_at p19_10) (cat_at p20_9) (cat_at p21_10) (cat_at p20_11)) )
	(when (cat_at p20_11) (oneof (cat_at p19_11) (cat_at p20_10) (cat_at p21_11) (cat_at p20_12)) )
	(when (cat_at p20_12) (oneof (cat_at p19_12) (cat_at p20_11) (cat_at p21_12) (cat_at p20_13)) )
	(when (cat_at p20_13) (oneof (cat_at p19_13) (cat_at p20_12) (cat_at p21_13) (cat_at p20_14)) )
	(when (cat_at p20_14) (oneof (cat_at p19_14) (cat_at p20_13) (cat_at p21_14) (cat_at p20_15)) )
	(when (cat_at p20_15) (oneof (cat_at p19_15) (cat_at p20_14) (cat_at p21_15) (cat_at p20_16)) )
	(when (cat_at p20_16) (oneof (cat_at p19_16) (cat_at p20_15) (cat_at p21_16) (cat_at p20_17)) )
	(when (cat_at p20_17) (oneof (cat_at p19_17) (cat_at p20_16) (cat_at p21_17) (cat_at p20_18)) )
	(when (cat_at p20_18) (oneof (cat_at p19_18) (cat_at p20_17) (cat_at p21_18) (cat_at p20_19)) )
	(when (cat_at p20_19) (oneof (cat_at p19_19) (cat_at p20_18) (cat_at p21_19) (cat_at p20_20)) )
	(when (cat_at p20_20) (oneof (cat_at p19_20) (cat_at p20_19) (cat_at p21_20) (cat_at p20_21)) )
	(when (cat_at p20_21) (oneof (cat_at p19_21) (cat_at p20_20) (cat_at p21_21) (cat_at p20_22)) )
	(when (cat_at p20_22) (oneof (cat_at p19_22) (cat_at p20_21) (cat_at p21_22) (cat_at p20_23)) )
	(when (cat_at p20_23) (oneof (cat_at p19_23) (cat_at p20_22) (cat_at p21_23) (cat_at p20_24)) )
	(when (cat_at p20_24) (oneof (cat_at p19_24) (cat_at p20_23) (cat_at p21_24) (cat_at p20_25)) )
	(when (cat_at p20_25) (oneof (cat_at p19_25) (cat_at p20_24) (cat_at p21_25) (cat_at p20_26)) )
	(when (cat_at p20_26) (oneof (cat_at p19_26) (cat_at p20_25) (cat_at p21_26) (cat_at p20_27)) )
	(when (cat_at p20_27) (oneof (cat_at p19_27) (cat_at p20_26) (cat_at p21_27) (cat_at p20_28)) )
	(when (cat_at p20_28) (oneof (cat_at p19_28) (cat_at p20_27) (cat_at p21_28) (cat_at p20_29)) )
	(when (cat_at p20_29) (oneof (cat_at p19_29) (cat_at p20_28) (cat_at p21_29) (cat_at p20_30)) )
	(when (cat_at p20_30) (oneof (cat_at p19_30) (cat_at p20_29) (cat_at p21_30) (cat_at p20_31)) )
	(when (cat_at p20_31) (oneof (cat_at p19_31) (cat_at p20_30) (cat_at p21_31) (cat_at p20_32)) )
	(when (cat_at p20_32) (oneof (cat_at p19_32) (cat_at p20_31) (cat_at p21_32) (cat_at p20_33)) )
	(when (cat_at p20_33) (oneof (cat_at p19_33) (cat_at p20_32) (cat_at p21_33) (cat_at p20_34)) )
	(when (cat_at p20_34) (oneof (cat_at p19_34) (cat_at p20_33) (cat_at p21_34) (cat_at p20_35)) )
	(when (cat_at p20_35) (oneof (cat_at p19_35) (cat_at p20_34) (cat_at p21_35) (cat_at p20_36)) )
	(when (cat_at p20_36) (oneof (cat_at p19_36) (cat_at p20_35) (cat_at p21_36) (cat_at p20_37)) )
	(when (cat_at p20_37) (oneof (cat_at p19_37) (cat_at p20_36) (cat_at p21_37) (cat_at p20_38)) )
	(when (cat_at p20_38) (oneof (cat_at p19_38) (cat_at p20_37) (cat_at p21_38) (cat_at p20_39)) )
	(when (cat_at p20_39) (oneof (cat_at p19_39) (cat_at p20_38) (cat_at p21_39) (cat_at p20_40)) )
	(when (cat_at p20_40) (oneof (cat_at p19_40) (cat_at p20_39) (cat_at p21_40)) )
	(when (cat_at p21_1) (oneof (cat_at p20_1) (cat_at p22_1) (cat_at p21_2)) )
	(when (cat_at p21_2) (oneof (cat_at p20_2) (cat_at p21_1) (cat_at p22_2) (cat_at p21_3)) )
	(when (cat_at p21_3) (oneof (cat_at p20_3) (cat_at p21_2) (cat_at p22_3) (cat_at p21_4)) )
	(when (cat_at p21_4) (oneof (cat_at p20_4) (cat_at p21_3) (cat_at p22_4) (cat_at p21_5)) )
	(when (cat_at p21_5) (oneof (cat_at p20_5) (cat_at p21_4) (cat_at p22_5) (cat_at p21_6)) )
	(when (cat_at p21_6) (oneof (cat_at p20_6) (cat_at p21_5) (cat_at p22_6) (cat_at p21_7)) )
	(when (cat_at p21_7) (oneof (cat_at p20_7) (cat_at p21_6) (cat_at p22_7) (cat_at p21_8)) )
	(when (cat_at p21_8) (oneof (cat_at p20_8) (cat_at p21_7) (cat_at p22_8) (cat_at p21_9)) )
	(when (cat_at p21_9) (oneof (cat_at p20_9) (cat_at p21_8) (cat_at p22_9) (cat_at p21_10)) )
	(when (cat_at p21_10) (oneof (cat_at p20_10) (cat_at p21_9) (cat_at p22_10) (cat_at p21_11)) )
	(when (cat_at p21_11) (oneof (cat_at p20_11) (cat_at p21_10) (cat_at p22_11) (cat_at p21_12)) )
	(when (cat_at p21_12) (oneof (cat_at p20_12) (cat_at p21_11) (cat_at p22_12) (cat_at p21_13)) )
	(when (cat_at p21_13) (oneof (cat_at p20_13) (cat_at p21_12) (cat_at p22_13) (cat_at p21_14)) )
	(when (cat_at p21_14) (oneof (cat_at p20_14) (cat_at p21_13) (cat_at p22_14) (cat_at p21_15)) )
	(when (cat_at p21_15) (oneof (cat_at p20_15) (cat_at p21_14) (cat_at p22_15) (cat_at p21_16)) )
	(when (cat_at p21_16) (oneof (cat_at p20_16) (cat_at p21_15) (cat_at p22_16) (cat_at p21_17)) )
	(when (cat_at p21_17) (oneof (cat_at p20_17) (cat_at p21_16) (cat_at p22_17) (cat_at p21_18)) )
	(when (cat_at p21_18) (oneof (cat_at p20_18) (cat_at p21_17) (cat_at p22_18) (cat_at p21_19)) )
	(when (cat_at p21_19) (oneof (cat_at p20_19) (cat_at p21_18) (cat_at p22_19) (cat_at p21_20)) )
	(when (cat_at p21_20) (oneof (cat_at p20_20) (cat_at p21_19) (cat_at p22_20) (cat_at p21_21)) )
	(when (cat_at p21_21) (oneof (cat_at p20_21) (cat_at p21_20) (cat_at p22_21) (cat_at p21_22)) )
	(when (cat_at p21_22) (oneof (cat_at p20_22) (cat_at p21_21) (cat_at p22_22) (cat_at p21_23)) )
	(when (cat_at p21_23) (oneof (cat_at p20_23) (cat_at p21_22) (cat_at p22_23) (cat_at p21_24)) )
	(when (cat_at p21_24) (oneof (cat_at p20_24) (cat_at p21_23) (cat_at p22_24) (cat_at p21_25)) )
	(when (cat_at p21_25) (oneof (cat_at p20_25) (cat_at p21_24) (cat_at p22_25) (cat_at p21_26)) )
	(when (cat_at p21_26) (oneof (cat_at p20_26) (cat_at p21_25) (cat_at p22_26) (cat_at p21_27)) )
	(when (cat_at p21_27) (oneof (cat_at p20_27) (cat_at p21_26) (cat_at p22_27) (cat_at p21_28)) )
	(when (cat_at p21_28) (oneof (cat_at p20_28) (cat_at p21_27) (cat_at p22_28) (cat_at p21_29)) )
	(when (cat_at p21_29) (oneof (cat_at p20_29) (cat_at p21_28) (cat_at p22_29) (cat_at p21_30)) )
	(when (cat_at p21_30) (oneof (cat_at p20_30) (cat_at p21_29) (cat_at p22_30) (cat_at p21_31)) )
	(when (cat_at p21_31) (oneof (cat_at p20_31) (cat_at p21_30) (cat_at p22_31) (cat_at p21_32)) )
	(when (cat_at p21_32) (oneof (cat_at p20_32) (cat_at p21_31) (cat_at p22_32) (cat_at p21_33)) )
	(when (cat_at p21_33) (oneof (cat_at p20_33) (cat_at p21_32) (cat_at p22_33) (cat_at p21_34)) )
	(when (cat_at p21_34) (oneof (cat_at p20_34) (cat_at p21_33) (cat_at p22_34) (cat_at p21_35)) )
	(when (cat_at p21_35) (oneof (cat_at p20_35) (cat_at p21_34) (cat_at p22_35) (cat_at p21_36)) )
	(when (cat_at p21_36) (oneof (cat_at p20_36) (cat_at p21_35) (cat_at p22_36) (cat_at p21_37)) )
	(when (cat_at p21_37) (oneof (cat_at p20_37) (cat_at p21_36) (cat_at p22_37) (cat_at p21_38)) )
	(when (cat_at p21_38) (oneof (cat_at p20_38) (cat_at p21_37) (cat_at p22_38) (cat_at p21_39)) )
	(when (cat_at p21_39) (oneof (cat_at p20_39) (cat_at p21_38) (cat_at p22_39) (cat_at p21_40)) )
	(when (cat_at p21_40) (oneof (cat_at p20_40) (cat_at p21_39) (cat_at p22_40)) )
	(when (cat_at p22_1) (oneof (cat_at p21_1) (cat_at p23_1) (cat_at p22_2)) )
	(when (cat_at p22_2) (oneof (cat_at p21_2) (cat_at p22_1) (cat_at p23_2) (cat_at p22_3)) )
	(when (cat_at p22_3) (oneof (cat_at p21_3) (cat_at p22_2) (cat_at p23_3) (cat_at p22_4)) )
	(when (cat_at p22_4) (oneof (cat_at p21_4) (cat_at p22_3) (cat_at p23_4) (cat_at p22_5)) )
	(when (cat_at p22_5) (oneof (cat_at p21_5) (cat_at p22_4) (cat_at p23_5) (cat_at p22_6)) )
	(when (cat_at p22_6) (oneof (cat_at p21_6) (cat_at p22_5) (cat_at p23_6) (cat_at p22_7)) )
	(when (cat_at p22_7) (oneof (cat_at p21_7) (cat_at p22_6) (cat_at p23_7) (cat_at p22_8)) )
	(when (cat_at p22_8) (oneof (cat_at p21_8) (cat_at p22_7) (cat_at p23_8) (cat_at p22_9)) )
	(when (cat_at p22_9) (oneof (cat_at p21_9) (cat_at p22_8) (cat_at p23_9) (cat_at p22_10)) )
	(when (cat_at p22_10) (oneof (cat_at p21_10) (cat_at p22_9) (cat_at p23_10) (cat_at p22_11)) )
	(when (cat_at p22_11) (oneof (cat_at p21_11) (cat_at p22_10) (cat_at p23_11) (cat_at p22_12)) )
	(when (cat_at p22_12) (oneof (cat_at p21_12) (cat_at p22_11) (cat_at p23_12) (cat_at p22_13)) )
	(when (cat_at p22_13) (oneof (cat_at p21_13) (cat_at p22_12) (cat_at p23_13) (cat_at p22_14)) )
	(when (cat_at p22_14) (oneof (cat_at p21_14) (cat_at p22_13) (cat_at p23_14) (cat_at p22_15)) )
	(when (cat_at p22_15) (oneof (cat_at p21_15) (cat_at p22_14) (cat_at p23_15) (cat_at p22_16)) )
	(when (cat_at p22_16) (oneof (cat_at p21_16) (cat_at p22_15) (cat_at p23_16) (cat_at p22_17)) )
	(when (cat_at p22_17) (oneof (cat_at p21_17) (cat_at p22_16) (cat_at p23_17) (cat_at p22_18)) )
	(when (cat_at p22_18) (oneof (cat_at p21_18) (cat_at p22_17) (cat_at p23_18) (cat_at p22_19)) )
	(when (cat_at p22_19) (oneof (cat_at p21_19) (cat_at p22_18) (cat_at p23_19) (cat_at p22_20)) )
	(when (cat_at p22_20) (oneof (cat_at p21_20) (cat_at p22_19) (cat_at p23_20) (cat_at p22_21)) )
	(when (cat_at p22_21) (oneof (cat_at p21_21) (cat_at p22_20) (cat_at p23_21) (cat_at p22_22)) )
	(when (cat_at p22_22) (oneof (cat_at p21_22) (cat_at p22_21) (cat_at p23_22) (cat_at p22_23)) )
	(when (cat_at p22_23) (oneof (cat_at p21_23) (cat_at p22_22) (cat_at p23_23) (cat_at p22_24)) )
	(when (cat_at p22_24) (oneof (cat_at p21_24) (cat_at p22_23) (cat_at p23_24) (cat_at p22_25)) )
	(when (cat_at p22_25) (oneof (cat_at p21_25) (cat_at p22_24) (cat_at p23_25) (cat_at p22_26)) )
	(when (cat_at p22_26) (oneof (cat_at p21_26) (cat_at p22_25) (cat_at p23_26) (cat_at p22_27)) )
	(when (cat_at p22_27) (oneof (cat_at p21_27) (cat_at p22_26) (cat_at p23_27) (cat_at p22_28)) )
	(when (cat_at p22_28) (oneof (cat_at p21_28) (cat_at p22_27) (cat_at p23_28) (cat_at p22_29)) )
	(when (cat_at p22_29) (oneof (cat_at p21_29) (cat_at p22_28) (cat_at p23_29) (cat_at p22_30)) )
	(when (cat_at p22_30) (oneof (cat_at p21_30) (cat_at p22_29) (cat_at p23_30) (cat_at p22_31)) )
	(when (cat_at p22_31) (oneof (cat_at p21_31) (cat_at p22_30) (cat_at p23_31) (cat_at p22_32)) )
	(when (cat_at p22_32) (oneof (cat_at p21_32) (cat_at p22_31) (cat_at p23_32) (cat_at p22_33)) )
	(when (cat_at p22_33) (oneof (cat_at p21_33) (cat_at p22_32) (cat_at p23_33) (cat_at p22_34)) )
	(when (cat_at p22_34) (oneof (cat_at p21_34) (cat_at p22_33) (cat_at p23_34) (cat_at p22_35)) )
	(when (cat_at p22_35) (oneof (cat_at p21_35) (cat_at p22_34) (cat_at p23_35) (cat_at p22_36)) )
	(when (cat_at p22_36) (oneof (cat_at p21_36) (cat_at p22_35) (cat_at p23_36) (cat_at p22_37)) )
	(when (cat_at p22_37) (oneof (cat_at p21_37) (cat_at p22_36) (cat_at p23_37) (cat_at p22_38)) )
	(when (cat_at p22_38) (oneof (cat_at p21_38) (cat_at p22_37) (cat_at p23_38) (cat_at p22_39)) )
	(when (cat_at p22_39) (oneof (cat_at p21_39) (cat_at p22_38) (cat_at p23_39) (cat_at p22_40)) )
	(when (cat_at p22_40) (oneof (cat_at p21_40) (cat_at p22_39) (cat_at p23_40)) )
	(when (cat_at p23_1) (oneof (cat_at p22_1) (cat_at p24_1) (cat_at p23_2)) )
	(when (cat_at p23_2) (oneof (cat_at p22_2) (cat_at p23_1) (cat_at p24_2) (cat_at p23_3)) )
	(when (cat_at p23_3) (oneof (cat_at p22_3) (cat_at p23_2) (cat_at p24_3) (cat_at p23_4)) )
	(when (cat_at p23_4) (oneof (cat_at p22_4) (cat_at p23_3) (cat_at p24_4) (cat_at p23_5)) )
	(when (cat_at p23_5) (oneof (cat_at p22_5) (cat_at p23_4) (cat_at p24_5) (cat_at p23_6)) )
	(when (cat_at p23_6) (oneof (cat_at p22_6) (cat_at p23_5) (cat_at p24_6) (cat_at p23_7)) )
	(when (cat_at p23_7) (oneof (cat_at p22_7) (cat_at p23_6) (cat_at p24_7) (cat_at p23_8)) )
	(when (cat_at p23_8) (oneof (cat_at p22_8) (cat_at p23_7) (cat_at p24_8) (cat_at p23_9)) )
	(when (cat_at p23_9) (oneof (cat_at p22_9) (cat_at p23_8) (cat_at p24_9) (cat_at p23_10)) )
	(when (cat_at p23_10) (oneof (cat_at p22_10) (cat_at p23_9) (cat_at p24_10) (cat_at p23_11)) )
	(when (cat_at p23_11) (oneof (cat_at p22_11) (cat_at p23_10) (cat_at p24_11) (cat_at p23_12)) )
	(when (cat_at p23_12) (oneof (cat_at p22_12) (cat_at p23_11) (cat_at p24_12) (cat_at p23_13)) )
	(when (cat_at p23_13) (oneof (cat_at p22_13) (cat_at p23_12) (cat_at p24_13) (cat_at p23_14)) )
	(when (cat_at p23_14) (oneof (cat_at p22_14) (cat_at p23_13) (cat_at p24_14) (cat_at p23_15)) )
	(when (cat_at p23_15) (oneof (cat_at p22_15) (cat_at p23_14) (cat_at p24_15) (cat_at p23_16)) )
	(when (cat_at p23_16) (oneof (cat_at p22_16) (cat_at p23_15) (cat_at p24_16) (cat_at p23_17)) )
	(when (cat_at p23_17) (oneof (cat_at p22_17) (cat_at p23_16) (cat_at p24_17) (cat_at p23_18)) )
	(when (cat_at p23_18) (oneof (cat_at p22_18) (cat_at p23_17) (cat_at p24_18) (cat_at p23_19)) )
	(when (cat_at p23_19) (oneof (cat_at p22_19) (cat_at p23_18) (cat_at p24_19) (cat_at p23_20)) )
	(when (cat_at p23_20) (oneof (cat_at p22_20) (cat_at p23_19) (cat_at p24_20) (cat_at p23_21)) )
	(when (cat_at p23_21) (oneof (cat_at p22_21) (cat_at p23_20) (cat_at p24_21) (cat_at p23_22)) )
	(when (cat_at p23_22) (oneof (cat_at p22_22) (cat_at p23_21) (cat_at p24_22) (cat_at p23_23)) )
	(when (cat_at p23_23) (oneof (cat_at p22_23) (cat_at p23_22) (cat_at p24_23) (cat_at p23_24)) )
	(when (cat_at p23_24) (oneof (cat_at p22_24) (cat_at p23_23) (cat_at p24_24) (cat_at p23_25)) )
	(when (cat_at p23_25) (oneof (cat_at p22_25) (cat_at p23_24) (cat_at p24_25) (cat_at p23_26)) )
	(when (cat_at p23_26) (oneof (cat_at p22_26) (cat_at p23_25) (cat_at p24_26) (cat_at p23_27)) )
	(when (cat_at p23_27) (oneof (cat_at p22_27) (cat_at p23_26) (cat_at p24_27) (cat_at p23_28)) )
	(when (cat_at p23_28) (oneof (cat_at p22_28) (cat_at p23_27) (cat_at p24_28) (cat_at p23_29)) )
	(when (cat_at p23_29) (oneof (cat_at p22_29) (cat_at p23_28) (cat_at p24_29) (cat_at p23_30)) )
	(when (cat_at p23_30) (oneof (cat_at p22_30) (cat_at p23_29) (cat_at p24_30) (cat_at p23_31)) )
	(when (cat_at p23_31) (oneof (cat_at p22_31) (cat_at p23_30) (cat_at p24_31) (cat_at p23_32)) )
	(when (cat_at p23_32) (oneof (cat_at p22_32) (cat_at p23_31) (cat_at p24_32) (cat_at p23_33)) )
	(when (cat_at p23_33) (oneof (cat_at p22_33) (cat_at p23_32) (cat_at p24_33) (cat_at p23_34)) )
	(when (cat_at p23_34) (oneof (cat_at p22_34) (cat_at p23_33) (cat_at p24_34) (cat_at p23_35)) )
	(when (cat_at p23_35) (oneof (cat_at p22_35) (cat_at p23_34) (cat_at p24_35) (cat_at p23_36)) )
	(when (cat_at p23_36) (oneof (cat_at p22_36) (cat_at p23_35) (cat_at p24_36) (cat_at p23_37)) )
	(when (cat_at p23_37) (oneof (cat_at p22_37) (cat_at p23_36) (cat_at p24_37) (cat_at p23_38)) )
	(when (cat_at p23_38) (oneof (cat_at p22_38) (cat_at p23_37) (cat_at p24_38) (cat_at p23_39)) )
	(when (cat_at p23_39) (oneof (cat_at p22_39) (cat_at p23_38) (cat_at p24_39) (cat_at p23_40)) )
	(when (cat_at p23_40) (oneof (cat_at p22_40) (cat_at p23_39) (cat_at p24_40)) )
	(when (cat_at p24_1) (oneof (cat_at p23_1) (cat_at p25_1) (cat_at p24_2)) )
	(when (cat_at p24_2) (oneof (cat_at p23_2) (cat_at p24_1) (cat_at p25_2) (cat_at p24_3)) )
	(when (cat_at p24_3) (oneof (cat_at p23_3) (cat_at p24_2) (cat_at p25_3) (cat_at p24_4)) )
	(when (cat_at p24_4) (oneof (cat_at p23_4) (cat_at p24_3) (cat_at p25_4) (cat_at p24_5)) )
	(when (cat_at p24_5) (oneof (cat_at p23_5) (cat_at p24_4) (cat_at p25_5) (cat_at p24_6)) )
	(when (cat_at p24_6) (oneof (cat_at p23_6) (cat_at p24_5) (cat_at p25_6) (cat_at p24_7)) )
	(when (cat_at p24_7) (oneof (cat_at p23_7) (cat_at p24_6) (cat_at p25_7) (cat_at p24_8)) )
	(when (cat_at p24_8) (oneof (cat_at p23_8) (cat_at p24_7) (cat_at p25_8) (cat_at p24_9)) )
	(when (cat_at p24_9) (oneof (cat_at p23_9) (cat_at p24_8) (cat_at p25_9) (cat_at p24_10)) )
	(when (cat_at p24_10) (oneof (cat_at p23_10) (cat_at p24_9) (cat_at p25_10) (cat_at p24_11)) )
	(when (cat_at p24_11) (oneof (cat_at p23_11) (cat_at p24_10) (cat_at p25_11) (cat_at p24_12)) )
	(when (cat_at p24_12) (oneof (cat_at p23_12) (cat_at p24_11) (cat_at p25_12) (cat_at p24_13)) )
	(when (cat_at p24_13) (oneof (cat_at p23_13) (cat_at p24_12) (cat_at p25_13) (cat_at p24_14)) )
	(when (cat_at p24_14) (oneof (cat_at p23_14) (cat_at p24_13) (cat_at p25_14) (cat_at p24_15)) )
	(when (cat_at p24_15) (oneof (cat_at p23_15) (cat_at p24_14) (cat_at p25_15) (cat_at p24_16)) )
	(when (cat_at p24_16) (oneof (cat_at p23_16) (cat_at p24_15) (cat_at p25_16) (cat_at p24_17)) )
	(when (cat_at p24_17) (oneof (cat_at p23_17) (cat_at p24_16) (cat_at p25_17) (cat_at p24_18)) )
	(when (cat_at p24_18) (oneof (cat_at p23_18) (cat_at p24_17) (cat_at p25_18) (cat_at p24_19)) )
	(when (cat_at p24_19) (oneof (cat_at p23_19) (cat_at p24_18) (cat_at p25_19) (cat_at p24_20)) )
	(when (cat_at p24_20) (oneof (cat_at p23_20) (cat_at p24_19) (cat_at p25_20) (cat_at p24_21)) )
	(when (cat_at p24_21) (oneof (cat_at p23_21) (cat_at p24_20) (cat_at p25_21) (cat_at p24_22)) )
	(when (cat_at p24_22) (oneof (cat_at p23_22) (cat_at p24_21) (cat_at p25_22) (cat_at p24_23)) )
	(when (cat_at p24_23) (oneof (cat_at p23_23) (cat_at p24_22) (cat_at p25_23) (cat_at p24_24)) )
	(when (cat_at p24_24) (oneof (cat_at p23_24) (cat_at p24_23) (cat_at p25_24) (cat_at p24_25)) )
	(when (cat_at p24_25) (oneof (cat_at p23_25) (cat_at p24_24) (cat_at p25_25) (cat_at p24_26)) )
	(when (cat_at p24_26) (oneof (cat_at p23_26) (cat_at p24_25) (cat_at p25_26) (cat_at p24_27)) )
	(when (cat_at p24_27) (oneof (cat_at p23_27) (cat_at p24_26) (cat_at p25_27) (cat_at p24_28)) )
	(when (cat_at p24_28) (oneof (cat_at p23_28) (cat_at p24_27) (cat_at p25_28) (cat_at p24_29)) )
	(when (cat_at p24_29) (oneof (cat_at p23_29) (cat_at p24_28) (cat_at p25_29) (cat_at p24_30)) )
	(when (cat_at p24_30) (oneof (cat_at p23_30) (cat_at p24_29) (cat_at p25_30) (cat_at p24_31)) )
	(when (cat_at p24_31) (oneof (cat_at p23_31) (cat_at p24_30) (cat_at p25_31) (cat_at p24_32)) )
	(when (cat_at p24_32) (oneof (cat_at p23_32) (cat_at p24_31) (cat_at p25_32) (cat_at p24_33)) )
	(when (cat_at p24_33) (oneof (cat_at p23_33) (cat_at p24_32) (cat_at p25_33) (cat_at p24_34)) )
	(when (cat_at p24_34) (oneof (cat_at p23_34) (cat_at p24_33) (cat_at p25_34) (cat_at p24_35)) )
	(when (cat_at p24_35) (oneof (cat_at p23_35) (cat_at p24_34) (cat_at p25_35) (cat_at p24_36)) )
	(when (cat_at p24_36) (oneof (cat_at p23_36) (cat_at p24_35) (cat_at p25_36) (cat_at p24_37)) )
	(when (cat_at p24_37) (oneof (cat_at p23_37) (cat_at p24_36) (cat_at p25_37) (cat_at p24_38)) )
	(when (cat_at p24_38) (oneof (cat_at p23_38) (cat_at p24_37) (cat_at p25_38) (cat_at p24_39)) )
	(when (cat_at p24_39) (oneof (cat_at p23_39) (cat_at p24_38) (cat_at p25_39) (cat_at p24_40)) )
	(when (cat_at p24_40) (oneof (cat_at p23_40) (cat_at p24_39) (cat_at p25_40)) )
	(when (cat_at p25_1) (oneof (cat_at p24_1) (cat_at p26_1) (cat_at p25_2)) )
	(when (cat_at p25_2) (oneof (cat_at p24_2) (cat_at p25_1) (cat_at p26_2) (cat_at p25_3)) )
	(when (cat_at p25_3) (oneof (cat_at p24_3) (cat_at p25_2) (cat_at p26_3) (cat_at p25_4)) )
	(when (cat_at p25_4) (oneof (cat_at p24_4) (cat_at p25_3) (cat_at p26_4) (cat_at p25_5)) )
	(when (cat_at p25_5) (oneof (cat_at p24_5) (cat_at p25_4) (cat_at p26_5) (cat_at p25_6)) )
	(when (cat_at p25_6) (oneof (cat_at p24_6) (cat_at p25_5) (cat_at p26_6) (cat_at p25_7)) )
	(when (cat_at p25_7) (oneof (cat_at p24_7) (cat_at p25_6) (cat_at p26_7) (cat_at p25_8)) )
	(when (cat_at p25_8) (oneof (cat_at p24_8) (cat_at p25_7) (cat_at p26_8) (cat_at p25_9)) )
	(when (cat_at p25_9) (oneof (cat_at p24_9) (cat_at p25_8) (cat_at p26_9) (cat_at p25_10)) )
	(when (cat_at p25_10) (oneof (cat_at p24_10) (cat_at p25_9) (cat_at p26_10) (cat_at p25_11)) )
	(when (cat_at p25_11) (oneof (cat_at p24_11) (cat_at p25_10) (cat_at p26_11) (cat_at p25_12)) )
	(when (cat_at p25_12) (oneof (cat_at p24_12) (cat_at p25_11) (cat_at p26_12) (cat_at p25_13)) )
	(when (cat_at p25_13) (oneof (cat_at p24_13) (cat_at p25_12) (cat_at p26_13) (cat_at p25_14)) )
	(when (cat_at p25_14) (oneof (cat_at p24_14) (cat_at p25_13) (cat_at p26_14) (cat_at p25_15)) )
	(when (cat_at p25_15) (oneof (cat_at p24_15) (cat_at p25_14) (cat_at p26_15) (cat_at p25_16)) )
	(when (cat_at p25_16) (oneof (cat_at p24_16) (cat_at p25_15) (cat_at p26_16) (cat_at p25_17)) )
	(when (cat_at p25_17) (oneof (cat_at p24_17) (cat_at p25_16) (cat_at p26_17) (cat_at p25_18)) )
	(when (cat_at p25_18) (oneof (cat_at p24_18) (cat_at p25_17) (cat_at p26_18) (cat_at p25_19)) )
	(when (cat_at p25_19) (oneof (cat_at p24_19) (cat_at p25_18) (cat_at p26_19) (cat_at p25_20)) )
	(when (cat_at p25_20) (oneof (cat_at p24_20) (cat_at p25_19) (cat_at p26_20) (cat_at p25_21)) )
	(when (cat_at p25_21) (oneof (cat_at p24_21) (cat_at p25_20) (cat_at p26_21) (cat_at p25_22)) )
	(when (cat_at p25_22) (oneof (cat_at p24_22) (cat_at p25_21) (cat_at p26_22) (cat_at p25_23)) )
	(when (cat_at p25_23) (oneof (cat_at p24_23) (cat_at p25_22) (cat_at p26_23) (cat_at p25_24)) )
	(when (cat_at p25_24) (oneof (cat_at p24_24) (cat_at p25_23) (cat_at p26_24) (cat_at p25_25)) )
	(when (cat_at p25_25) (oneof (cat_at p24_25) (cat_at p25_24) (cat_at p26_25) (cat_at p25_26)) )
	(when (cat_at p25_26) (oneof (cat_at p24_26) (cat_at p25_25) (cat_at p26_26) (cat_at p25_27)) )
	(when (cat_at p25_27) (oneof (cat_at p24_27) (cat_at p25_26) (cat_at p26_27) (cat_at p25_28)) )
	(when (cat_at p25_28) (oneof (cat_at p24_28) (cat_at p25_27) (cat_at p26_28) (cat_at p25_29)) )
	(when (cat_at p25_29) (oneof (cat_at p24_29) (cat_at p25_28) (cat_at p26_29) (cat_at p25_30)) )
	(when (cat_at p25_30) (oneof (cat_at p24_30) (cat_at p25_29) (cat_at p26_30) (cat_at p25_31)) )
	(when (cat_at p25_31) (oneof (cat_at p24_31) (cat_at p25_30) (cat_at p26_31) (cat_at p25_32)) )
	(when (cat_at p25_32) (oneof (cat_at p24_32) (cat_at p25_31) (cat_at p26_32) (cat_at p25_33)) )
	(when (cat_at p25_33) (oneof (cat_at p24_33) (cat_at p25_32) (cat_at p26_33) (cat_at p25_34)) )
	(when (cat_at p25_34) (oneof (cat_at p24_34) (cat_at p25_33) (cat_at p26_34) (cat_at p25_35)) )
	(when (cat_at p25_35) (oneof (cat_at p24_35) (cat_at p25_34) (cat_at p26_35) (cat_at p25_36)) )
	(when (cat_at p25_36) (oneof (cat_at p24_36) (cat_at p25_35) (cat_at p26_36) (cat_at p25_37)) )
	(when (cat_at p25_37) (oneof (cat_at p24_37) (cat_at p25_36) (cat_at p26_37) (cat_at p25_38)) )
	(when (cat_at p25_38) (oneof (cat_at p24_38) (cat_at p25_37) (cat_at p26_38) (cat_at p25_39)) )
	(when (cat_at p25_39) (oneof (cat_at p24_39) (cat_at p25_38) (cat_at p26_39) (cat_at p25_40)) )
	(when (cat_at p25_40) (oneof (cat_at p24_40) (cat_at p25_39) (cat_at p26_40)) )
	(when (cat_at p26_1) (oneof (cat_at p25_1) (cat_at p27_1) (cat_at p26_2)) )
	(when (cat_at p26_2) (oneof (cat_at p25_2) (cat_at p26_1) (cat_at p27_2) (cat_at p26_3)) )
	(when (cat_at p26_3) (oneof (cat_at p25_3) (cat_at p26_2) (cat_at p27_3) (cat_at p26_4)) )
	(when (cat_at p26_4) (oneof (cat_at p25_4) (cat_at p26_3) (cat_at p27_4) (cat_at p26_5)) )
	(when (cat_at p26_5) (oneof (cat_at p25_5) (cat_at p26_4) (cat_at p27_5) (cat_at p26_6)) )
	(when (cat_at p26_6) (oneof (cat_at p25_6) (cat_at p26_5) (cat_at p27_6) (cat_at p26_7)) )
	(when (cat_at p26_7) (oneof (cat_at p25_7) (cat_at p26_6) (cat_at p27_7) (cat_at p26_8)) )
	(when (cat_at p26_8) (oneof (cat_at p25_8) (cat_at p26_7) (cat_at p27_8) (cat_at p26_9)) )
	(when (cat_at p26_9) (oneof (cat_at p25_9) (cat_at p26_8) (cat_at p27_9) (cat_at p26_10)) )
	(when (cat_at p26_10) (oneof (cat_at p25_10) (cat_at p26_9) (cat_at p27_10) (cat_at p26_11)) )
	(when (cat_at p26_11) (oneof (cat_at p25_11) (cat_at p26_10) (cat_at p27_11) (cat_at p26_12)) )
	(when (cat_at p26_12) (oneof (cat_at p25_12) (cat_at p26_11) (cat_at p27_12) (cat_at p26_13)) )
	(when (cat_at p26_13) (oneof (cat_at p25_13) (cat_at p26_12) (cat_at p27_13) (cat_at p26_14)) )
	(when (cat_at p26_14) (oneof (cat_at p25_14) (cat_at p26_13) (cat_at p27_14) (cat_at p26_15)) )
	(when (cat_at p26_15) (oneof (cat_at p25_15) (cat_at p26_14) (cat_at p27_15) (cat_at p26_16)) )
	(when (cat_at p26_16) (oneof (cat_at p25_16) (cat_at p26_15) (cat_at p27_16) (cat_at p26_17)) )
	(when (cat_at p26_17) (oneof (cat_at p25_17) (cat_at p26_16) (cat_at p27_17) (cat_at p26_18)) )
	(when (cat_at p26_18) (oneof (cat_at p25_18) (cat_at p26_17) (cat_at p27_18) (cat_at p26_19)) )
	(when (cat_at p26_19) (oneof (cat_at p25_19) (cat_at p26_18) (cat_at p27_19) (cat_at p26_20)) )
	(when (cat_at p26_20) (oneof (cat_at p25_20) (cat_at p26_19) (cat_at p27_20) (cat_at p26_21)) )
	(when (cat_at p26_21) (oneof (cat_at p25_21) (cat_at p26_20) (cat_at p27_21) (cat_at p26_22)) )
	(when (cat_at p26_22) (oneof (cat_at p25_22) (cat_at p26_21) (cat_at p27_22) (cat_at p26_23)) )
	(when (cat_at p26_23) (oneof (cat_at p25_23) (cat_at p26_22) (cat_at p27_23) (cat_at p26_24)) )
	(when (cat_at p26_24) (oneof (cat_at p25_24) (cat_at p26_23) (cat_at p27_24) (cat_at p26_25)) )
	(when (cat_at p26_25) (oneof (cat_at p25_25) (cat_at p26_24) (cat_at p27_25) (cat_at p26_26)) )
	(when (cat_at p26_26) (oneof (cat_at p25_26) (cat_at p26_25) (cat_at p27_26) (cat_at p26_27)) )
	(when (cat_at p26_27) (oneof (cat_at p25_27) (cat_at p26_26) (cat_at p27_27) (cat_at p26_28)) )
	(when (cat_at p26_28) (oneof (cat_at p25_28) (cat_at p26_27) (cat_at p27_28) (cat_at p26_29)) )
	(when (cat_at p26_29) (oneof (cat_at p25_29) (cat_at p26_28) (cat_at p27_29) (cat_at p26_30)) )
	(when (cat_at p26_30) (oneof (cat_at p25_30) (cat_at p26_29) (cat_at p27_30) (cat_at p26_31)) )
	(when (cat_at p26_31) (oneof (cat_at p25_31) (cat_at p26_30) (cat_at p27_31) (cat_at p26_32)) )
	(when (cat_at p26_32) (oneof (cat_at p25_32) (cat_at p26_31) (cat_at p27_32) (cat_at p26_33)) )
	(when (cat_at p26_33) (oneof (cat_at p25_33) (cat_at p26_32) (cat_at p27_33) (cat_at p26_34)) )
	(when (cat_at p26_34) (oneof (cat_at p25_34) (cat_at p26_33) (cat_at p27_34) (cat_at p26_35)) )
	(when (cat_at p26_35) (oneof (cat_at p25_35) (cat_at p26_34) (cat_at p27_35) (cat_at p26_36)) )
	(when (cat_at p26_36) (oneof (cat_at p25_36) (cat_at p26_35) (cat_at p27_36) (cat_at p26_37)) )
	(when (cat_at p26_37) (oneof (cat_at p25_37) (cat_at p26_36) (cat_at p27_37) (cat_at p26_38)) )
	(when (cat_at p26_38) (oneof (cat_at p25_38) (cat_at p26_37) (cat_at p27_38) (cat_at p26_39)) )
	(when (cat_at p26_39) (oneof (cat_at p25_39) (cat_at p26_38) (cat_at p27_39) (cat_at p26_40)) )
	(when (cat_at p26_40) (oneof (cat_at p25_40) (cat_at p26_39) (cat_at p27_40)) )
	(when (cat_at p27_1) (oneof (cat_at p26_1) (cat_at p28_1) (cat_at p27_2)) )
	(when (cat_at p27_2) (oneof (cat_at p26_2) (cat_at p27_1) (cat_at p28_2) (cat_at p27_3)) )
	(when (cat_at p27_3) (oneof (cat_at p26_3) (cat_at p27_2) (cat_at p28_3) (cat_at p27_4)) )
	(when (cat_at p27_4) (oneof (cat_at p26_4) (cat_at p27_3) (cat_at p28_4) (cat_at p27_5)) )
	(when (cat_at p27_5) (oneof (cat_at p26_5) (cat_at p27_4) (cat_at p28_5) (cat_at p27_6)) )
	(when (cat_at p27_6) (oneof (cat_at p26_6) (cat_at p27_5) (cat_at p28_6) (cat_at p27_7)) )
	(when (cat_at p27_7) (oneof (cat_at p26_7) (cat_at p27_6) (cat_at p28_7) (cat_at p27_8)) )
	(when (cat_at p27_8) (oneof (cat_at p26_8) (cat_at p27_7) (cat_at p28_8) (cat_at p27_9)) )
	(when (cat_at p27_9) (oneof (cat_at p26_9) (cat_at p27_8) (cat_at p28_9) (cat_at p27_10)) )
	(when (cat_at p27_10) (oneof (cat_at p26_10) (cat_at p27_9) (cat_at p28_10) (cat_at p27_11)) )
	(when (cat_at p27_11) (oneof (cat_at p26_11) (cat_at p27_10) (cat_at p28_11) (cat_at p27_12)) )
	(when (cat_at p27_12) (oneof (cat_at p26_12) (cat_at p27_11) (cat_at p28_12) (cat_at p27_13)) )
	(when (cat_at p27_13) (oneof (cat_at p26_13) (cat_at p27_12) (cat_at p28_13) (cat_at p27_14)) )
	(when (cat_at p27_14) (oneof (cat_at p26_14) (cat_at p27_13) (cat_at p28_14) (cat_at p27_15)) )
	(when (cat_at p27_15) (oneof (cat_at p26_15) (cat_at p27_14) (cat_at p28_15) (cat_at p27_16)) )
	(when (cat_at p27_16) (oneof (cat_at p26_16) (cat_at p27_15) (cat_at p28_16) (cat_at p27_17)) )
	(when (cat_at p27_17) (oneof (cat_at p26_17) (cat_at p27_16) (cat_at p28_17) (cat_at p27_18)) )
	(when (cat_at p27_18) (oneof (cat_at p26_18) (cat_at p27_17) (cat_at p28_18) (cat_at p27_19)) )
	(when (cat_at p27_19) (oneof (cat_at p26_19) (cat_at p27_18) (cat_at p28_19) (cat_at p27_20)) )
	(when (cat_at p27_20) (oneof (cat_at p26_20) (cat_at p27_19) (cat_at p28_20) (cat_at p27_21)) )
	(when (cat_at p27_21) (oneof (cat_at p26_21) (cat_at p27_20) (cat_at p28_21) (cat_at p27_22)) )
	(when (cat_at p27_22) (oneof (cat_at p26_22) (cat_at p27_21) (cat_at p28_22) (cat_at p27_23)) )
	(when (cat_at p27_23) (oneof (cat_at p26_23) (cat_at p27_22) (cat_at p28_23) (cat_at p27_24)) )
	(when (cat_at p27_24) (oneof (cat_at p26_24) (cat_at p27_23) (cat_at p28_24) (cat_at p27_25)) )
	(when (cat_at p27_25) (oneof (cat_at p26_25) (cat_at p27_24) (cat_at p28_25) (cat_at p27_26)) )
	(when (cat_at p27_26) (oneof (cat_at p26_26) (cat_at p27_25) (cat_at p28_26) (cat_at p27_27)) )
	(when (cat_at p27_27) (oneof (cat_at p26_27) (cat_at p27_26) (cat_at p28_27) (cat_at p27_28)) )
	(when (cat_at p27_28) (oneof (cat_at p26_28) (cat_at p27_27) (cat_at p28_28) (cat_at p27_29)) )
	(when (cat_at p27_29) (oneof (cat_at p26_29) (cat_at p27_28) (cat_at p28_29) (cat_at p27_30)) )
	(when (cat_at p27_30) (oneof (cat_at p26_30) (cat_at p27_29) (cat_at p28_30) (cat_at p27_31)) )
	(when (cat_at p27_31) (oneof (cat_at p26_31) (cat_at p27_30) (cat_at p28_31) (cat_at p27_32)) )
	(when (cat_at p27_32) (oneof (cat_at p26_32) (cat_at p27_31) (cat_at p28_32) (cat_at p27_33)) )
	(when (cat_at p27_33) (oneof (cat_at p26_33) (cat_at p27_32) (cat_at p28_33) (cat_at p27_34)) )
	(when (cat_at p27_34) (oneof (cat_at p26_34) (cat_at p27_33) (cat_at p28_34) (cat_at p27_35)) )
	(when (cat_at p27_35) (oneof (cat_at p26_35) (cat_at p27_34) (cat_at p28_35) (cat_at p27_36)) )
	(when (cat_at p27_36) (oneof (cat_at p26_36) (cat_at p27_35) (cat_at p28_36) (cat_at p27_37)) )
	(when (cat_at p27_37) (oneof (cat_at p26_37) (cat_at p27_36) (cat_at p28_37) (cat_at p27_38)) )
	(when (cat_at p27_38) (oneof (cat_at p26_38) (cat_at p27_37) (cat_at p28_38) (cat_at p27_39)) )
	(when (cat_at p27_39) (oneof (cat_at p26_39) (cat_at p27_38) (cat_at p28_39) (cat_at p27_40)) )
	(when (cat_at p27_40) (oneof (cat_at p26_40) (cat_at p27_39) (cat_at p28_40)) )
	(when (cat_at p28_1) (oneof (cat_at p27_1) (cat_at p29_1) (cat_at p28_2)) )
	(when (cat_at p28_2) (oneof (cat_at p27_2) (cat_at p28_1) (cat_at p29_2) (cat_at p28_3)) )
	(when (cat_at p28_3) (oneof (cat_at p27_3) (cat_at p28_2) (cat_at p29_3) (cat_at p28_4)) )
	(when (cat_at p28_4) (oneof (cat_at p27_4) (cat_at p28_3) (cat_at p29_4) (cat_at p28_5)) )
	(when (cat_at p28_5) (oneof (cat_at p27_5) (cat_at p28_4) (cat_at p29_5) (cat_at p28_6)) )
	(when (cat_at p28_6) (oneof (cat_at p27_6) (cat_at p28_5) (cat_at p29_6) (cat_at p28_7)) )
	(when (cat_at p28_7) (oneof (cat_at p27_7) (cat_at p28_6) (cat_at p29_7) (cat_at p28_8)) )
	(when (cat_at p28_8) (oneof (cat_at p27_8) (cat_at p28_7) (cat_at p29_8) (cat_at p28_9)) )
	(when (cat_at p28_9) (oneof (cat_at p27_9) (cat_at p28_8) (cat_at p29_9) (cat_at p28_10)) )
	(when (cat_at p28_10) (oneof (cat_at p27_10) (cat_at p28_9) (cat_at p29_10) (cat_at p28_11)) )
	(when (cat_at p28_11) (oneof (cat_at p27_11) (cat_at p28_10) (cat_at p29_11) (cat_at p28_12)) )
	(when (cat_at p28_12) (oneof (cat_at p27_12) (cat_at p28_11) (cat_at p29_12) (cat_at p28_13)) )
	(when (cat_at p28_13) (oneof (cat_at p27_13) (cat_at p28_12) (cat_at p29_13) (cat_at p28_14)) )
	(when (cat_at p28_14) (oneof (cat_at p27_14) (cat_at p28_13) (cat_at p29_14) (cat_at p28_15)) )
	(when (cat_at p28_15) (oneof (cat_at p27_15) (cat_at p28_14) (cat_at p29_15) (cat_at p28_16)) )
	(when (cat_at p28_16) (oneof (cat_at p27_16) (cat_at p28_15) (cat_at p29_16) (cat_at p28_17)) )
	(when (cat_at p28_17) (oneof (cat_at p27_17) (cat_at p28_16) (cat_at p29_17) (cat_at p28_18)) )
	(when (cat_at p28_18) (oneof (cat_at p27_18) (cat_at p28_17) (cat_at p29_18) (cat_at p28_19)) )
	(when (cat_at p28_19) (oneof (cat_at p27_19) (cat_at p28_18) (cat_at p29_19) (cat_at p28_20)) )
	(when (cat_at p28_20) (oneof (cat_at p27_20) (cat_at p28_19) (cat_at p29_20) (cat_at p28_21)) )
	(when (cat_at p28_21) (oneof (cat_at p27_21) (cat_at p28_20) (cat_at p29_21) (cat_at p28_22)) )
	(when (cat_at p28_22) (oneof (cat_at p27_22) (cat_at p28_21) (cat_at p29_22) (cat_at p28_23)) )
	(when (cat_at p28_23) (oneof (cat_at p27_23) (cat_at p28_22) (cat_at p29_23) (cat_at p28_24)) )
	(when (cat_at p28_24) (oneof (cat_at p27_24) (cat_at p28_23) (cat_at p29_24) (cat_at p28_25)) )
	(when (cat_at p28_25) (oneof (cat_at p27_25) (cat_at p28_24) (cat_at p29_25) (cat_at p28_26)) )
	(when (cat_at p28_26) (oneof (cat_at p27_26) (cat_at p28_25) (cat_at p29_26) (cat_at p28_27)) )
	(when (cat_at p28_27) (oneof (cat_at p27_27) (cat_at p28_26) (cat_at p29_27) (cat_at p28_28)) )
	(when (cat_at p28_28) (oneof (cat_at p27_28) (cat_at p28_27) (cat_at p29_28) (cat_at p28_29)) )
	(when (cat_at p28_29) (oneof (cat_at p27_29) (cat_at p28_28) (cat_at p29_29) (cat_at p28_30)) )
	(when (cat_at p28_30) (oneof (cat_at p27_30) (cat_at p28_29) (cat_at p29_30) (cat_at p28_31)) )
	(when (cat_at p28_31) (oneof (cat_at p27_31) (cat_at p28_30) (cat_at p29_31) (cat_at p28_32)) )
	(when (cat_at p28_32) (oneof (cat_at p27_32) (cat_at p28_31) (cat_at p29_32) (cat_at p28_33)) )
	(when (cat_at p28_33) (oneof (cat_at p27_33) (cat_at p28_32) (cat_at p29_33) (cat_at p28_34)) )
	(when (cat_at p28_34) (oneof (cat_at p27_34) (cat_at p28_33) (cat_at p29_34) (cat_at p28_35)) )
	(when (cat_at p28_35) (oneof (cat_at p27_35) (cat_at p28_34) (cat_at p29_35) (cat_at p28_36)) )
	(when (cat_at p28_36) (oneof (cat_at p27_36) (cat_at p28_35) (cat_at p29_36) (cat_at p28_37)) )
	(when (cat_at p28_37) (oneof (cat_at p27_37) (cat_at p28_36) (cat_at p29_37) (cat_at p28_38)) )
	(when (cat_at p28_38) (oneof (cat_at p27_38) (cat_at p28_37) (cat_at p29_38) (cat_at p28_39)) )
	(when (cat_at p28_39) (oneof (cat_at p27_39) (cat_at p28_38) (cat_at p29_39) (cat_at p28_40)) )
	(when (cat_at p28_40) (oneof (cat_at p27_40) (cat_at p28_39) (cat_at p29_40)) )
	(when (cat_at p29_1) (oneof (cat_at p28_1) (cat_at p30_1) (cat_at p29_2)) )
	(when (cat_at p29_2) (oneof (cat_at p28_2) (cat_at p29_1) (cat_at p30_2) (cat_at p29_3)) )
	(when (cat_at p29_3) (oneof (cat_at p28_3) (cat_at p29_2) (cat_at p30_3) (cat_at p29_4)) )
	(when (cat_at p29_4) (oneof (cat_at p28_4) (cat_at p29_3) (cat_at p30_4) (cat_at p29_5)) )
	(when (cat_at p29_5) (oneof (cat_at p28_5) (cat_at p29_4) (cat_at p30_5) (cat_at p29_6)) )
	(when (cat_at p29_6) (oneof (cat_at p28_6) (cat_at p29_5) (cat_at p30_6) (cat_at p29_7)) )
	(when (cat_at p29_7) (oneof (cat_at p28_7) (cat_at p29_6) (cat_at p30_7) (cat_at p29_8)) )
	(when (cat_at p29_8) (oneof (cat_at p28_8) (cat_at p29_7) (cat_at p30_8) (cat_at p29_9)) )
	(when (cat_at p29_9) (oneof (cat_at p28_9) (cat_at p29_8) (cat_at p30_9) (cat_at p29_10)) )
	(when (cat_at p29_10) (oneof (cat_at p28_10) (cat_at p29_9) (cat_at p30_10) (cat_at p29_11)) )
	(when (cat_at p29_11) (oneof (cat_at p28_11) (cat_at p29_10) (cat_at p30_11) (cat_at p29_12)) )
	(when (cat_at p29_12) (oneof (cat_at p28_12) (cat_at p29_11) (cat_at p30_12) (cat_at p29_13)) )
	(when (cat_at p29_13) (oneof (cat_at p28_13) (cat_at p29_12) (cat_at p30_13) (cat_at p29_14)) )
	(when (cat_at p29_14) (oneof (cat_at p28_14) (cat_at p29_13) (cat_at p30_14) (cat_at p29_15)) )
	(when (cat_at p29_15) (oneof (cat_at p28_15) (cat_at p29_14) (cat_at p30_15) (cat_at p29_16)) )
	(when (cat_at p29_16) (oneof (cat_at p28_16) (cat_at p29_15) (cat_at p30_16) (cat_at p29_17)) )
	(when (cat_at p29_17) (oneof (cat_at p28_17) (cat_at p29_16) (cat_at p30_17) (cat_at p29_18)) )
	(when (cat_at p29_18) (oneof (cat_at p28_18) (cat_at p29_17) (cat_at p30_18) (cat_at p29_19)) )
	(when (cat_at p29_19) (oneof (cat_at p28_19) (cat_at p29_18) (cat_at p30_19) (cat_at p29_20)) )
	(when (cat_at p29_20) (oneof (cat_at p28_20) (cat_at p29_19) (cat_at p30_20) (cat_at p29_21)) )
	(when (cat_at p29_21) (oneof (cat_at p28_21) (cat_at p29_20) (cat_at p30_21) (cat_at p29_22)) )
	(when (cat_at p29_22) (oneof (cat_at p28_22) (cat_at p29_21) (cat_at p30_22) (cat_at p29_23)) )
	(when (cat_at p29_23) (oneof (cat_at p28_23) (cat_at p29_22) (cat_at p30_23) (cat_at p29_24)) )
	(when (cat_at p29_24) (oneof (cat_at p28_24) (cat_at p29_23) (cat_at p30_24) (cat_at p29_25)) )
	(when (cat_at p29_25) (oneof (cat_at p28_25) (cat_at p29_24) (cat_at p30_25) (cat_at p29_26)) )
	(when (cat_at p29_26) (oneof (cat_at p28_26) (cat_at p29_25) (cat_at p30_26) (cat_at p29_27)) )
	(when (cat_at p29_27) (oneof (cat_at p28_27) (cat_at p29_26) (cat_at p30_27) (cat_at p29_28)) )
	(when (cat_at p29_28) (oneof (cat_at p28_28) (cat_at p29_27) (cat_at p30_28) (cat_at p29_29)) )
	(when (cat_at p29_29) (oneof (cat_at p28_29) (cat_at p29_28) (cat_at p30_29) (cat_at p29_30)) )
	(when (cat_at p29_30) (oneof (cat_at p28_30) (cat_at p29_29) (cat_at p30_30) (cat_at p29_31)) )
	(when (cat_at p29_31) (oneof (cat_at p28_31) (cat_at p29_30) (cat_at p30_31) (cat_at p29_32)) )
	(when (cat_at p29_32) (oneof (cat_at p28_32) (cat_at p29_31) (cat_at p30_32) (cat_at p29_33)) )
	(when (cat_at p29_33) (oneof (cat_at p28_33) (cat_at p29_32) (cat_at p30_33) (cat_at p29_34)) )
	(when (cat_at p29_34) (oneof (cat_at p28_34) (cat_at p29_33) (cat_at p30_34) (cat_at p29_35)) )
	(when (cat_at p29_35) (oneof (cat_at p28_35) (cat_at p29_34) (cat_at p30_35) (cat_at p29_36)) )
	(when (cat_at p29_36) (oneof (cat_at p28_36) (cat_at p29_35) (cat_at p30_36) (cat_at p29_37)) )
	(when (cat_at p29_37) (oneof (cat_at p28_37) (cat_at p29_36) (cat_at p30_37) (cat_at p29_38)) )
	(when (cat_at p29_38) (oneof (cat_at p28_38) (cat_at p29_37) (cat_at p30_38) (cat_at p29_39)) )
	(when (cat_at p29_39) (oneof (cat_at p28_39) (cat_at p29_38) (cat_at p30_39) (cat_at p29_40)) )
	(when (cat_at p29_40) (oneof (cat_at p28_40) (cat_at p29_39) (cat_at p30_40)) )
	(when (cat_at p30_1) (oneof (cat_at p29_1) (cat_at p31_1) (cat_at p30_2)) )
	(when (cat_at p30_2) (oneof (cat_at p29_2) (cat_at p30_1) (cat_at p31_2) (cat_at p30_3)) )
	(when (cat_at p30_3) (oneof (cat_at p29_3) (cat_at p30_2) (cat_at p31_3) (cat_at p30_4)) )
	(when (cat_at p30_4) (oneof (cat_at p29_4) (cat_at p30_3) (cat_at p31_4) (cat_at p30_5)) )
	(when (cat_at p30_5) (oneof (cat_at p29_5) (cat_at p30_4) (cat_at p31_5) (cat_at p30_6)) )
	(when (cat_at p30_6) (oneof (cat_at p29_6) (cat_at p30_5) (cat_at p31_6) (cat_at p30_7)) )
	(when (cat_at p30_7) (oneof (cat_at p29_7) (cat_at p30_6) (cat_at p31_7) (cat_at p30_8)) )
	(when (cat_at p30_8) (oneof (cat_at p29_8) (cat_at p30_7) (cat_at p31_8) (cat_at p30_9)) )
	(when (cat_at p30_9) (oneof (cat_at p29_9) (cat_at p30_8) (cat_at p31_9) (cat_at p30_10)) )
	(when (cat_at p30_10) (oneof (cat_at p29_10) (cat_at p30_9) (cat_at p31_10) (cat_at p30_11)) )
	(when (cat_at p30_11) (oneof (cat_at p29_11) (cat_at p30_10) (cat_at p31_11) (cat_at p30_12)) )
	(when (cat_at p30_12) (oneof (cat_at p29_12) (cat_at p30_11) (cat_at p31_12) (cat_at p30_13)) )
	(when (cat_at p30_13) (oneof (cat_at p29_13) (cat_at p30_12) (cat_at p31_13) (cat_at p30_14)) )
	(when (cat_at p30_14) (oneof (cat_at p29_14) (cat_at p30_13) (cat_at p31_14) (cat_at p30_15)) )
	(when (cat_at p30_15) (oneof (cat_at p29_15) (cat_at p30_14) (cat_at p31_15) (cat_at p30_16)) )
	(when (cat_at p30_16) (oneof (cat_at p29_16) (cat_at p30_15) (cat_at p31_16) (cat_at p30_17)) )
	(when (cat_at p30_17) (oneof (cat_at p29_17) (cat_at p30_16) (cat_at p31_17) (cat_at p30_18)) )
	(when (cat_at p30_18) (oneof (cat_at p29_18) (cat_at p30_17) (cat_at p31_18) (cat_at p30_19)) )
	(when (cat_at p30_19) (oneof (cat_at p29_19) (cat_at p30_18) (cat_at p31_19) (cat_at p30_20)) )
	(when (cat_at p30_20) (oneof (cat_at p29_20) (cat_at p30_19) (cat_at p31_20) (cat_at p30_21)) )
	(when (cat_at p30_21) (oneof (cat_at p29_21) (cat_at p30_20) (cat_at p31_21) (cat_at p30_22)) )
	(when (cat_at p30_22) (oneof (cat_at p29_22) (cat_at p30_21) (cat_at p31_22) (cat_at p30_23)) )
	(when (cat_at p30_23) (oneof (cat_at p29_23) (cat_at p30_22) (cat_at p31_23) (cat_at p30_24)) )
	(when (cat_at p30_24) (oneof (cat_at p29_24) (cat_at p30_23) (cat_at p31_24) (cat_at p30_25)) )
	(when (cat_at p30_25) (oneof (cat_at p29_25) (cat_at p30_24) (cat_at p31_25) (cat_at p30_26)) )
	(when (cat_at p30_26) (oneof (cat_at p29_26) (cat_at p30_25) (cat_at p31_26) (cat_at p30_27)) )
	(when (cat_at p30_27) (oneof (cat_at p29_27) (cat_at p30_26) (cat_at p31_27) (cat_at p30_28)) )
	(when (cat_at p30_28) (oneof (cat_at p29_28) (cat_at p30_27) (cat_at p31_28) (cat_at p30_29)) )
	(when (cat_at p30_29) (oneof (cat_at p29_29) (cat_at p30_28) (cat_at p31_29) (cat_at p30_30)) )
	(when (cat_at p30_30) (oneof (cat_at p29_30) (cat_at p30_29) (cat_at p31_30) (cat_at p30_31)) )
	(when (cat_at p30_31) (oneof (cat_at p29_31) (cat_at p30_30) (cat_at p31_31) (cat_at p30_32)) )
	(when (cat_at p30_32) (oneof (cat_at p29_32) (cat_at p30_31) (cat_at p31_32) (cat_at p30_33)) )
	(when (cat_at p30_33) (oneof (cat_at p29_33) (cat_at p30_32) (cat_at p31_33) (cat_at p30_34)) )
	(when (cat_at p30_34) (oneof (cat_at p29_34) (cat_at p30_33) (cat_at p31_34) (cat_at p30_35)) )
	(when (cat_at p30_35) (oneof (cat_at p29_35) (cat_at p30_34) (cat_at p31_35) (cat_at p30_36)) )
	(when (cat_at p30_36) (oneof (cat_at p29_36) (cat_at p30_35) (cat_at p31_36) (cat_at p30_37)) )
	(when (cat_at p30_37) (oneof (cat_at p29_37) (cat_at p30_36) (cat_at p31_37) (cat_at p30_38)) )
	(when (cat_at p30_38) (oneof (cat_at p29_38) (cat_at p30_37) (cat_at p31_38) (cat_at p30_39)) )
	(when (cat_at p30_39) (oneof (cat_at p29_39) (cat_at p30_38) (cat_at p31_39) (cat_at p30_40)) )
	(when (cat_at p30_40) (oneof (cat_at p29_40) (cat_at p30_39) (cat_at p31_40)) )
	(when (cat_at p31_1) (oneof (cat_at p30_1) (cat_at p32_1) (cat_at p31_2)) )
	(when (cat_at p31_2) (oneof (cat_at p30_2) (cat_at p31_1) (cat_at p32_2) (cat_at p31_3)) )
	(when (cat_at p31_3) (oneof (cat_at p30_3) (cat_at p31_2) (cat_at p32_3) (cat_at p31_4)) )
	(when (cat_at p31_4) (oneof (cat_at p30_4) (cat_at p31_3) (cat_at p32_4) (cat_at p31_5)) )
	(when (cat_at p31_5) (oneof (cat_at p30_5) (cat_at p31_4) (cat_at p32_5) (cat_at p31_6)) )
	(when (cat_at p31_6) (oneof (cat_at p30_6) (cat_at p31_5) (cat_at p32_6) (cat_at p31_7)) )
	(when (cat_at p31_7) (oneof (cat_at p30_7) (cat_at p31_6) (cat_at p32_7) (cat_at p31_8)) )
	(when (cat_at p31_8) (oneof (cat_at p30_8) (cat_at p31_7) (cat_at p32_8) (cat_at p31_9)) )
	(when (cat_at p31_9) (oneof (cat_at p30_9) (cat_at p31_8) (cat_at p32_9) (cat_at p31_10)) )
	(when (cat_at p31_10) (oneof (cat_at p30_10) (cat_at p31_9) (cat_at p32_10) (cat_at p31_11)) )
	(when (cat_at p31_11) (oneof (cat_at p30_11) (cat_at p31_10) (cat_at p32_11) (cat_at p31_12)) )
	(when (cat_at p31_12) (oneof (cat_at p30_12) (cat_at p31_11) (cat_at p32_12) (cat_at p31_13)) )
	(when (cat_at p31_13) (oneof (cat_at p30_13) (cat_at p31_12) (cat_at p32_13) (cat_at p31_14)) )
	(when (cat_at p31_14) (oneof (cat_at p30_14) (cat_at p31_13) (cat_at p32_14) (cat_at p31_15)) )
	(when (cat_at p31_15) (oneof (cat_at p30_15) (cat_at p31_14) (cat_at p32_15) (cat_at p31_16)) )
	(when (cat_at p31_16) (oneof (cat_at p30_16) (cat_at p31_15) (cat_at p32_16) (cat_at p31_17)) )
	(when (cat_at p31_17) (oneof (cat_at p30_17) (cat_at p31_16) (cat_at p32_17) (cat_at p31_18)) )
	(when (cat_at p31_18) (oneof (cat_at p30_18) (cat_at p31_17) (cat_at p32_18) (cat_at p31_19)) )
	(when (cat_at p31_19) (oneof (cat_at p30_19) (cat_at p31_18) (cat_at p32_19) (cat_at p31_20)) )
	(when (cat_at p31_20) (oneof (cat_at p30_20) (cat_at p31_19) (cat_at p32_20) (cat_at p31_21)) )
	(when (cat_at p31_21) (oneof (cat_at p30_21) (cat_at p31_20) (cat_at p32_21) (cat_at p31_22)) )
	(when (cat_at p31_22) (oneof (cat_at p30_22) (cat_at p31_21) (cat_at p32_22) (cat_at p31_23)) )
	(when (cat_at p31_23) (oneof (cat_at p30_23) (cat_at p31_22) (cat_at p32_23) (cat_at p31_24)) )
	(when (cat_at p31_24) (oneof (cat_at p30_24) (cat_at p31_23) (cat_at p32_24) (cat_at p31_25)) )
	(when (cat_at p31_25) (oneof (cat_at p30_25) (cat_at p31_24) (cat_at p32_25) (cat_at p31_26)) )
	(when (cat_at p31_26) (oneof (cat_at p30_26) (cat_at p31_25) (cat_at p32_26) (cat_at p31_27)) )
	(when (cat_at p31_27) (oneof (cat_at p30_27) (cat_at p31_26) (cat_at p32_27) (cat_at p31_28)) )
	(when (cat_at p31_28) (oneof (cat_at p30_28) (cat_at p31_27) (cat_at p32_28) (cat_at p31_29)) )
	(when (cat_at p31_29) (oneof (cat_at p30_29) (cat_at p31_28) (cat_at p32_29) (cat_at p31_30)) )
	(when (cat_at p31_30) (oneof (cat_at p30_30) (cat_at p31_29) (cat_at p32_30) (cat_at p31_31)) )
	(when (cat_at p31_31) (oneof (cat_at p30_31) (cat_at p31_30) (cat_at p32_31) (cat_at p31_32)) )
	(when (cat_at p31_32) (oneof (cat_at p30_32) (cat_at p31_31) (cat_at p32_32) (cat_at p31_33)) )
	(when (cat_at p31_33) (oneof (cat_at p30_33) (cat_at p31_32) (cat_at p32_33) (cat_at p31_34)) )
	(when (cat_at p31_34) (oneof (cat_at p30_34) (cat_at p31_33) (cat_at p32_34) (cat_at p31_35)) )
	(when (cat_at p31_35) (oneof (cat_at p30_35) (cat_at p31_34) (cat_at p32_35) (cat_at p31_36)) )
	(when (cat_at p31_36) (oneof (cat_at p30_36) (cat_at p31_35) (cat_at p32_36) (cat_at p31_37)) )
	(when (cat_at p31_37) (oneof (cat_at p30_37) (cat_at p31_36) (cat_at p32_37) (cat_at p31_38)) )
	(when (cat_at p31_38) (oneof (cat_at p30_38) (cat_at p31_37) (cat_at p32_38) (cat_at p31_39)) )
	(when (cat_at p31_39) (oneof (cat_at p30_39) (cat_at p31_38) (cat_at p32_39) (cat_at p31_40)) )
	(when (cat_at p31_40) (oneof (cat_at p30_40) (cat_at p31_39) (cat_at p32_40)) )
	(when (cat_at p32_1) (oneof (cat_at p31_1) (cat_at p33_1) (cat_at p32_2)) )
	(when (cat_at p32_2) (oneof (cat_at p31_2) (cat_at p32_1) (cat_at p33_2) (cat_at p32_3)) )
	(when (cat_at p32_3) (oneof (cat_at p31_3) (cat_at p32_2) (cat_at p33_3) (cat_at p32_4)) )
	(when (cat_at p32_4) (oneof (cat_at p31_4) (cat_at p32_3) (cat_at p33_4) (cat_at p32_5)) )
	(when (cat_at p32_5) (oneof (cat_at p31_5) (cat_at p32_4) (cat_at p33_5) (cat_at p32_6)) )
	(when (cat_at p32_6) (oneof (cat_at p31_6) (cat_at p32_5) (cat_at p33_6) (cat_at p32_7)) )
	(when (cat_at p32_7) (oneof (cat_at p31_7) (cat_at p32_6) (cat_at p33_7) (cat_at p32_8)) )
	(when (cat_at p32_8) (oneof (cat_at p31_8) (cat_at p32_7) (cat_at p33_8) (cat_at p32_9)) )
	(when (cat_at p32_9) (oneof (cat_at p31_9) (cat_at p32_8) (cat_at p33_9) (cat_at p32_10)) )
	(when (cat_at p32_10) (oneof (cat_at p31_10) (cat_at p32_9) (cat_at p33_10) (cat_at p32_11)) )
	(when (cat_at p32_11) (oneof (cat_at p31_11) (cat_at p32_10) (cat_at p33_11) (cat_at p32_12)) )
	(when (cat_at p32_12) (oneof (cat_at p31_12) (cat_at p32_11) (cat_at p33_12) (cat_at p32_13)) )
	(when (cat_at p32_13) (oneof (cat_at p31_13) (cat_at p32_12) (cat_at p33_13) (cat_at p32_14)) )
	(when (cat_at p32_14) (oneof (cat_at p31_14) (cat_at p32_13) (cat_at p33_14) (cat_at p32_15)) )
	(when (cat_at p32_15) (oneof (cat_at p31_15) (cat_at p32_14) (cat_at p33_15) (cat_at p32_16)) )
	(when (cat_at p32_16) (oneof (cat_at p31_16) (cat_at p32_15) (cat_at p33_16) (cat_at p32_17)) )
	(when (cat_at p32_17) (oneof (cat_at p31_17) (cat_at p32_16) (cat_at p33_17) (cat_at p32_18)) )
	(when (cat_at p32_18) (oneof (cat_at p31_18) (cat_at p32_17) (cat_at p33_18) (cat_at p32_19)) )
	(when (cat_at p32_19) (oneof (cat_at p31_19) (cat_at p32_18) (cat_at p33_19) (cat_at p32_20)) )
	(when (cat_at p32_20) (oneof (cat_at p31_20) (cat_at p32_19) (cat_at p33_20) (cat_at p32_21)) )
	(when (cat_at p32_21) (oneof (cat_at p31_21) (cat_at p32_20) (cat_at p33_21) (cat_at p32_22)) )
	(when (cat_at p32_22) (oneof (cat_at p31_22) (cat_at p32_21) (cat_at p33_22) (cat_at p32_23)) )
	(when (cat_at p32_23) (oneof (cat_at p31_23) (cat_at p32_22) (cat_at p33_23) (cat_at p32_24)) )
	(when (cat_at p32_24) (oneof (cat_at p31_24) (cat_at p32_23) (cat_at p33_24) (cat_at p32_25)) )
	(when (cat_at p32_25) (oneof (cat_at p31_25) (cat_at p32_24) (cat_at p33_25) (cat_at p32_26)) )
	(when (cat_at p32_26) (oneof (cat_at p31_26) (cat_at p32_25) (cat_at p33_26) (cat_at p32_27)) )
	(when (cat_at p32_27) (oneof (cat_at p31_27) (cat_at p32_26) (cat_at p33_27) (cat_at p32_28)) )
	(when (cat_at p32_28) (oneof (cat_at p31_28) (cat_at p32_27) (cat_at p33_28) (cat_at p32_29)) )
	(when (cat_at p32_29) (oneof (cat_at p31_29) (cat_at p32_28) (cat_at p33_29) (cat_at p32_30)) )
	(when (cat_at p32_30) (oneof (cat_at p31_30) (cat_at p32_29) (cat_at p33_30) (cat_at p32_31)) )
	(when (cat_at p32_31) (oneof (cat_at p31_31) (cat_at p32_30) (cat_at p33_31) (cat_at p32_32)) )
	(when (cat_at p32_32) (oneof (cat_at p31_32) (cat_at p32_31) (cat_at p33_32) (cat_at p32_33)) )
	(when (cat_at p32_33) (oneof (cat_at p31_33) (cat_at p32_32) (cat_at p33_33) (cat_at p32_34)) )
	(when (cat_at p32_34) (oneof (cat_at p31_34) (cat_at p32_33) (cat_at p33_34) (cat_at p32_35)) )
	(when (cat_at p32_35) (oneof (cat_at p31_35) (cat_at p32_34) (cat_at p33_35) (cat_at p32_36)) )
	(when (cat_at p32_36) (oneof (cat_at p31_36) (cat_at p32_35) (cat_at p33_36) (cat_at p32_37)) )
	(when (cat_at p32_37) (oneof (cat_at p31_37) (cat_at p32_36) (cat_at p33_37) (cat_at p32_38)) )
	(when (cat_at p32_38) (oneof (cat_at p31_38) (cat_at p32_37) (cat_at p33_38) (cat_at p32_39)) )
	(when (cat_at p32_39) (oneof (cat_at p31_39) (cat_at p32_38) (cat_at p33_39) (cat_at p32_40)) )
	(when (cat_at p32_40) (oneof (cat_at p31_40) (cat_at p32_39) (cat_at p33_40)) )
	(when (cat_at p33_1) (oneof (cat_at p32_1) (cat_at p34_1) (cat_at p33_2)) )
	(when (cat_at p33_2) (oneof (cat_at p32_2) (cat_at p33_1) (cat_at p34_2) (cat_at p33_3)) )
	(when (cat_at p33_3) (oneof (cat_at p32_3) (cat_at p33_2) (cat_at p34_3) (cat_at p33_4)) )
	(when (cat_at p33_4) (oneof (cat_at p32_4) (cat_at p33_3) (cat_at p34_4) (cat_at p33_5)) )
	(when (cat_at p33_5) (oneof (cat_at p32_5) (cat_at p33_4) (cat_at p34_5) (cat_at p33_6)) )
	(when (cat_at p33_6) (oneof (cat_at p32_6) (cat_at p33_5) (cat_at p34_6) (cat_at p33_7)) )
	(when (cat_at p33_7) (oneof (cat_at p32_7) (cat_at p33_6) (cat_at p34_7) (cat_at p33_8)) )
	(when (cat_at p33_8) (oneof (cat_at p32_8) (cat_at p33_7) (cat_at p34_8) (cat_at p33_9)) )
	(when (cat_at p33_9) (oneof (cat_at p32_9) (cat_at p33_8) (cat_at p34_9) (cat_at p33_10)) )
	(when (cat_at p33_10) (oneof (cat_at p32_10) (cat_at p33_9) (cat_at p34_10) (cat_at p33_11)) )
	(when (cat_at p33_11) (oneof (cat_at p32_11) (cat_at p33_10) (cat_at p34_11) (cat_at p33_12)) )
	(when (cat_at p33_12) (oneof (cat_at p32_12) (cat_at p33_11) (cat_at p34_12) (cat_at p33_13)) )
	(when (cat_at p33_13) (oneof (cat_at p32_13) (cat_at p33_12) (cat_at p34_13) (cat_at p33_14)) )
	(when (cat_at p33_14) (oneof (cat_at p32_14) (cat_at p33_13) (cat_at p34_14) (cat_at p33_15)) )
	(when (cat_at p33_15) (oneof (cat_at p32_15) (cat_at p33_14) (cat_at p34_15) (cat_at p33_16)) )
	(when (cat_at p33_16) (oneof (cat_at p32_16) (cat_at p33_15) (cat_at p34_16) (cat_at p33_17)) )
	(when (cat_at p33_17) (oneof (cat_at p32_17) (cat_at p33_16) (cat_at p34_17) (cat_at p33_18)) )
	(when (cat_at p33_18) (oneof (cat_at p32_18) (cat_at p33_17) (cat_at p34_18) (cat_at p33_19)) )
	(when (cat_at p33_19) (oneof (cat_at p32_19) (cat_at p33_18) (cat_at p34_19) (cat_at p33_20)) )
	(when (cat_at p33_20) (oneof (cat_at p32_20) (cat_at p33_19) (cat_at p34_20) (cat_at p33_21)) )
	(when (cat_at p33_21) (oneof (cat_at p32_21) (cat_at p33_20) (cat_at p34_21) (cat_at p33_22)) )
	(when (cat_at p33_22) (oneof (cat_at p32_22) (cat_at p33_21) (cat_at p34_22) (cat_at p33_23)) )
	(when (cat_at p33_23) (oneof (cat_at p32_23) (cat_at p33_22) (cat_at p34_23) (cat_at p33_24)) )
	(when (cat_at p33_24) (oneof (cat_at p32_24) (cat_at p33_23) (cat_at p34_24) (cat_at p33_25)) )
	(when (cat_at p33_25) (oneof (cat_at p32_25) (cat_at p33_24) (cat_at p34_25) (cat_at p33_26)) )
	(when (cat_at p33_26) (oneof (cat_at p32_26) (cat_at p33_25) (cat_at p34_26) (cat_at p33_27)) )
	(when (cat_at p33_27) (oneof (cat_at p32_27) (cat_at p33_26) (cat_at p34_27) (cat_at p33_28)) )
	(when (cat_at p33_28) (oneof (cat_at p32_28) (cat_at p33_27) (cat_at p34_28) (cat_at p33_29)) )
	(when (cat_at p33_29) (oneof (cat_at p32_29) (cat_at p33_28) (cat_at p34_29) (cat_at p33_30)) )
	(when (cat_at p33_30) (oneof (cat_at p32_30) (cat_at p33_29) (cat_at p34_30) (cat_at p33_31)) )
	(when (cat_at p33_31) (oneof (cat_at p32_31) (cat_at p33_30) (cat_at p34_31) (cat_at p33_32)) )
	(when (cat_at p33_32) (oneof (cat_at p32_32) (cat_at p33_31) (cat_at p34_32) (cat_at p33_33)) )
	(when (cat_at p33_33) (oneof (cat_at p32_33) (cat_at p33_32) (cat_at p34_33) (cat_at p33_34)) )
	(when (cat_at p33_34) (oneof (cat_at p32_34) (cat_at p33_33) (cat_at p34_34) (cat_at p33_35)) )
	(when (cat_at p33_35) (oneof (cat_at p32_35) (cat_at p33_34) (cat_at p34_35) (cat_at p33_36)) )
	(when (cat_at p33_36) (oneof (cat_at p32_36) (cat_at p33_35) (cat_at p34_36) (cat_at p33_37)) )
	(when (cat_at p33_37) (oneof (cat_at p32_37) (cat_at p33_36) (cat_at p34_37) (cat_at p33_38)) )
	(when (cat_at p33_38) (oneof (cat_at p32_38) (cat_at p33_37) (cat_at p34_38) (cat_at p33_39)) )
	(when (cat_at p33_39) (oneof (cat_at p32_39) (cat_at p33_38) (cat_at p34_39) (cat_at p33_40)) )
	(when (cat_at p33_40) (oneof (cat_at p32_40) (cat_at p33_39) (cat_at p34_40)) )
	(when (cat_at p34_1) (oneof (cat_at p33_1) (cat_at p35_1) (cat_at p34_2)) )
	(when (cat_at p34_2) (oneof (cat_at p33_2) (cat_at p34_1) (cat_at p35_2) (cat_at p34_3)) )
	(when (cat_at p34_3) (oneof (cat_at p33_3) (cat_at p34_2) (cat_at p35_3) (cat_at p34_4)) )
	(when (cat_at p34_4) (oneof (cat_at p33_4) (cat_at p34_3) (cat_at p35_4) (cat_at p34_5)) )
	(when (cat_at p34_5) (oneof (cat_at p33_5) (cat_at p34_4) (cat_at p35_5) (cat_at p34_6)) )
	(when (cat_at p34_6) (oneof (cat_at p33_6) (cat_at p34_5) (cat_at p35_6) (cat_at p34_7)) )
	(when (cat_at p34_7) (oneof (cat_at p33_7) (cat_at p34_6) (cat_at p35_7) (cat_at p34_8)) )
	(when (cat_at p34_8) (oneof (cat_at p33_8) (cat_at p34_7) (cat_at p35_8) (cat_at p34_9)) )
	(when (cat_at p34_9) (oneof (cat_at p33_9) (cat_at p34_8) (cat_at p35_9) (cat_at p34_10)) )
	(when (cat_at p34_10) (oneof (cat_at p33_10) (cat_at p34_9) (cat_at p35_10) (cat_at p34_11)) )
	(when (cat_at p34_11) (oneof (cat_at p33_11) (cat_at p34_10) (cat_at p35_11) (cat_at p34_12)) )
	(when (cat_at p34_12) (oneof (cat_at p33_12) (cat_at p34_11) (cat_at p35_12) (cat_at p34_13)) )
	(when (cat_at p34_13) (oneof (cat_at p33_13) (cat_at p34_12) (cat_at p35_13) (cat_at p34_14)) )
	(when (cat_at p34_14) (oneof (cat_at p33_14) (cat_at p34_13) (cat_at p35_14) (cat_at p34_15)) )
	(when (cat_at p34_15) (oneof (cat_at p33_15) (cat_at p34_14) (cat_at p35_15) (cat_at p34_16)) )
	(when (cat_at p34_16) (oneof (cat_at p33_16) (cat_at p34_15) (cat_at p35_16) (cat_at p34_17)) )
	(when (cat_at p34_17) (oneof (cat_at p33_17) (cat_at p34_16) (cat_at p35_17) (cat_at p34_18)) )
	(when (cat_at p34_18) (oneof (cat_at p33_18) (cat_at p34_17) (cat_at p35_18) (cat_at p34_19)) )
	(when (cat_at p34_19) (oneof (cat_at p33_19) (cat_at p34_18) (cat_at p35_19) (cat_at p34_20)) )
	(when (cat_at p34_20) (oneof (cat_at p33_20) (cat_at p34_19) (cat_at p35_20) (cat_at p34_21)) )
	(when (cat_at p34_21) (oneof (cat_at p33_21) (cat_at p34_20) (cat_at p35_21) (cat_at p34_22)) )
	(when (cat_at p34_22) (oneof (cat_at p33_22) (cat_at p34_21) (cat_at p35_22) (cat_at p34_23)) )
	(when (cat_at p34_23) (oneof (cat_at p33_23) (cat_at p34_22) (cat_at p35_23) (cat_at p34_24)) )
	(when (cat_at p34_24) (oneof (cat_at p33_24) (cat_at p34_23) (cat_at p35_24) (cat_at p34_25)) )
	(when (cat_at p34_25) (oneof (cat_at p33_25) (cat_at p34_24) (cat_at p35_25) (cat_at p34_26)) )
	(when (cat_at p34_26) (oneof (cat_at p33_26) (cat_at p34_25) (cat_at p35_26) (cat_at p34_27)) )
	(when (cat_at p34_27) (oneof (cat_at p33_27) (cat_at p34_26) (cat_at p35_27) (cat_at p34_28)) )
	(when (cat_at p34_28) (oneof (cat_at p33_28) (cat_at p34_27) (cat_at p35_28) (cat_at p34_29)) )
	(when (cat_at p34_29) (oneof (cat_at p33_29) (cat_at p34_28) (cat_at p35_29) (cat_at p34_30)) )
	(when (cat_at p34_30) (oneof (cat_at p33_30) (cat_at p34_29) (cat_at p35_30) (cat_at p34_31)) )
	(when (cat_at p34_31) (oneof (cat_at p33_31) (cat_at p34_30) (cat_at p35_31) (cat_at p34_32)) )
	(when (cat_at p34_32) (oneof (cat_at p33_32) (cat_at p34_31) (cat_at p35_32) (cat_at p34_33)) )
	(when (cat_at p34_33) (oneof (cat_at p33_33) (cat_at p34_32) (cat_at p35_33) (cat_at p34_34)) )
	(when (cat_at p34_34) (oneof (cat_at p33_34) (cat_at p34_33) (cat_at p35_34) (cat_at p34_35)) )
	(when (cat_at p34_35) (oneof (cat_at p33_35) (cat_at p34_34) (cat_at p35_35) (cat_at p34_36)) )
	(when (cat_at p34_36) (oneof (cat_at p33_36) (cat_at p34_35) (cat_at p35_36) (cat_at p34_37)) )
	(when (cat_at p34_37) (oneof (cat_at p33_37) (cat_at p34_36) (cat_at p35_37) (cat_at p34_38)) )
	(when (cat_at p34_38) (oneof (cat_at p33_38) (cat_at p34_37) (cat_at p35_38) (cat_at p34_39)) )
	(when (cat_at p34_39) (oneof (cat_at p33_39) (cat_at p34_38) (cat_at p35_39) (cat_at p34_40)) )
	(when (cat_at p34_40) (oneof (cat_at p33_40) (cat_at p34_39) (cat_at p35_40)) )
	(when (cat_at p35_1) (oneof (cat_at p34_1) (cat_at p36_1) (cat_at p35_2)) )
	(when (cat_at p35_2) (oneof (cat_at p34_2) (cat_at p35_1) (cat_at p36_2) (cat_at p35_3)) )
	(when (cat_at p35_3) (oneof (cat_at p34_3) (cat_at p35_2) (cat_at p36_3) (cat_at p35_4)) )
	(when (cat_at p35_4) (oneof (cat_at p34_4) (cat_at p35_3) (cat_at p36_4) (cat_at p35_5)) )
	(when (cat_at p35_5) (oneof (cat_at p34_5) (cat_at p35_4) (cat_at p36_5) (cat_at p35_6)) )
	(when (cat_at p35_6) (oneof (cat_at p34_6) (cat_at p35_5) (cat_at p36_6) (cat_at p35_7)) )
	(when (cat_at p35_7) (oneof (cat_at p34_7) (cat_at p35_6) (cat_at p36_7) (cat_at p35_8)) )
	(when (cat_at p35_8) (oneof (cat_at p34_8) (cat_at p35_7) (cat_at p36_8) (cat_at p35_9)) )
	(when (cat_at p35_9) (oneof (cat_at p34_9) (cat_at p35_8) (cat_at p36_9) (cat_at p35_10)) )
	(when (cat_at p35_10) (oneof (cat_at p34_10) (cat_at p35_9) (cat_at p36_10) (cat_at p35_11)) )
	(when (cat_at p35_11) (oneof (cat_at p34_11) (cat_at p35_10) (cat_at p36_11) (cat_at p35_12)) )
	(when (cat_at p35_12) (oneof (cat_at p34_12) (cat_at p35_11) (cat_at p36_12) (cat_at p35_13)) )
	(when (cat_at p35_13) (oneof (cat_at p34_13) (cat_at p35_12) (cat_at p36_13) (cat_at p35_14)) )
	(when (cat_at p35_14) (oneof (cat_at p34_14) (cat_at p35_13) (cat_at p36_14) (cat_at p35_15)) )
	(when (cat_at p35_15) (oneof (cat_at p34_15) (cat_at p35_14) (cat_at p36_15) (cat_at p35_16)) )
	(when (cat_at p35_16) (oneof (cat_at p34_16) (cat_at p35_15) (cat_at p36_16) (cat_at p35_17)) )
	(when (cat_at p35_17) (oneof (cat_at p34_17) (cat_at p35_16) (cat_at p36_17) (cat_at p35_18)) )
	(when (cat_at p35_18) (oneof (cat_at p34_18) (cat_at p35_17) (cat_at p36_18) (cat_at p35_19)) )
	(when (cat_at p35_19) (oneof (cat_at p34_19) (cat_at p35_18) (cat_at p36_19) (cat_at p35_20)) )
	(when (cat_at p35_20) (oneof (cat_at p34_20) (cat_at p35_19) (cat_at p36_20) (cat_at p35_21)) )
	(when (cat_at p35_21) (oneof (cat_at p34_21) (cat_at p35_20) (cat_at p36_21) (cat_at p35_22)) )
	(when (cat_at p35_22) (oneof (cat_at p34_22) (cat_at p35_21) (cat_at p36_22) (cat_at p35_23)) )
	(when (cat_at p35_23) (oneof (cat_at p34_23) (cat_at p35_22) (cat_at p36_23) (cat_at p35_24)) )
	(when (cat_at p35_24) (oneof (cat_at p34_24) (cat_at p35_23) (cat_at p36_24) (cat_at p35_25)) )
	(when (cat_at p35_25) (oneof (cat_at p34_25) (cat_at p35_24) (cat_at p36_25) (cat_at p35_26)) )
	(when (cat_at p35_26) (oneof (cat_at p34_26) (cat_at p35_25) (cat_at p36_26) (cat_at p35_27)) )
	(when (cat_at p35_27) (oneof (cat_at p34_27) (cat_at p35_26) (cat_at p36_27) (cat_at p35_28)) )
	(when (cat_at p35_28) (oneof (cat_at p34_28) (cat_at p35_27) (cat_at p36_28) (cat_at p35_29)) )
	(when (cat_at p35_29) (oneof (cat_at p34_29) (cat_at p35_28) (cat_at p36_29) (cat_at p35_30)) )
	(when (cat_at p35_30) (oneof (cat_at p34_30) (cat_at p35_29) (cat_at p36_30) (cat_at p35_31)) )
	(when (cat_at p35_31) (oneof (cat_at p34_31) (cat_at p35_30) (cat_at p36_31) (cat_at p35_32)) )
	(when (cat_at p35_32) (oneof (cat_at p34_32) (cat_at p35_31) (cat_at p36_32) (cat_at p35_33)) )
	(when (cat_at p35_33) (oneof (cat_at p34_33) (cat_at p35_32) (cat_at p36_33) (cat_at p35_34)) )
	(when (cat_at p35_34) (oneof (cat_at p34_34) (cat_at p35_33) (cat_at p36_34) (cat_at p35_35)) )
	(when (cat_at p35_35) (oneof (cat_at p34_35) (cat_at p35_34) (cat_at p36_35) (cat_at p35_36)) )
	(when (cat_at p35_36) (oneof (cat_at p34_36) (cat_at p35_35) (cat_at p36_36) (cat_at p35_37)) )
	(when (cat_at p35_37) (oneof (cat_at p34_37) (cat_at p35_36) (cat_at p36_37) (cat_at p35_38)) )
	(when (cat_at p35_38) (oneof (cat_at p34_38) (cat_at p35_37) (cat_at p36_38) (cat_at p35_39)) )
	(when (cat_at p35_39) (oneof (cat_at p34_39) (cat_at p35_38) (cat_at p36_39) (cat_at p35_40)) )
	(when (cat_at p35_40) (oneof (cat_at p34_40) (cat_at p35_39) (cat_at p36_40)) )
	(when (cat_at p36_1) (oneof (cat_at p35_1) (cat_at p37_1) (cat_at p36_2)) )
	(when (cat_at p36_2) (oneof (cat_at p35_2) (cat_at p36_1) (cat_at p37_2) (cat_at p36_3)) )
	(when (cat_at p36_3) (oneof (cat_at p35_3) (cat_at p36_2) (cat_at p37_3) (cat_at p36_4)) )
	(when (cat_at p36_4) (oneof (cat_at p35_4) (cat_at p36_3) (cat_at p37_4) (cat_at p36_5)) )
	(when (cat_at p36_5) (oneof (cat_at p35_5) (cat_at p36_4) (cat_at p37_5) (cat_at p36_6)) )
	(when (cat_at p36_6) (oneof (cat_at p35_6) (cat_at p36_5) (cat_at p37_6) (cat_at p36_7)) )
	(when (cat_at p36_7) (oneof (cat_at p35_7) (cat_at p36_6) (cat_at p37_7) (cat_at p36_8)) )
	(when (cat_at p36_8) (oneof (cat_at p35_8) (cat_at p36_7) (cat_at p37_8) (cat_at p36_9)) )
	(when (cat_at p36_9) (oneof (cat_at p35_9) (cat_at p36_8) (cat_at p37_9) (cat_at p36_10)) )
	(when (cat_at p36_10) (oneof (cat_at p35_10) (cat_at p36_9) (cat_at p37_10) (cat_at p36_11)) )
	(when (cat_at p36_11) (oneof (cat_at p35_11) (cat_at p36_10) (cat_at p37_11) (cat_at p36_12)) )
	(when (cat_at p36_12) (oneof (cat_at p35_12) (cat_at p36_11) (cat_at p37_12) (cat_at p36_13)) )
	(when (cat_at p36_13) (oneof (cat_at p35_13) (cat_at p36_12) (cat_at p37_13) (cat_at p36_14)) )
	(when (cat_at p36_14) (oneof (cat_at p35_14) (cat_at p36_13) (cat_at p37_14) (cat_at p36_15)) )
	(when (cat_at p36_15) (oneof (cat_at p35_15) (cat_at p36_14) (cat_at p37_15) (cat_at p36_16)) )
	(when (cat_at p36_16) (oneof (cat_at p35_16) (cat_at p36_15) (cat_at p37_16) (cat_at p36_17)) )
	(when (cat_at p36_17) (oneof (cat_at p35_17) (cat_at p36_16) (cat_at p37_17) (cat_at p36_18)) )
	(when (cat_at p36_18) (oneof (cat_at p35_18) (cat_at p36_17) (cat_at p37_18) (cat_at p36_19)) )
	(when (cat_at p36_19) (oneof (cat_at p35_19) (cat_at p36_18) (cat_at p37_19) (cat_at p36_20)) )
	(when (cat_at p36_20) (oneof (cat_at p35_20) (cat_at p36_19) (cat_at p37_20) (cat_at p36_21)) )
	(when (cat_at p36_21) (oneof (cat_at p35_21) (cat_at p36_20) (cat_at p37_21) (cat_at p36_22)) )
	(when (cat_at p36_22) (oneof (cat_at p35_22) (cat_at p36_21) (cat_at p37_22) (cat_at p36_23)) )
	(when (cat_at p36_23) (oneof (cat_at p35_23) (cat_at p36_22) (cat_at p37_23) (cat_at p36_24)) )
	(when (cat_at p36_24) (oneof (cat_at p35_24) (cat_at p36_23) (cat_at p37_24) (cat_at p36_25)) )
	(when (cat_at p36_25) (oneof (cat_at p35_25) (cat_at p36_24) (cat_at p37_25) (cat_at p36_26)) )
	(when (cat_at p36_26) (oneof (cat_at p35_26) (cat_at p36_25) (cat_at p37_26) (cat_at p36_27)) )
	(when (cat_at p36_27) (oneof (cat_at p35_27) (cat_at p36_26) (cat_at p37_27) (cat_at p36_28)) )
	(when (cat_at p36_28) (oneof (cat_at p35_28) (cat_at p36_27) (cat_at p37_28) (cat_at p36_29)) )
	(when (cat_at p36_29) (oneof (cat_at p35_29) (cat_at p36_28) (cat_at p37_29) (cat_at p36_30)) )
	(when (cat_at p36_30) (oneof (cat_at p35_30) (cat_at p36_29) (cat_at p37_30) (cat_at p36_31)) )
	(when (cat_at p36_31) (oneof (cat_at p35_31) (cat_at p36_30) (cat_at p37_31) (cat_at p36_32)) )
	(when (cat_at p36_32) (oneof (cat_at p35_32) (cat_at p36_31) (cat_at p37_32) (cat_at p36_33)) )
	(when (cat_at p36_33) (oneof (cat_at p35_33) (cat_at p36_32) (cat_at p37_33) (cat_at p36_34)) )
	(when (cat_at p36_34) (oneof (cat_at p35_34) (cat_at p36_33) (cat_at p37_34) (cat_at p36_35)) )
	(when (cat_at p36_35) (oneof (cat_at p35_35) (cat_at p36_34) (cat_at p37_35) (cat_at p36_36)) )
	(when (cat_at p36_36) (oneof (cat_at p35_36) (cat_at p36_35) (cat_at p37_36) (cat_at p36_37)) )
	(when (cat_at p36_37) (oneof (cat_at p35_37) (cat_at p36_36) (cat_at p37_37) (cat_at p36_38)) )
	(when (cat_at p36_38) (oneof (cat_at p35_38) (cat_at p36_37) (cat_at p37_38) (cat_at p36_39)) )
	(when (cat_at p36_39) (oneof (cat_at p35_39) (cat_at p36_38) (cat_at p37_39) (cat_at p36_40)) )
	(when (cat_at p36_40) (oneof (cat_at p35_40) (cat_at p36_39) (cat_at p37_40)) )
	(when (cat_at p37_1) (oneof (cat_at p36_1) (cat_at p38_1) (cat_at p37_2)) )
	(when (cat_at p37_2) (oneof (cat_at p36_2) (cat_at p37_1) (cat_at p38_2) (cat_at p37_3)) )
	(when (cat_at p37_3) (oneof (cat_at p36_3) (cat_at p37_2) (cat_at p38_3) (cat_at p37_4)) )
	(when (cat_at p37_4) (oneof (cat_at p36_4) (cat_at p37_3) (cat_at p38_4) (cat_at p37_5)) )
	(when (cat_at p37_5) (oneof (cat_at p36_5) (cat_at p37_4) (cat_at p38_5) (cat_at p37_6)) )
	(when (cat_at p37_6) (oneof (cat_at p36_6) (cat_at p37_5) (cat_at p38_6) (cat_at p37_7)) )
	(when (cat_at p37_7) (oneof (cat_at p36_7) (cat_at p37_6) (cat_at p38_7) (cat_at p37_8)) )
	(when (cat_at p37_8) (oneof (cat_at p36_8) (cat_at p37_7) (cat_at p38_8) (cat_at p37_9)) )
	(when (cat_at p37_9) (oneof (cat_at p36_9) (cat_at p37_8) (cat_at p38_9) (cat_at p37_10)) )
	(when (cat_at p37_10) (oneof (cat_at p36_10) (cat_at p37_9) (cat_at p38_10) (cat_at p37_11)) )
	(when (cat_at p37_11) (oneof (cat_at p36_11) (cat_at p37_10) (cat_at p38_11) (cat_at p37_12)) )
	(when (cat_at p37_12) (oneof (cat_at p36_12) (cat_at p37_11) (cat_at p38_12) (cat_at p37_13)) )
	(when (cat_at p37_13) (oneof (cat_at p36_13) (cat_at p37_12) (cat_at p38_13) (cat_at p37_14)) )
	(when (cat_at p37_14) (oneof (cat_at p36_14) (cat_at p37_13) (cat_at p38_14) (cat_at p37_15)) )
	(when (cat_at p37_15) (oneof (cat_at p36_15) (cat_at p37_14) (cat_at p38_15) (cat_at p37_16)) )
	(when (cat_at p37_16) (oneof (cat_at p36_16) (cat_at p37_15) (cat_at p38_16) (cat_at p37_17)) )
	(when (cat_at p37_17) (oneof (cat_at p36_17) (cat_at p37_16) (cat_at p38_17) (cat_at p37_18)) )
	(when (cat_at p37_18) (oneof (cat_at p36_18) (cat_at p37_17) (cat_at p38_18) (cat_at p37_19)) )
	(when (cat_at p37_19) (oneof (cat_at p36_19) (cat_at p37_18) (cat_at p38_19) (cat_at p37_20)) )
	(when (cat_at p37_20) (oneof (cat_at p36_20) (cat_at p37_19) (cat_at p38_20) (cat_at p37_21)) )
	(when (cat_at p37_21) (oneof (cat_at p36_21) (cat_at p37_20) (cat_at p38_21) (cat_at p37_22)) )
	(when (cat_at p37_22) (oneof (cat_at p36_22) (cat_at p37_21) (cat_at p38_22) (cat_at p37_23)) )
	(when (cat_at p37_23) (oneof (cat_at p36_23) (cat_at p37_22) (cat_at p38_23) (cat_at p37_24)) )
	(when (cat_at p37_24) (oneof (cat_at p36_24) (cat_at p37_23) (cat_at p38_24) (cat_at p37_25)) )
	(when (cat_at p37_25) (oneof (cat_at p36_25) (cat_at p37_24) (cat_at p38_25) (cat_at p37_26)) )
	(when (cat_at p37_26) (oneof (cat_at p36_26) (cat_at p37_25) (cat_at p38_26) (cat_at p37_27)) )
	(when (cat_at p37_27) (oneof (cat_at p36_27) (cat_at p37_26) (cat_at p38_27) (cat_at p37_28)) )
	(when (cat_at p37_28) (oneof (cat_at p36_28) (cat_at p37_27) (cat_at p38_28) (cat_at p37_29)) )
	(when (cat_at p37_29) (oneof (cat_at p36_29) (cat_at p37_28) (cat_at p38_29) (cat_at p37_30)) )
	(when (cat_at p37_30) (oneof (cat_at p36_30) (cat_at p37_29) (cat_at p38_30) (cat_at p37_31)) )
	(when (cat_at p37_31) (oneof (cat_at p36_31) (cat_at p37_30) (cat_at p38_31) (cat_at p37_32)) )
	(when (cat_at p37_32) (oneof (cat_at p36_32) (cat_at p37_31) (cat_at p38_32) (cat_at p37_33)) )
	(when (cat_at p37_33) (oneof (cat_at p36_33) (cat_at p37_32) (cat_at p38_33) (cat_at p37_34)) )
	(when (cat_at p37_34) (oneof (cat_at p36_34) (cat_at p37_33) (cat_at p38_34) (cat_at p37_35)) )
	(when (cat_at p37_35) (oneof (cat_at p36_35) (cat_at p37_34) (cat_at p38_35) (cat_at p37_36)) )
	(when (cat_at p37_36) (oneof (cat_at p36_36) (cat_at p37_35) (cat_at p38_36) (cat_at p37_37)) )
	(when (cat_at p37_37) (oneof (cat_at p36_37) (cat_at p37_36) (cat_at p38_37) (cat_at p37_38)) )
	(when (cat_at p37_38) (oneof (cat_at p36_38) (cat_at p37_37) (cat_at p38_38) (cat_at p37_39)) )
	(when (cat_at p37_39) (oneof (cat_at p36_39) (cat_at p37_38) (cat_at p38_39) (cat_at p37_40)) )
	(when (cat_at p37_40) (oneof (cat_at p36_40) (cat_at p37_39) (cat_at p38_40)) )
	(when (cat_at p38_1) (oneof (cat_at p37_1) (cat_at p39_1) (cat_at p38_2)) )
	(when (cat_at p38_2) (oneof (cat_at p37_2) (cat_at p38_1) (cat_at p39_2) (cat_at p38_3)) )
	(when (cat_at p38_3) (oneof (cat_at p37_3) (cat_at p38_2) (cat_at p39_3) (cat_at p38_4)) )
	(when (cat_at p38_4) (oneof (cat_at p37_4) (cat_at p38_3) (cat_at p39_4) (cat_at p38_5)) )
	(when (cat_at p38_5) (oneof (cat_at p37_5) (cat_at p38_4) (cat_at p39_5) (cat_at p38_6)) )
	(when (cat_at p38_6) (oneof (cat_at p37_6) (cat_at p38_5) (cat_at p39_6) (cat_at p38_7)) )
	(when (cat_at p38_7) (oneof (cat_at p37_7) (cat_at p38_6) (cat_at p39_7) (cat_at p38_8)) )
	(when (cat_at p38_8) (oneof (cat_at p37_8) (cat_at p38_7) (cat_at p39_8) (cat_at p38_9)) )
	(when (cat_at p38_9) (oneof (cat_at p37_9) (cat_at p38_8) (cat_at p39_9) (cat_at p38_10)) )
	(when (cat_at p38_10) (oneof (cat_at p37_10) (cat_at p38_9) (cat_at p39_10) (cat_at p38_11)) )
	(when (cat_at p38_11) (oneof (cat_at p37_11) (cat_at p38_10) (cat_at p39_11) (cat_at p38_12)) )
	(when (cat_at p38_12) (oneof (cat_at p37_12) (cat_at p38_11) (cat_at p39_12) (cat_at p38_13)) )
	(when (cat_at p38_13) (oneof (cat_at p37_13) (cat_at p38_12) (cat_at p39_13) (cat_at p38_14)) )
	(when (cat_at p38_14) (oneof (cat_at p37_14) (cat_at p38_13) (cat_at p39_14) (cat_at p38_15)) )
	(when (cat_at p38_15) (oneof (cat_at p37_15) (cat_at p38_14) (cat_at p39_15) (cat_at p38_16)) )
	(when (cat_at p38_16) (oneof (cat_at p37_16) (cat_at p38_15) (cat_at p39_16) (cat_at p38_17)) )
	(when (cat_at p38_17) (oneof (cat_at p37_17) (cat_at p38_16) (cat_at p39_17) (cat_at p38_18)) )
	(when (cat_at p38_18) (oneof (cat_at p37_18) (cat_at p38_17) (cat_at p39_18) (cat_at p38_19)) )
	(when (cat_at p38_19) (oneof (cat_at p37_19) (cat_at p38_18) (cat_at p39_19) (cat_at p38_20)) )
	(when (cat_at p38_20) (oneof (cat_at p37_20) (cat_at p38_19) (cat_at p39_20) (cat_at p38_21)) )
	(when (cat_at p38_21) (oneof (cat_at p37_21) (cat_at p38_20) (cat_at p39_21) (cat_at p38_22)) )
	(when (cat_at p38_22) (oneof (cat_at p37_22) (cat_at p38_21) (cat_at p39_22) (cat_at p38_23)) )
	(when (cat_at p38_23) (oneof (cat_at p37_23) (cat_at p38_22) (cat_at p39_23) (cat_at p38_24)) )
	(when (cat_at p38_24) (oneof (cat_at p37_24) (cat_at p38_23) (cat_at p39_24) (cat_at p38_25)) )
	(when (cat_at p38_25) (oneof (cat_at p37_25) (cat_at p38_24) (cat_at p39_25) (cat_at p38_26)) )
	(when (cat_at p38_26) (oneof (cat_at p37_26) (cat_at p38_25) (cat_at p39_26) (cat_at p38_27)) )
	(when (cat_at p38_27) (oneof (cat_at p37_27) (cat_at p38_26) (cat_at p39_27) (cat_at p38_28)) )
	(when (cat_at p38_28) (oneof (cat_at p37_28) (cat_at p38_27) (cat_at p39_28) (cat_at p38_29)) )
	(when (cat_at p38_29) (oneof (cat_at p37_29) (cat_at p38_28) (cat_at p39_29) (cat_at p38_30)) )
	(when (cat_at p38_30) (oneof (cat_at p37_30) (cat_at p38_29) (cat_at p39_30) (cat_at p38_31)) )
	(when (cat_at p38_31) (oneof (cat_at p37_31) (cat_at p38_30) (cat_at p39_31) (cat_at p38_32)) )
	(when (cat_at p38_32) (oneof (cat_at p37_32) (cat_at p38_31) (cat_at p39_32) (cat_at p38_33)) )
	(when (cat_at p38_33) (oneof (cat_at p37_33) (cat_at p38_32) (cat_at p39_33) (cat_at p38_34)) )
	(when (cat_at p38_34) (oneof (cat_at p37_34) (cat_at p38_33) (cat_at p39_34) (cat_at p38_35)) )
	(when (cat_at p38_35) (oneof (cat_at p37_35) (cat_at p38_34) (cat_at p39_35) (cat_at p38_36)) )
	(when (cat_at p38_36) (oneof (cat_at p37_36) (cat_at p38_35) (cat_at p39_36) (cat_at p38_37)) )
	(when (cat_at p38_37) (oneof (cat_at p37_37) (cat_at p38_36) (cat_at p39_37) (cat_at p38_38)) )
	(when (cat_at p38_38) (oneof (cat_at p37_38) (cat_at p38_37) (cat_at p39_38) (cat_at p38_39)) )
	(when (cat_at p38_39) (oneof (cat_at p37_39) (cat_at p38_38) (cat_at p39_39) (cat_at p38_40)) )
	(when (cat_at p38_40) (oneof (cat_at p37_40) (cat_at p38_39) (cat_at p39_40)) )
	(when (cat_at p39_1) (oneof (cat_at p38_1) (cat_at p40_1) (cat_at p39_2)) )
	(when (cat_at p39_2) (oneof (cat_at p38_2) (cat_at p39_1) (cat_at p40_2) (cat_at p39_3)) )
	(when (cat_at p39_3) (oneof (cat_at p38_3) (cat_at p39_2) (cat_at p40_3) (cat_at p39_4)) )
	(when (cat_at p39_4) (oneof (cat_at p38_4) (cat_at p39_3) (cat_at p40_4) (cat_at p39_5)) )
	(when (cat_at p39_5) (oneof (cat_at p38_5) (cat_at p39_4) (cat_at p40_5) (cat_at p39_6)) )
	(when (cat_at p39_6) (oneof (cat_at p38_6) (cat_at p39_5) (cat_at p40_6) (cat_at p39_7)) )
	(when (cat_at p39_7) (oneof (cat_at p38_7) (cat_at p39_6) (cat_at p40_7) (cat_at p39_8)) )
	(when (cat_at p39_8) (oneof (cat_at p38_8) (cat_at p39_7) (cat_at p40_8) (cat_at p39_9)) )
	(when (cat_at p39_9) (oneof (cat_at p38_9) (cat_at p39_8) (cat_at p40_9) (cat_at p39_10)) )
	(when (cat_at p39_10) (oneof (cat_at p38_10) (cat_at p39_9) (cat_at p40_10) (cat_at p39_11)) )
	(when (cat_at p39_11) (oneof (cat_at p38_11) (cat_at p39_10) (cat_at p40_11) (cat_at p39_12)) )
	(when (cat_at p39_12) (oneof (cat_at p38_12) (cat_at p39_11) (cat_at p40_12) (cat_at p39_13)) )
	(when (cat_at p39_13) (oneof (cat_at p38_13) (cat_at p39_12) (cat_at p40_13) (cat_at p39_14)) )
	(when (cat_at p39_14) (oneof (cat_at p38_14) (cat_at p39_13) (cat_at p40_14) (cat_at p39_15)) )
	(when (cat_at p39_15) (oneof (cat_at p38_15) (cat_at p39_14) (cat_at p40_15) (cat_at p39_16)) )
	(when (cat_at p39_16) (oneof (cat_at p38_16) (cat_at p39_15) (cat_at p40_16) (cat_at p39_17)) )
	(when (cat_at p39_17) (oneof (cat_at p38_17) (cat_at p39_16) (cat_at p40_17) (cat_at p39_18)) )
	(when (cat_at p39_18) (oneof (cat_at p38_18) (cat_at p39_17) (cat_at p40_18) (cat_at p39_19)) )
	(when (cat_at p39_19) (oneof (cat_at p38_19) (cat_at p39_18) (cat_at p40_19) (cat_at p39_20)) )
	(when (cat_at p39_20) (oneof (cat_at p38_20) (cat_at p39_19) (cat_at p40_20) (cat_at p39_21)) )
	(when (cat_at p39_21) (oneof (cat_at p38_21) (cat_at p39_20) (cat_at p40_21) (cat_at p39_22)) )
	(when (cat_at p39_22) (oneof (cat_at p38_22) (cat_at p39_21) (cat_at p40_22) (cat_at p39_23)) )
	(when (cat_at p39_23) (oneof (cat_at p38_23) (cat_at p39_22) (cat_at p40_23) (cat_at p39_24)) )
	(when (cat_at p39_24) (oneof (cat_at p38_24) (cat_at p39_23) (cat_at p40_24) (cat_at p39_25)) )
	(when (cat_at p39_25) (oneof (cat_at p38_25) (cat_at p39_24) (cat_at p40_25) (cat_at p39_26)) )
	(when (cat_at p39_26) (oneof (cat_at p38_26) (cat_at p39_25) (cat_at p40_26) (cat_at p39_27)) )
	(when (cat_at p39_27) (oneof (cat_at p38_27) (cat_at p39_26) (cat_at p40_27) (cat_at p39_28)) )
	(when (cat_at p39_28) (oneof (cat_at p38_28) (cat_at p39_27) (cat_at p40_28) (cat_at p39_29)) )
	(when (cat_at p39_29) (oneof (cat_at p38_29) (cat_at p39_28) (cat_at p40_29) (cat_at p39_30)) )
	(when (cat_at p39_30) (oneof (cat_at p38_30) (cat_at p39_29) (cat_at p40_30) (cat_at p39_31)) )
	(when (cat_at p39_31) (oneof (cat_at p38_31) (cat_at p39_30) (cat_at p40_31) (cat_at p39_32)) )
	(when (cat_at p39_32) (oneof (cat_at p38_32) (cat_at p39_31) (cat_at p40_32) (cat_at p39_33)) )
	(when (cat_at p39_33) (oneof (cat_at p38_33) (cat_at p39_32) (cat_at p40_33) (cat_at p39_34)) )
	(when (cat_at p39_34) (oneof (cat_at p38_34) (cat_at p39_33) (cat_at p40_34) (cat_at p39_35)) )
	(when (cat_at p39_35) (oneof (cat_at p38_35) (cat_at p39_34) (cat_at p40_35) (cat_at p39_36)) )
	(when (cat_at p39_36) (oneof (cat_at p38_36) (cat_at p39_35) (cat_at p40_36) (cat_at p39_37)) )
	(when (cat_at p39_37) (oneof (cat_at p38_37) (cat_at p39_36) (cat_at p40_37) (cat_at p39_38)) )
	(when (cat_at p39_38) (oneof (cat_at p38_38) (cat_at p39_37) (cat_at p40_38) (cat_at p39_39)) )
	(when (cat_at p39_39) (oneof (cat_at p38_39) (cat_at p39_38) (cat_at p40_39) (cat_at p39_40)) )
	(when (cat_at p39_40) (oneof (cat_at p38_40) (cat_at p39_39) (cat_at p40_40)) )
	(when (cat_at p40_1) (oneof (cat_at p39_1) (cat_at p40_2)) )
	(when (cat_at p40_2) (oneof (cat_at p39_2) (cat_at p40_1) (cat_at p40_3)) )
	(when (cat_at p40_3) (oneof (cat_at p39_3) (cat_at p40_2) (cat_at p40_4)) )
	(when (cat_at p40_4) (oneof (cat_at p39_4) (cat_at p40_3) (cat_at p40_5)) )
	(when (cat_at p40_5) (oneof (cat_at p39_5) (cat_at p40_4) (cat_at p40_6)) )
	(when (cat_at p40_6) (oneof (cat_at p39_6) (cat_at p40_5) (cat_at p40_7)) )
	(when (cat_at p40_7) (oneof (cat_at p39_7) (cat_at p40_6) (cat_at p40_8)) )
	(when (cat_at p40_8) (oneof (cat_at p39_8) (cat_at p40_7) (cat_at p40_9)) )
	(when (cat_at p40_9) (oneof (cat_at p39_9) (cat_at p40_8) (cat_at p40_10)) )
	(when (cat_at p40_10) (oneof (cat_at p39_10) (cat_at p40_9) (cat_at p40_11)) )
	(when (cat_at p40_11) (oneof (cat_at p39_11) (cat_at p40_10) (cat_at p40_12)) )
	(when (cat_at p40_12) (oneof (cat_at p39_12) (cat_at p40_11) (cat_at p40_13)) )
	(when (cat_at p40_13) (oneof (cat_at p39_13) (cat_at p40_12) (cat_at p40_14)) )
	(when (cat_at p40_14) (oneof (cat_at p39_14) (cat_at p40_13) (cat_at p40_15)) )
	(when (cat_at p40_15) (oneof (cat_at p39_15) (cat_at p40_14) (cat_at p40_16)) )
	(when (cat_at p40_16) (oneof (cat_at p39_16) (cat_at p40_15) (cat_at p40_17)) )
	(when (cat_at p40_17) (oneof (cat_at p39_17) (cat_at p40_16) (cat_at p40_18)) )
	(when (cat_at p40_18) (oneof (cat_at p39_18) (cat_at p40_17) (cat_at p40_19)) )
	(when (cat_at p40_19) (oneof (cat_at p39_19) (cat_at p40_18) (cat_at p40_20)) )
	(when (cat_at p40_20) (oneof (cat_at p39_20) (cat_at p40_19) (cat_at p40_21)) )
	(when (cat_at p40_21) (oneof (cat_at p39_21) (cat_at p40_20) (cat_at p40_22)) )
	(when (cat_at p40_22) (oneof (cat_at p39_22) (cat_at p40_21) (cat_at p40_23)) )
	(when (cat_at p40_23) (oneof (cat_at p39_23) (cat_at p40_22) (cat_at p40_24)) )
	(when (cat_at p40_24) (oneof (cat_at p39_24) (cat_at p40_23) (cat_at p40_25)) )
	(when (cat_at p40_25) (oneof (cat_at p39_25) (cat_at p40_24) (cat_at p40_26)) )
	(when (cat_at p40_26) (oneof (cat_at p39_26) (cat_at p40_25) (cat_at p40_27)) )
	(when (cat_at p40_27) (oneof (cat_at p39_27) (cat_at p40_26) (cat_at p40_28)) )
	(when (cat_at p40_28) (oneof (cat_at p39_28) (cat_at p40_27) (cat_at p40_29)) )
	(when (cat_at p40_29) (oneof (cat_at p39_29) (cat_at p40_28) (cat_at p40_30)) )
	(when (cat_at p40_30) (oneof (cat_at p39_30) (cat_at p40_29) (cat_at p40_31)) )
	(when (cat_at p40_31) (oneof (cat_at p39_31) (cat_at p40_30) (cat_at p40_32)) )
	(when (cat_at p40_32) (oneof (cat_at p39_32) (cat_at p40_31) (cat_at p40_33)) )
	(when (cat_at p40_33) (oneof (cat_at p39_33) (cat_at p40_32) (cat_at p40_34)) )
	(when (cat_at p40_34) (oneof (cat_at p39_34) (cat_at p40_33) (cat_at p40_35)) )
	(when (cat_at p40_35) (oneof (cat_at p39_35) (cat_at p40_34) (cat_at p40_36)) )
	(when (cat_at p40_36) (oneof (cat_at p39_36) (cat_at p40_35) (cat_at p40_37)) )
	(when (cat_at p40_37) (oneof (cat_at p39_37) (cat_at p40_36) (cat_at p40_38)) )
	(when (cat_at p40_38) (oneof (cat_at p39_38) (cat_at p40_37) (cat_at p40_39)) )
	(when (cat_at p40_39) (oneof (cat_at p39_39) (cat_at p40_38) (cat_at p40_40)) )
	(when (cat_at p40_40) (oneof (cat_at p39_40) (cat_at p40_39)) )   )
)
 
   (:action mouse_move
      :parameters (?i ?j - pos )
      :precondition (and (mouse_at ?i) (adj ?i ?j) (mouse_turn)) 
      :effect (and (not (mouse_turn))
      	      (when  (mouse_at ?i)  (and (mouse_at ?j) (not (mouse_at ?i)) ))
))

   (:action pickup 
     :parameters  (?i - pos )
     :precondition (and (cheese_at ?i) (mouse_at ?i) (mouse_turn) )
     :effect  (when (and (mouse_at ?i) (not (cat_at ?i)) ) (and (not (cheese_at ?i)) (have_cheese)))
   )
)

