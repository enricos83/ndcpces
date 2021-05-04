
(define (domain trailfollow)
    (:requirements :typing)
    (:types pos_x pos_y)

    (:constants x_1 x_2 x_3 x_4 x_5 x_6 x_7 x_8 x_9 x_10 x_11 x_12 x_13 x_14 x_15 x_16 x_17 x_18 x_19 x_20 x_21 x_22 x_23 x_24 x_25 x_26 x_27 x_28 x_29 x_30 x_31 x_32 x_33 x_34 x_35 x_36 x_37 x_38 x_39 x_40 x_41 x_42 x_43 x_44 x_45 x_46 x_47 x_48 x_49 x_50 x_51 x_52 x_53 x_54 x_55 x_56 x_57 x_58 x_59 x_60 x_61 x_62 x_63 x_64 x_65 x_66 x_67 x_68 x_69 x_70 x_71 x_72 x_73 x_74 x_75 x_76 x_77 x_78 x_79 x_80 x_81 x_82 x_83 x_84 x_85 x_86 x_87 x_88 x_89 x_90 x_91 x_92 x_93 x_94 x_95 x_96 x_97 x_98 x_99 x_100  - pos_x 
                y_1 y_2 y_3 y_4 y_5 y_6 y_7 y_8 y_9 y_10 y_11 y_12 y_13 y_14 y_15 y_16 y_17 y_18 y_19 y_20 y_21 y_22 y_23 y_24 y_25 y_26 y_27 y_28 y_29 y_30 y_31 y_32 y_33 y_34 y_35 y_36 y_37 y_38 y_39 y_40 y_41 y_42 y_43 y_44 y_45 y_46 y_47 y_48 y_49 y_50 y_51 y_52 y_53 y_54 y_55 y_56 y_57 y_58 y_59 y_60 y_61 y_62 y_63 y_64 y_65 y_66 y_67 y_68 y_69 y_70 y_71 y_72 y_73 y_74 y_75 y_76 y_77 y_78 y_79 y_80 y_81 y_82 y_83 y_84 y_85 y_86 y_87 y_88 y_89 y_90 y_91 y_92 y_93 y_94 y_95 y_96 y_97 y_98 y_99 y_100  - pos_y )

    (:predicates (px ?x - pos_x)
                 (py ?y - pos_y))
                
    (:action fwd
;;     :precondition (py y_50)
     :effect (and  
        (when (and (px x_1) ) 
              (and (px x_2) (not (px x_1)) )) 
        (when (and (px x_2) ) 
              (and (px x_3) (not (px x_2)) )) 
        (when (and (px x_3) ) 
              (and (px x_4) (not (px x_3)) )) 
        (when (and (px x_4) ) 
              (and (px x_5) (not (px x_4)) )) 
        (when (and (px x_5) ) 
              (and (px x_6) (not (px x_5)) )) 
        (when (and (px x_6) ) 
              (and (px x_7) (not (px x_6)) )) 
        (when (and (px x_7) ) 
              (and (px x_8) (not (px x_7)) )) 
        (when (and (px x_8) ) 
              (and (px x_9) (not (px x_8)) )) 
        (when (and (px x_9) ) 
              (and (px x_10) (not (px x_9)) )) 
        (when (and (px x_10) ) 
              (and (px x_11) (not (px x_10)) )) 
        (when (and (px x_11) ) 
              (and (px x_12) (not (px x_11)) )) 
        (when (and (px x_12) ) 
              (and (px x_13) (not (px x_12)) )) 
        (when (and (px x_13) ) 
              (and (px x_14) (not (px x_13)) )) 
        (when (and (px x_14) ) 
              (and (px x_15) (not (px x_14)) )) 
        (when (and (px x_15) ) 
              (and (px x_16) (not (px x_15)) )) 
        (when (and (px x_16) ) 
              (and (px x_17) (not (px x_16)) )) 
        (when (and (px x_17) ) 
              (and (px x_18) (not (px x_17)) )) 
        (when (and (px x_18) ) 
              (and (px x_19) (not (px x_18)) )) 
        (when (and (px x_19) ) 
              (and (px x_20) (not (px x_19)) )) 
        (when (and (px x_20) ) 
              (and (px x_21) (not (px x_20)) )) 
        (when (and (px x_21) ) 
              (and (px x_22) (not (px x_21)) )) 
        (when (and (px x_22) ) 
              (and (px x_23) (not (px x_22)) )) 
        (when (and (px x_23) ) 
              (and (px x_24) (not (px x_23)) )) 
        (when (and (px x_24) ) 
              (and (px x_25) (not (px x_24)) )) 
        (when (and (px x_25) ) 
              (and (px x_26) (not (px x_25)) )) 
        (when (and (px x_26) ) 
              (and (px x_27) (not (px x_26)) )) 
        (when (and (px x_27) ) 
              (and (px x_28) (not (px x_27)) )) 
        (when (and (px x_28) ) 
              (and (px x_29) (not (px x_28)) )) 
        (when (and (px x_29) ) 
              (and (px x_30) (not (px x_29)) )) 
        (when (and (px x_30) ) 
              (and (px x_31) (not (px x_30)) )) 
        (when (and (px x_31) ) 
              (and (px x_32) (not (px x_31)) )) 
        (when (and (px x_32) ) 
              (and (px x_33) (not (px x_32)) )) 
        (when (and (px x_33) ) 
              (and (px x_34) (not (px x_33)) )) 
        (when (and (px x_34) ) 
              (and (px x_35) (not (px x_34)) )) 
        (when (and (px x_35) ) 
              (and (px x_36) (not (px x_35)) )) 
        (when (and (px x_36) ) 
              (and (px x_37) (not (px x_36)) )) 
        (when (and (px x_37) ) 
              (and (px x_38) (not (px x_37)) )) 
        (when (and (px x_38) ) 
              (and (px x_39) (not (px x_38)) )) 
        (when (and (px x_39) ) 
              (and (px x_40) (not (px x_39)) )) 
        (when (and (px x_40) ) 
              (and (px x_41) (not (px x_40)) )) 
        (when (and (px x_41) ) 
              (and (px x_42) (not (px x_41)) )) 
        (when (and (px x_42) ) 
              (and (px x_43) (not (px x_42)) )) 
        (when (and (px x_43) ) 
              (and (px x_44) (not (px x_43)) )) 
        (when (and (px x_44) ) 
              (and (px x_45) (not (px x_44)) )) 
        (when (and (px x_45) ) 
              (and (px x_46) (not (px x_45)) )) 
        (when (and (px x_46) ) 
              (and (px x_47) (not (px x_46)) )) 
        (when (and (px x_47) ) 
              (and (px x_48) (not (px x_47)) )) 
        (when (and (px x_48) ) 
              (and (px x_49) (not (px x_48)) )) 
        (when (and (px x_49) ) 
              (and (px x_50) (not (px x_49)) )) 
        (when (and (px x_50) ) 
              (and (px x_51) (not (px x_50)) )) 
        (when (and (px x_51) ) 
              (and (px x_52) (not (px x_51)) )) 
        (when (and (px x_52) ) 
              (and (px x_53) (not (px x_52)) )) 
        (when (and (px x_53) ) 
              (and (px x_54) (not (px x_53)) )) 
        (when (and (px x_54) ) 
              (and (px x_55) (not (px x_54)) )) 
        (when (and (px x_55) ) 
              (and (px x_56) (not (px x_55)) )) 
        (when (and (px x_56) ) 
              (and (px x_57) (not (px x_56)) )) 
        (when (and (px x_57) ) 
              (and (px x_58) (not (px x_57)) )) 
        (when (and (px x_58) ) 
              (and (px x_59) (not (px x_58)) )) 
        (when (and (px x_59) ) 
              (and (px x_60) (not (px x_59)) )) 
        (when (and (px x_60) ) 
              (and (px x_61) (not (px x_60)) )) 
        (when (and (px x_61) ) 
              (and (px x_62) (not (px x_61)) )) 
        (when (and (px x_62) ) 
              (and (px x_63) (not (px x_62)) )) 
        (when (and (px x_63) ) 
              (and (px x_64) (not (px x_63)) )) 
        (when (and (px x_64) ) 
              (and (px x_65) (not (px x_64)) )) 
        (when (and (px x_65) ) 
              (and (px x_66) (not (px x_65)) )) 
        (when (and (px x_66) ) 
              (and (px x_67) (not (px x_66)) )) 
        (when (and (px x_67) ) 
              (and (px x_68) (not (px x_67)) )) 
        (when (and (px x_68) ) 
              (and (px x_69) (not (px x_68)) )) 
        (when (and (px x_69) ) 
              (and (px x_70) (not (px x_69)) )) 
        (when (and (px x_70) ) 
              (and (px x_71) (not (px x_70)) )) 
        (when (and (px x_71) ) 
              (and (px x_72) (not (px x_71)) )) 
        (when (and (px x_72) ) 
              (and (px x_73) (not (px x_72)) )) 
        (when (and (px x_73) ) 
              (and (px x_74) (not (px x_73)) )) 
        (when (and (px x_74) ) 
              (and (px x_75) (not (px x_74)) )) 
        (when (and (px x_75) ) 
              (and (px x_76) (not (px x_75)) )) 
        (when (and (px x_76) ) 
              (and (px x_77) (not (px x_76)) )) 
        (when (and (px x_77) ) 
              (and (px x_78) (not (px x_77)) )) 
        (when (and (px x_78) ) 
              (and (px x_79) (not (px x_78)) )) 
        (when (and (px x_79) ) 
              (and (px x_80) (not (px x_79)) )) 
        (when (and (px x_80) ) 
              (and (px x_81) (not (px x_80)) )) 
        (when (and (px x_81) ) 
              (and (px x_82) (not (px x_81)) )) 
        (when (and (px x_82) ) 
              (and (px x_83) (not (px x_82)) )) 
        (when (and (px x_83) ) 
              (and (px x_84) (not (px x_83)) )) 
        (when (and (px x_84) ) 
              (and (px x_85) (not (px x_84)) )) 
        (when (and (px x_85) ) 
              (and (px x_86) (not (px x_85)) )) 
        (when (and (px x_86) ) 
              (and (px x_87) (not (px x_86)) )) 
        (when (and (px x_87) ) 
              (and (px x_88) (not (px x_87)) )) 
        (when (and (px x_88) ) 
              (and (px x_89) (not (px x_88)) )) 
        (when (and (px x_89) ) 
              (and (px x_90) (not (px x_89)) )) 
        (when (and (px x_90) ) 
              (and (px x_91) (not (px x_90)) )) 
        (when (and (px x_91) ) 
              (and (px x_92) (not (px x_91)) )) 
        (when (and (px x_92) ) 
              (and (px x_93) (not (px x_92)) )) 
        (when (and (px x_93) ) 
              (and (px x_94) (not (px x_93)) )) 
        (when (and (px x_94) ) 
              (and (px x_95) (not (px x_94)) )) 
        (when (and (px x_95) ) 
              (and (px x_96) (not (px x_95)) )) 
        (when (and (px x_96) ) 
              (and (px x_97) (not (px x_96)) )) 
        (when (and (px x_97) ) 
              (and (px x_98) (not (px x_97)) )) 
        (when (and (px x_98) ) 
              (and (px x_99) (not (px x_98)) )) 
        (when (and (px x_99) ) 
              (and (px x_100) (not (px x_99)) )) 

        (when (and (py y_1) )
              (oneof (py y_1)  (and (py y_2) (not (py y_1)) ))) 
        (when (and (py y_2) )
              (oneof (py y_2)  (and (py y_3) (not (py y_2)) ) (and (py y_1) (not (py y_2)) ))) 
        (when (and (py y_3) )
              (oneof (py y_3)  (and (py y_4) (not (py y_3)) ) (and (py y_2) (not (py y_3)) ))) 
        (when (and (py y_4) )
              (oneof (py y_4)  (and (py y_5) (not (py y_4)) ) (and (py y_3) (not (py y_4)) ))) 
        (when (and (py y_5) )
              (oneof (py y_5)  (and (py y_6) (not (py y_5)) ) (and (py y_4) (not (py y_5)) ))) 
        (when (and (py y_6) )
              (oneof (py y_6)  (and (py y_7) (not (py y_6)) ) (and (py y_5) (not (py y_6)) ))) 
        (when (and (py y_7) )
              (oneof (py y_7)  (and (py y_8) (not (py y_7)) ) (and (py y_6) (not (py y_7)) ))) 
        (when (and (py y_8) )
              (oneof (py y_8)  (and (py y_9) (not (py y_8)) ) (and (py y_7) (not (py y_8)) ))) 
        (when (and (py y_9) )
              (oneof (py y_9)  (and (py y_10) (not (py y_9)) ) (and (py y_8) (not (py y_9)) ))) 
        (when (and (py y_10) )
              (oneof (py y_10)  (and (py y_11) (not (py y_10)) ) (and (py y_9) (not (py y_10)) ))) 
        (when (and (py y_11) )
              (oneof (py y_11)  (and (py y_12) (not (py y_11)) ) (and (py y_10) (not (py y_11)) ))) 
        (when (and (py y_12) )
              (oneof (py y_12)  (and (py y_13) (not (py y_12)) ) (and (py y_11) (not (py y_12)) ))) 
        (when (and (py y_13) )
              (oneof (py y_13)  (and (py y_14) (not (py y_13)) ) (and (py y_12) (not (py y_13)) ))) 
        (when (and (py y_14) )
              (oneof (py y_14)  (and (py y_15) (not (py y_14)) ) (and (py y_13) (not (py y_14)) ))) 
        (when (and (py y_15) )
              (oneof (py y_15)  (and (py y_16) (not (py y_15)) ) (and (py y_14) (not (py y_15)) ))) 
        (when (and (py y_16) )
              (oneof (py y_16)  (and (py y_17) (not (py y_16)) ) (and (py y_15) (not (py y_16)) ))) 
        (when (and (py y_17) )
              (oneof (py y_17)  (and (py y_18) (not (py y_17)) ) (and (py y_16) (not (py y_17)) ))) 
        (when (and (py y_18) )
              (oneof (py y_18)  (and (py y_19) (not (py y_18)) ) (and (py y_17) (not (py y_18)) ))) 
        (when (and (py y_19) )
              (oneof (py y_19)  (and (py y_20) (not (py y_19)) ) (and (py y_18) (not (py y_19)) ))) 
        (when (and (py y_20) )
              (oneof (py y_20)  (and (py y_21) (not (py y_20)) ) (and (py y_19) (not (py y_20)) ))) 
        (when (and (py y_21) )
              (oneof (py y_21)  (and (py y_22) (not (py y_21)) ) (and (py y_20) (not (py y_21)) ))) 
        (when (and (py y_22) )
              (oneof (py y_22)  (and (py y_23) (not (py y_22)) ) (and (py y_21) (not (py y_22)) ))) 
        (when (and (py y_23) )
              (oneof (py y_23)  (and (py y_24) (not (py y_23)) ) (and (py y_22) (not (py y_23)) ))) 
        (when (and (py y_24) )
              (oneof (py y_24)  (and (py y_25) (not (py y_24)) ) (and (py y_23) (not (py y_24)) ))) 
        (when (and (py y_25) )
              (oneof (py y_25)  (and (py y_26) (not (py y_25)) ) (and (py y_24) (not (py y_25)) ))) 
        (when (and (py y_26) )
              (oneof (py y_26)  (and (py y_27) (not (py y_26)) ) (and (py y_25) (not (py y_26)) ))) 
        (when (and (py y_27) )
              (oneof (py y_27)  (and (py y_28) (not (py y_27)) ) (and (py y_26) (not (py y_27)) ))) 
        (when (and (py y_28) )
              (oneof (py y_28)  (and (py y_29) (not (py y_28)) ) (and (py y_27) (not (py y_28)) ))) 
        (when (and (py y_29) )
              (oneof (py y_29)  (and (py y_30) (not (py y_29)) ) (and (py y_28) (not (py y_29)) ))) 
        (when (and (py y_30) )
              (oneof (py y_30)  (and (py y_31) (not (py y_30)) ) (and (py y_29) (not (py y_30)) ))) 
        (when (and (py y_31) )
              (oneof (py y_31)  (and (py y_32) (not (py y_31)) ) (and (py y_30) (not (py y_31)) ))) 
        (when (and (py y_32) )
              (oneof (py y_32)  (and (py y_33) (not (py y_32)) ) (and (py y_31) (not (py y_32)) ))) 
        (when (and (py y_33) )
              (oneof (py y_33)  (and (py y_34) (not (py y_33)) ) (and (py y_32) (not (py y_33)) ))) 
        (when (and (py y_34) )
              (oneof (py y_34)  (and (py y_35) (not (py y_34)) ) (and (py y_33) (not (py y_34)) ))) 
        (when (and (py y_35) )
              (oneof (py y_35)  (and (py y_36) (not (py y_35)) ) (and (py y_34) (not (py y_35)) ))) 
        (when (and (py y_36) )
              (oneof (py y_36)  (and (py y_37) (not (py y_36)) ) (and (py y_35) (not (py y_36)) ))) 
        (when (and (py y_37) )
              (oneof (py y_37)  (and (py y_38) (not (py y_37)) ) (and (py y_36) (not (py y_37)) ))) 
        (when (and (py y_38) )
              (oneof (py y_38)  (and (py y_39) (not (py y_38)) ) (and (py y_37) (not (py y_38)) ))) 
        (when (and (py y_39) )
              (oneof (py y_39)  (and (py y_40) (not (py y_39)) ) (and (py y_38) (not (py y_39)) ))) 
        (when (and (py y_40) )
              (oneof (py y_40)  (and (py y_41) (not (py y_40)) ) (and (py y_39) (not (py y_40)) ))) 
        (when (and (py y_41) )
              (oneof (py y_41)  (and (py y_42) (not (py y_41)) ) (and (py y_40) (not (py y_41)) ))) 
        (when (and (py y_42) )
              (oneof (py y_42)  (and (py y_43) (not (py y_42)) ) (and (py y_41) (not (py y_42)) ))) 
        (when (and (py y_43) )
              (oneof (py y_43)  (and (py y_44) (not (py y_43)) ) (and (py y_42) (not (py y_43)) ))) 
        (when (and (py y_44) )
              (oneof (py y_44)  (and (py y_45) (not (py y_44)) ) (and (py y_43) (not (py y_44)) ))) 
        (when (and (py y_45) )
              (oneof (py y_45)  (and (py y_46) (not (py y_45)) ) (and (py y_44) (not (py y_45)) ))) 
        (when (and (py y_46) )
              (oneof (py y_46)  (and (py y_47) (not (py y_46)) ) (and (py y_45) (not (py y_46)) ))) 
        (when (and (py y_47) )
              (oneof (py y_47)  (and (py y_48) (not (py y_47)) ) (and (py y_46) (not (py y_47)) ))) 
        (when (and (py y_48) )
              (oneof (py y_48)  (and (py y_49) (not (py y_48)) ) (and (py y_47) (not (py y_48)) ))) 
        (when (and (py y_49) )
              (oneof (py y_49)  (and (py y_50) (not (py y_49)) ) (and (py y_48) (not (py y_49)) ))) 
        (when (and (py y_50) )
              (oneof (py y_50)  (and (py y_51) (not (py y_50)) ) (and (py y_49) (not (py y_50)) ))) 
        (when (and (py y_51) )
              (oneof (py y_51)  (and (py y_52) (not (py y_51)) ) (and (py y_50) (not (py y_51)) ))) 
        (when (and (py y_52) )
              (oneof (py y_52)  (and (py y_53) (not (py y_52)) ) (and (py y_51) (not (py y_52)) ))) 
        (when (and (py y_53) )
              (oneof (py y_53)  (and (py y_54) (not (py y_53)) ) (and (py y_52) (not (py y_53)) ))) 
        (when (and (py y_54) )
              (oneof (py y_54)  (and (py y_55) (not (py y_54)) ) (and (py y_53) (not (py y_54)) ))) 
        (when (and (py y_55) )
              (oneof (py y_55)  (and (py y_56) (not (py y_55)) ) (and (py y_54) (not (py y_55)) ))) 
        (when (and (py y_56) )
              (oneof (py y_56)  (and (py y_57) (not (py y_56)) ) (and (py y_55) (not (py y_56)) ))) 
        (when (and (py y_57) )
              (oneof (py y_57)  (and (py y_58) (not (py y_57)) ) (and (py y_56) (not (py y_57)) ))) 
        (when (and (py y_58) )
              (oneof (py y_58)  (and (py y_59) (not (py y_58)) ) (and (py y_57) (not (py y_58)) ))) 
        (when (and (py y_59) )
              (oneof (py y_59)  (and (py y_60) (not (py y_59)) ) (and (py y_58) (not (py y_59)) ))) 
        (when (and (py y_60) )
              (oneof (py y_60)  (and (py y_61) (not (py y_60)) ) (and (py y_59) (not (py y_60)) ))) 
        (when (and (py y_61) )
              (oneof (py y_61)  (and (py y_62) (not (py y_61)) ) (and (py y_60) (not (py y_61)) ))) 
        (when (and (py y_62) )
              (oneof (py y_62)  (and (py y_63) (not (py y_62)) ) (and (py y_61) (not (py y_62)) ))) 
        (when (and (py y_63) )
              (oneof (py y_63)  (and (py y_64) (not (py y_63)) ) (and (py y_62) (not (py y_63)) ))) 
        (when (and (py y_64) )
              (oneof (py y_64)  (and (py y_65) (not (py y_64)) ) (and (py y_63) (not (py y_64)) ))) 
        (when (and (py y_65) )
              (oneof (py y_65)  (and (py y_66) (not (py y_65)) ) (and (py y_64) (not (py y_65)) ))) 
        (when (and (py y_66) )
              (oneof (py y_66)  (and (py y_67) (not (py y_66)) ) (and (py y_65) (not (py y_66)) ))) 
        (when (and (py y_67) )
              (oneof (py y_67)  (and (py y_68) (not (py y_67)) ) (and (py y_66) (not (py y_67)) ))) 
        (when (and (py y_68) )
              (oneof (py y_68)  (and (py y_69) (not (py y_68)) ) (and (py y_67) (not (py y_68)) ))) 
        (when (and (py y_69) )
              (oneof (py y_69)  (and (py y_70) (not (py y_69)) ) (and (py y_68) (not (py y_69)) ))) 
        (when (and (py y_70) )
              (oneof (py y_70)  (and (py y_71) (not (py y_70)) ) (and (py y_69) (not (py y_70)) ))) 
        (when (and (py y_71) )
              (oneof (py y_71)  (and (py y_72) (not (py y_71)) ) (and (py y_70) (not (py y_71)) ))) 
        (when (and (py y_72) )
              (oneof (py y_72)  (and (py y_73) (not (py y_72)) ) (and (py y_71) (not (py y_72)) ))) 
        (when (and (py y_73) )
              (oneof (py y_73)  (and (py y_74) (not (py y_73)) ) (and (py y_72) (not (py y_73)) ))) 
        (when (and (py y_74) )
              (oneof (py y_74)  (and (py y_75) (not (py y_74)) ) (and (py y_73) (not (py y_74)) ))) 
        (when (and (py y_75) )
              (oneof (py y_75)  (and (py y_76) (not (py y_75)) ) (and (py y_74) (not (py y_75)) ))) 
        (when (and (py y_76) )
              (oneof (py y_76)  (and (py y_77) (not (py y_76)) ) (and (py y_75) (not (py y_76)) ))) 
        (when (and (py y_77) )
              (oneof (py y_77)  (and (py y_78) (not (py y_77)) ) (and (py y_76) (not (py y_77)) ))) 
        (when (and (py y_78) )
              (oneof (py y_78)  (and (py y_79) (not (py y_78)) ) (and (py y_77) (not (py y_78)) ))) 
        (when (and (py y_79) )
              (oneof (py y_79)  (and (py y_80) (not (py y_79)) ) (and (py y_78) (not (py y_79)) ))) 
        (when (and (py y_80) )
              (oneof (py y_80)  (and (py y_81) (not (py y_80)) ) (and (py y_79) (not (py y_80)) ))) 
        (when (and (py y_81) )
              (oneof (py y_81)  (and (py y_82) (not (py y_81)) ) (and (py y_80) (not (py y_81)) ))) 
        (when (and (py y_82) )
              (oneof (py y_82)  (and (py y_83) (not (py y_82)) ) (and (py y_81) (not (py y_82)) ))) 
        (when (and (py y_83) )
              (oneof (py y_83)  (and (py y_84) (not (py y_83)) ) (and (py y_82) (not (py y_83)) ))) 
        (when (and (py y_84) )
              (oneof (py y_84)  (and (py y_85) (not (py y_84)) ) (and (py y_83) (not (py y_84)) ))) 
        (when (and (py y_85) )
              (oneof (py y_85)  (and (py y_86) (not (py y_85)) ) (and (py y_84) (not (py y_85)) ))) 
        (when (and (py y_86) )
              (oneof (py y_86)  (and (py y_87) (not (py y_86)) ) (and (py y_85) (not (py y_86)) ))) 
        (when (and (py y_87) )
              (oneof (py y_87)  (and (py y_88) (not (py y_87)) ) (and (py y_86) (not (py y_87)) ))) 
        (when (and (py y_88) )
              (oneof (py y_88)  (and (py y_89) (not (py y_88)) ) (and (py y_87) (not (py y_88)) ))) 
        (when (and (py y_89) )
              (oneof (py y_89)  (and (py y_90) (not (py y_89)) ) (and (py y_88) (not (py y_89)) ))) 
        (when (and (py y_90) )
              (oneof (py y_90)  (and (py y_91) (not (py y_90)) ) (and (py y_89) (not (py y_90)) ))) 
        (when (and (py y_91) )
              (oneof (py y_91)  (and (py y_92) (not (py y_91)) ) (and (py y_90) (not (py y_91)) ))) 
        (when (and (py y_92) )
              (oneof (py y_92)  (and (py y_93) (not (py y_92)) ) (and (py y_91) (not (py y_92)) ))) 
        (when (and (py y_93) )
              (oneof (py y_93)  (and (py y_94) (not (py y_93)) ) (and (py y_92) (not (py y_93)) ))) 
        (when (and (py y_94) )
              (oneof (py y_94)  (and (py y_95) (not (py y_94)) ) (and (py y_93) (not (py y_94)) ))) 
        (when (and (py y_95) )
              (oneof (py y_95)  (and (py y_96) (not (py y_95)) ) (and (py y_94) (not (py y_95)) ))) 
        (when (and (py y_96) )
              (oneof (py y_96)  (and (py y_97) (not (py y_96)) ) (and (py y_95) (not (py y_96)) ))) 
        (when (and (py y_97) )
              (oneof (py y_97)  (and (py y_98) (not (py y_97)) ) (and (py y_96) (not (py y_97)) ))) 
        (when (and (py y_98) )
              (oneof (py y_98)  (and (py y_99) (not (py y_98)) ) (and (py y_97) (not (py y_98)) ))) 
        (when (and (py y_99) )
              (oneof (py y_99)  (and (py y_100) (not (py y_99)) ) (and (py y_98) (not (py y_99)) ))) 
        (when (and (py y_100) )
              (oneof (py y_100)  (and (py y_99) (not (py y_100)) ))) 
        ))
    

    (:action to_trail
     :effect (and  
        (when (and (py y_1) ) 
              (and (not (py y_1))  (py y_2) )) 
        (when (and (py y_2) ) 
              (and (not (py y_2))  (py y_3) )) 
        (when (and (py y_3) ) 
              (and (not (py y_3))  (py y_4) )) 
        (when (and (py y_4) ) 
              (and (not (py y_4))  (py y_5) )) 
        (when (and (py y_5) ) 
              (and (not (py y_5))  (py y_6) )) 
        (when (and (py y_6) ) 
              (and (not (py y_6))  (py y_7) )) 
        (when (and (py y_7) ) 
              (and (not (py y_7))  (py y_8) )) 
        (when (and (py y_8) ) 
              (and (not (py y_8))  (py y_9) )) 
        (when (and (py y_9) ) 
              (and (not (py y_9))  (py y_10) )) 
        (when (and (py y_10) ) 
              (and (not (py y_10))  (py y_11) )) 
        (when (and (py y_11) ) 
              (and (not (py y_11))  (py y_12) )) 
        (when (and (py y_12) ) 
              (and (not (py y_12))  (py y_13) )) 
        (when (and (py y_13) ) 
              (and (not (py y_13))  (py y_14) )) 
        (when (and (py y_14) ) 
              (and (not (py y_14))  (py y_15) )) 
        (when (and (py y_15) ) 
              (and (not (py y_15))  (py y_16) )) 
        (when (and (py y_16) ) 
              (and (not (py y_16))  (py y_17) )) 
        (when (and (py y_17) ) 
              (and (not (py y_17))  (py y_18) )) 
        (when (and (py y_18) ) 
              (and (not (py y_18))  (py y_19) )) 
        (when (and (py y_19) ) 
              (and (not (py y_19))  (py y_20) )) 
        (when (and (py y_20) ) 
              (and (not (py y_20))  (py y_21) )) 
        (when (and (py y_21) ) 
              (and (not (py y_21))  (py y_22) )) 
        (when (and (py y_22) ) 
              (and (not (py y_22))  (py y_23) )) 
        (when (and (py y_23) ) 
              (and (not (py y_23))  (py y_24) )) 
        (when (and (py y_24) ) 
              (and (not (py y_24))  (py y_25) )) 
        (when (and (py y_25) ) 
              (and (not (py y_25))  (py y_26) )) 
        (when (and (py y_26) ) 
              (and (not (py y_26))  (py y_27) )) 
        (when (and (py y_27) ) 
              (and (not (py y_27))  (py y_28) )) 
        (when (and (py y_28) ) 
              (and (not (py y_28))  (py y_29) )) 
        (when (and (py y_29) ) 
              (and (not (py y_29))  (py y_30) )) 
        (when (and (py y_30) ) 
              (and (not (py y_30))  (py y_31) )) 
        (when (and (py y_31) ) 
              (and (not (py y_31))  (py y_32) )) 
        (when (and (py y_32) ) 
              (and (not (py y_32))  (py y_33) )) 
        (when (and (py y_33) ) 
              (and (not (py y_33))  (py y_34) )) 
        (when (and (py y_34) ) 
              (and (not (py y_34))  (py y_35) )) 
        (when (and (py y_35) ) 
              (and (not (py y_35))  (py y_36) )) 
        (when (and (py y_36) ) 
              (and (not (py y_36))  (py y_37) )) 
        (when (and (py y_37) ) 
              (and (not (py y_37))  (py y_38) )) 
        (when (and (py y_38) ) 
              (and (not (py y_38))  (py y_39) )) 
        (when (and (py y_39) ) 
              (and (not (py y_39))  (py y_40) )) 
        (when (and (py y_40) ) 
              (and (not (py y_40))  (py y_41) )) 
        (when (and (py y_41) ) 
              (and (not (py y_41))  (py y_42) )) 
        (when (and (py y_42) ) 
              (and (not (py y_42))  (py y_43) )) 
        (when (and (py y_43) ) 
              (and (not (py y_43))  (py y_44) )) 
        (when (and (py y_44) ) 
              (and (not (py y_44))  (py y_45) )) 
        (when (and (py y_45) ) 
              (and (not (py y_45))  (py y_46) )) 
        (when (and (py y_46) ) 
              (and (not (py y_46))  (py y_47) )) 
        (when (and (py y_47) ) 
              (and (not (py y_47))  (py y_48) )) 
        (when (and (py y_48) ) 
              (and (not (py y_48))  (py y_49) )) 
        (when (and (py y_49) ) 
              (and (not (py y_49))  (py y_50) )) 
        (when (and (py y_51) ) 
              (and (not (py y_51))  (py y_50) )) 
        (when (and (py y_52) ) 
              (and (not (py y_52))  (py y_51) )) 
        (when (and (py y_53) ) 
              (and (not (py y_53))  (py y_52) )) 
        (when (and (py y_54) ) 
              (and (not (py y_54))  (py y_53) )) 
        (when (and (py y_55) ) 
              (and (not (py y_55))  (py y_54) )) 
        (when (and (py y_56) ) 
              (and (not (py y_56))  (py y_55) )) 
        (when (and (py y_57) ) 
              (and (not (py y_57))  (py y_56) )) 
        (when (and (py y_58) ) 
              (and (not (py y_58))  (py y_57) )) 
        (when (and (py y_59) ) 
              (and (not (py y_59))  (py y_58) )) 
        (when (and (py y_60) ) 
              (and (not (py y_60))  (py y_59) )) 
        (when (and (py y_61) ) 
              (and (not (py y_61))  (py y_60) )) 
        (when (and (py y_62) ) 
              (and (not (py y_62))  (py y_61) )) 
        (when (and (py y_63) ) 
              (and (not (py y_63))  (py y_62) )) 
        (when (and (py y_64) ) 
              (and (not (py y_64))  (py y_63) )) 
        (when (and (py y_65) ) 
              (and (not (py y_65))  (py y_64) )) 
        (when (and (py y_66) ) 
              (and (not (py y_66))  (py y_65) )) 
        (when (and (py y_67) ) 
              (and (not (py y_67))  (py y_66) )) 
        (when (and (py y_68) ) 
              (and (not (py y_68))  (py y_67) )) 
        (when (and (py y_69) ) 
              (and (not (py y_69))  (py y_68) )) 
        (when (and (py y_70) ) 
              (and (not (py y_70))  (py y_69) )) 
        (when (and (py y_71) ) 
              (and (not (py y_71))  (py y_70) )) 
        (when (and (py y_72) ) 
              (and (not (py y_72))  (py y_71) )) 
        (when (and (py y_73) ) 
              (and (not (py y_73))  (py y_72) )) 
        (when (and (py y_74) ) 
              (and (not (py y_74))  (py y_73) )) 
        (when (and (py y_75) ) 
              (and (not (py y_75))  (py y_74) )) 
        (when (and (py y_76) ) 
              (and (not (py y_76))  (py y_75) )) 
        (when (and (py y_77) ) 
              (and (not (py y_77))  (py y_76) )) 
        (when (and (py y_78) ) 
              (and (not (py y_78))  (py y_77) )) 
        (when (and (py y_79) ) 
              (and (not (py y_79))  (py y_78) )) 
        (when (and (py y_80) ) 
              (and (not (py y_80))  (py y_79) )) 
        (when (and (py y_81) ) 
              (and (not (py y_81))  (py y_80) )) 
        (when (and (py y_82) ) 
              (and (not (py y_82))  (py y_81) )) 
        (when (and (py y_83) ) 
              (and (not (py y_83))  (py y_82) )) 
        (when (and (py y_84) ) 
              (and (not (py y_84))  (py y_83) )) 
        (when (and (py y_85) ) 
              (and (not (py y_85))  (py y_84) )) 
        (when (and (py y_86) ) 
              (and (not (py y_86))  (py y_85) )) 
        (when (and (py y_87) ) 
              (and (not (py y_87))  (py y_86) )) 
        (when (and (py y_88) ) 
              (and (not (py y_88))  (py y_87) )) 
        (when (and (py y_89) ) 
              (and (not (py y_89))  (py y_88) )) 
        (when (and (py y_90) ) 
              (and (not (py y_90))  (py y_89) )) 
        (when (and (py y_91) ) 
              (and (not (py y_91))  (py y_90) )) 
        (when (and (py y_92) ) 
              (and (not (py y_92))  (py y_91) )) 
        (when (and (py y_93) ) 
              (and (not (py y_93))  (py y_92) )) 
        (when (and (py y_94) ) 
              (and (not (py y_94))  (py y_93) )) 
        (when (and (py y_95) ) 
              (and (not (py y_95))  (py y_94) )) 
        (when (and (py y_96) ) 
              (and (not (py y_96))  (py y_95) )) 
        (when (and (py y_97) ) 
              (and (not (py y_97))  (py y_96) )) 
        (when (and (py y_98) ) 
              (and (not (py y_98))  (py y_97) )) 
        (when (and (py y_99) ) 
              (and (not (py y_99))  (py y_98) )) 
        (when (and (py y_100) ) 
              (and (not (py y_100))  (py y_99) )) 
        ))
    

)
