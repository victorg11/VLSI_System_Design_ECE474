/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : L-2016.03-SP2
// Date      : Thu May  7 10:36:32 2020
/////////////////////////////////////////////////////////////


module gcd_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [31:0] A;
  input [31:0] B;
  output [31:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33;
  wire   [32:0] carry;

  XOR3X1 U2_31 ( .IN1(A[31]), .IN2(n3), .IN3(carry[31]), .Q(DIFF[31]) );
  FADDX1 U2_30 ( .A(A[30]), .B(n27), .CI(carry[30]), .CO(carry[31]), .S(
        DIFF[30]) );
  FADDX1 U2_29 ( .A(A[29]), .B(n25), .CI(carry[29]), .CO(carry[30]), .S(
        DIFF[29]) );
  FADDX1 U2_28 ( .A(A[28]), .B(n24), .CI(carry[28]), .CO(carry[29]), .S(
        DIFF[28]) );
  FADDX1 U2_27 ( .A(A[27]), .B(n23), .CI(carry[27]), .CO(carry[28]), .S(
        DIFF[27]) );
  FADDX1 U2_26 ( .A(A[26]), .B(n22), .CI(carry[26]), .CO(carry[27]), .S(
        DIFF[26]) );
  FADDX1 U2_25 ( .A(A[25]), .B(n21), .CI(carry[25]), .CO(carry[26]), .S(
        DIFF[25]) );
  FADDX1 U2_24 ( .A(A[24]), .B(n20), .CI(carry[24]), .CO(carry[25]), .S(
        DIFF[24]) );
  FADDX1 U2_23 ( .A(A[23]), .B(n19), .CI(carry[23]), .CO(carry[24]), .S(
        DIFF[23]) );
  FADDX1 U2_22 ( .A(A[22]), .B(n18), .CI(carry[22]), .CO(carry[23]), .S(
        DIFF[22]) );
  FADDX1 U2_21 ( .A(A[21]), .B(n17), .CI(carry[21]), .CO(carry[22]), .S(
        DIFF[21]) );
  FADDX1 U2_20 ( .A(A[20]), .B(n16), .CI(carry[20]), .CO(carry[21]), .S(
        DIFF[20]) );
  FADDX1 U2_19 ( .A(A[19]), .B(n14), .CI(carry[19]), .CO(carry[20]), .S(
        DIFF[19]) );
  FADDX1 U2_18 ( .A(A[18]), .B(n13), .CI(carry[18]), .CO(carry[19]), .S(
        DIFF[18]) );
  FADDX1 U2_17 ( .A(A[17]), .B(n12), .CI(carry[17]), .CO(carry[18]), .S(
        DIFF[17]) );
  FADDX1 U2_16 ( .A(A[16]), .B(n11), .CI(carry[16]), .CO(carry[17]), .S(
        DIFF[16]) );
  FADDX1 U2_15 ( .A(A[15]), .B(n10), .CI(carry[15]), .CO(carry[16]), .S(
        DIFF[15]) );
  FADDX1 U2_14 ( .A(A[14]), .B(n9), .CI(carry[14]), .CO(carry[15]), .S(
        DIFF[14]) );
  FADDX1 U2_13 ( .A(A[13]), .B(n8), .CI(carry[13]), .CO(carry[14]), .S(
        DIFF[13]) );
  FADDX1 U2_12 ( .A(A[12]), .B(n7), .CI(carry[12]), .CO(carry[13]), .S(
        DIFF[12]) );
  FADDX1 U2_11 ( .A(A[11]), .B(n6), .CI(carry[11]), .CO(carry[12]), .S(
        DIFF[11]) );
  FADDX1 U2_10 ( .A(A[10]), .B(n5), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  FADDX1 U2_8 ( .A(A[8]), .B(n32), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8])
         );
  FADDX1 U2_7 ( .A(A[7]), .B(n31), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  FADDX1 U2_6 ( .A(A[6]), .B(n30), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  FADDX1 U2_5 ( .A(A[5]), .B(n29), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  FADDX1 U2_4 ( .A(A[4]), .B(n28), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  FADDX1 U2_3 ( .A(A[3]), .B(n26), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  FADDX1 U2_2 ( .A(A[2]), .B(n15), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  FADDX1 U2_1 ( .A(A[1]), .B(n4), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1]) );
  FADDX1 U2_9 ( .A(A[9]), .B(n33), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  XOR2X1 U1 ( .IN1(n1), .IN2(n2), .Q(DIFF[0]) );
  INVX0 U2 ( .IN(B[0]), .QN(n2) );
  INVX0 U3 ( .IN(A[0]), .QN(n1) );
  INVX0 U4 ( .IN(B[9]), .QN(n33) );
  NAND2X0 U5 ( .IN1(B[0]), .IN2(n1), .QN(carry[1]) );
  INVX0 U6 ( .IN(B[1]), .QN(n4) );
  INVX0 U7 ( .IN(B[2]), .QN(n15) );
  INVX0 U8 ( .IN(B[3]), .QN(n26) );
  INVX0 U9 ( .IN(B[4]), .QN(n28) );
  INVX0 U10 ( .IN(B[5]), .QN(n29) );
  INVX0 U11 ( .IN(B[6]), .QN(n30) );
  INVX0 U12 ( .IN(B[7]), .QN(n31) );
  INVX0 U13 ( .IN(B[8]), .QN(n32) );
  INVX0 U14 ( .IN(B[10]), .QN(n5) );
  INVX0 U15 ( .IN(B[11]), .QN(n6) );
  INVX0 U16 ( .IN(B[12]), .QN(n7) );
  INVX0 U17 ( .IN(B[13]), .QN(n8) );
  INVX0 U18 ( .IN(B[14]), .QN(n9) );
  INVX0 U19 ( .IN(B[15]), .QN(n10) );
  INVX0 U20 ( .IN(B[16]), .QN(n11) );
  INVX0 U21 ( .IN(B[17]), .QN(n12) );
  INVX0 U22 ( .IN(B[18]), .QN(n13) );
  INVX0 U23 ( .IN(B[19]), .QN(n14) );
  INVX0 U24 ( .IN(B[20]), .QN(n16) );
  INVX0 U25 ( .IN(B[21]), .QN(n17) );
  INVX0 U26 ( .IN(B[22]), .QN(n18) );
  INVX0 U27 ( .IN(B[23]), .QN(n19) );
  INVX0 U28 ( .IN(B[24]), .QN(n20) );
  INVX0 U29 ( .IN(B[25]), .QN(n21) );
  INVX0 U30 ( .IN(B[26]), .QN(n22) );
  INVX0 U31 ( .IN(B[27]), .QN(n23) );
  INVX0 U32 ( .IN(B[28]), .QN(n24) );
  INVX0 U33 ( .IN(B[29]), .QN(n25) );
  INVX0 U34 ( .IN(B[30]), .QN(n27) );
  INVX0 U35 ( .IN(B[31]), .QN(n3) );
endmodule


module gcd_DW01_cmp6_0 ( A, B, TC, LT, GT, EQ, LE, GE, NE );
  input [31:0] A;
  input [31:0] B;
  input TC;
  output LT, GT, EQ, LE, GE, NE;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172;

  INVX0 U1 ( .IN(n172), .QN(n1) );
  INVX0 U2 ( .IN(B[30]), .QN(n20) );
  INVX0 U3 ( .IN(A[30]), .QN(n4) );
  INVX0 U4 ( .IN(B[1]), .QN(n35) );
  INVX0 U5 ( .IN(A[1]), .QN(n19) );
  INVX0 U6 ( .IN(B[9]), .QN(n31) );
  INVX0 U7 ( .IN(B[3]), .QN(n34) );
  INVX0 U8 ( .IN(B[5]), .QN(n33) );
  INVX0 U9 ( .IN(B[7]), .QN(n32) );
  INVX0 U10 ( .IN(B[11]), .QN(n30) );
  INVX0 U11 ( .IN(B[13]), .QN(n29) );
  INVX0 U12 ( .IN(B[15]), .QN(n28) );
  INVX0 U13 ( .IN(B[17]), .QN(n27) );
  INVX0 U14 ( .IN(B[19]), .QN(n26) );
  INVX0 U15 ( .IN(B[21]), .QN(n25) );
  INVX0 U16 ( .IN(B[23]), .QN(n24) );
  INVX0 U17 ( .IN(B[25]), .QN(n23) );
  INVX0 U18 ( .IN(B[27]), .QN(n22) );
  INVX0 U19 ( .IN(B[29]), .QN(n21) );
  INVX0 U20 ( .IN(B[0]), .QN(n2) );
  INVX0 U21 ( .IN(A[2]), .QN(n18) );
  INVX0 U22 ( .IN(A[4]), .QN(n17) );
  INVX0 U23 ( .IN(A[6]), .QN(n16) );
  INVX0 U24 ( .IN(A[8]), .QN(n15) );
  INVX0 U25 ( .IN(A[10]), .QN(n14) );
  INVX0 U26 ( .IN(A[12]), .QN(n13) );
  INVX0 U27 ( .IN(A[14]), .QN(n12) );
  INVX0 U28 ( .IN(A[16]), .QN(n11) );
  INVX0 U29 ( .IN(A[18]), .QN(n10) );
  INVX0 U30 ( .IN(A[20]), .QN(n9) );
  INVX0 U31 ( .IN(A[22]), .QN(n8) );
  INVX0 U32 ( .IN(A[24]), .QN(n7) );
  INVX0 U33 ( .IN(A[26]), .QN(n6) );
  INVX0 U34 ( .IN(A[28]), .QN(n5) );
  INVX0 U35 ( .IN(A[31]), .QN(n3) );
  NOR2X0 U36 ( .IN1(LT), .IN2(GT), .QN(EQ) );
  AO21X1 U37 ( .IN1(n36), .IN2(n37), .IN3(n38), .Q(GT) );
  OAI22X1 U38 ( .IN1(B[30]), .IN2(n4), .IN3(n39), .IN4(n40), .QN(n37) );
  NAND2X0 U39 ( .IN1(n41), .IN2(n42), .QN(n40) );
  NAND3X0 U40 ( .IN1(n43), .IN2(n44), .IN3(n45), .QN(n41) );
  NAND3X0 U41 ( .IN1(n46), .IN2(n47), .IN3(n48), .QN(n45) );
  NAND3X0 U42 ( .IN1(n49), .IN2(n50), .IN3(n51), .QN(n46) );
  NAND3X0 U43 ( .IN1(n52), .IN2(n53), .IN3(n54), .QN(n51) );
  NAND3X0 U44 ( .IN1(n55), .IN2(n56), .IN3(n57), .QN(n52) );
  NAND3X0 U45 ( .IN1(n58), .IN2(n59), .IN3(n60), .QN(n57) );
  NAND3X0 U46 ( .IN1(n61), .IN2(n62), .IN3(n63), .QN(n58) );
  NAND3X0 U47 ( .IN1(n64), .IN2(n65), .IN3(n66), .QN(n63) );
  NAND3X0 U48 ( .IN1(n67), .IN2(n68), .IN3(n69), .QN(n64) );
  NAND3X0 U49 ( .IN1(n70), .IN2(n71), .IN3(n72), .QN(n69) );
  NAND3X0 U50 ( .IN1(n73), .IN2(n74), .IN3(n75), .QN(n70) );
  NAND3X0 U51 ( .IN1(n76), .IN2(n77), .IN3(n78), .QN(n75) );
  NAND3X0 U52 ( .IN1(n79), .IN2(n80), .IN3(n81), .QN(n76) );
  NAND3X0 U53 ( .IN1(n82), .IN2(n83), .IN3(n84), .QN(n81) );
  NAND3X0 U54 ( .IN1(n85), .IN2(n86), .IN3(n87), .QN(n82) );
  NAND3X0 U55 ( .IN1(n88), .IN2(n89), .IN3(n90), .QN(n87) );
  NAND3X0 U56 ( .IN1(n91), .IN2(n92), .IN3(n93), .QN(n88) );
  NAND3X0 U57 ( .IN1(n94), .IN2(n95), .IN3(n96), .QN(n93) );
  NAND3X0 U58 ( .IN1(n97), .IN2(n98), .IN3(n99), .QN(n94) );
  NAND3X0 U59 ( .IN1(n100), .IN2(n101), .IN3(n102), .QN(n99) );
  NAND3X0 U60 ( .IN1(n103), .IN2(n104), .IN3(n105), .QN(n100) );
  NAND3X0 U61 ( .IN1(n106), .IN2(n107), .IN3(n108), .QN(n105) );
  NAND3X0 U62 ( .IN1(n109), .IN2(n110), .IN3(n111), .QN(n106) );
  NAND3X0 U63 ( .IN1(n112), .IN2(n113), .IN3(n114), .QN(n111) );
  NAND3X0 U64 ( .IN1(n115), .IN2(n116), .IN3(n117), .QN(n112) );
  NAND3X0 U65 ( .IN1(n118), .IN2(n119), .IN3(n120), .QN(n117) );
  NAND3X0 U66 ( .IN1(n121), .IN2(n122), .IN3(n123), .QN(n118) );
  AO221X1 U67 ( .IN1(B[1]), .IN2(n124), .IN3(n125), .IN4(n19), .IN5(n126), .Q(
        n123) );
  OR2X1 U68 ( .IN1(n125), .IN2(n19), .Q(n124) );
  NAND2X0 U69 ( .IN1(A[0]), .IN2(n2), .QN(n125) );
  OAI21X1 U70 ( .IN1(n38), .IN2(n127), .IN3(n36), .QN(LT) );
  NAND2X0 U71 ( .IN1(B[31]), .IN2(n3), .QN(n36) );
  OA22X1 U72 ( .IN1(A[30]), .IN2(n20), .IN3(n39), .IN4(n128), .Q(n127) );
  NAND2X0 U73 ( .IN1(n129), .IN2(n43), .QN(n128) );
  NAND2X0 U74 ( .IN1(A[29]), .IN2(n21), .QN(n43) );
  NAND3X0 U75 ( .IN1(n130), .IN2(n131), .IN3(n42), .QN(n129) );
  OR2X1 U76 ( .IN1(n21), .IN2(A[29]), .Q(n42) );
  NAND3X0 U77 ( .IN1(n132), .IN2(n49), .IN3(n48), .QN(n130) );
  AND2X1 U78 ( .IN1(n44), .IN2(n131), .Q(n48) );
  NAND2X0 U79 ( .IN1(B[28]), .IN2(n5), .QN(n131) );
  OR2X1 U80 ( .IN1(n5), .IN2(B[28]), .Q(n44) );
  NAND2X0 U81 ( .IN1(A[27]), .IN2(n22), .QN(n49) );
  NAND3X0 U82 ( .IN1(n133), .IN2(n134), .IN3(n47), .QN(n132) );
  OR2X1 U83 ( .IN1(n22), .IN2(A[27]), .Q(n47) );
  NAND3X0 U84 ( .IN1(n135), .IN2(n55), .IN3(n54), .QN(n133) );
  AND2X1 U85 ( .IN1(n50), .IN2(n134), .Q(n54) );
  NAND2X0 U86 ( .IN1(B[26]), .IN2(n6), .QN(n134) );
  OR2X1 U87 ( .IN1(n6), .IN2(B[26]), .Q(n50) );
  NAND2X0 U88 ( .IN1(A[25]), .IN2(n23), .QN(n55) );
  NAND3X0 U89 ( .IN1(n136), .IN2(n137), .IN3(n53), .QN(n135) );
  OR2X1 U90 ( .IN1(n23), .IN2(A[25]), .Q(n53) );
  NAND3X0 U91 ( .IN1(n138), .IN2(n61), .IN3(n60), .QN(n136) );
  AND2X1 U92 ( .IN1(n56), .IN2(n137), .Q(n60) );
  NAND2X0 U93 ( .IN1(B[24]), .IN2(n7), .QN(n137) );
  OR2X1 U94 ( .IN1(n7), .IN2(B[24]), .Q(n56) );
  NAND2X0 U95 ( .IN1(A[23]), .IN2(n24), .QN(n61) );
  NAND3X0 U96 ( .IN1(n139), .IN2(n140), .IN3(n59), .QN(n138) );
  OR2X1 U97 ( .IN1(n24), .IN2(A[23]), .Q(n59) );
  NAND3X0 U98 ( .IN1(n141), .IN2(n67), .IN3(n66), .QN(n139) );
  AND2X1 U99 ( .IN1(n62), .IN2(n140), .Q(n66) );
  NAND2X0 U100 ( .IN1(B[22]), .IN2(n8), .QN(n140) );
  OR2X1 U101 ( .IN1(n8), .IN2(B[22]), .Q(n62) );
  NAND2X0 U102 ( .IN1(A[21]), .IN2(n25), .QN(n67) );
  NAND3X0 U103 ( .IN1(n142), .IN2(n143), .IN3(n65), .QN(n141) );
  OR2X1 U104 ( .IN1(n25), .IN2(A[21]), .Q(n65) );
  NAND3X0 U105 ( .IN1(n144), .IN2(n73), .IN3(n72), .QN(n142) );
  AND2X1 U106 ( .IN1(n68), .IN2(n143), .Q(n72) );
  NAND2X0 U107 ( .IN1(B[20]), .IN2(n9), .QN(n143) );
  OR2X1 U108 ( .IN1(n9), .IN2(B[20]), .Q(n68) );
  NAND2X0 U109 ( .IN1(A[19]), .IN2(n26), .QN(n73) );
  NAND3X0 U110 ( .IN1(n145), .IN2(n146), .IN3(n71), .QN(n144) );
  OR2X1 U111 ( .IN1(n26), .IN2(A[19]), .Q(n71) );
  NAND3X0 U112 ( .IN1(n147), .IN2(n79), .IN3(n78), .QN(n145) );
  AND2X1 U113 ( .IN1(n74), .IN2(n146), .Q(n78) );
  NAND2X0 U114 ( .IN1(B[18]), .IN2(n10), .QN(n146) );
  OR2X1 U115 ( .IN1(n10), .IN2(B[18]), .Q(n74) );
  NAND2X0 U116 ( .IN1(A[17]), .IN2(n27), .QN(n79) );
  NAND3X0 U117 ( .IN1(n148), .IN2(n149), .IN3(n77), .QN(n147) );
  OR2X1 U118 ( .IN1(n27), .IN2(A[17]), .Q(n77) );
  NAND3X0 U119 ( .IN1(n150), .IN2(n85), .IN3(n84), .QN(n148) );
  AND2X1 U120 ( .IN1(n80), .IN2(n149), .Q(n84) );
  NAND2X0 U121 ( .IN1(B[16]), .IN2(n11), .QN(n149) );
  OR2X1 U122 ( .IN1(n11), .IN2(B[16]), .Q(n80) );
  NAND2X0 U123 ( .IN1(A[15]), .IN2(n28), .QN(n85) );
  NAND3X0 U124 ( .IN1(n151), .IN2(n152), .IN3(n83), .QN(n150) );
  OR2X1 U125 ( .IN1(n28), .IN2(A[15]), .Q(n83) );
  NAND3X0 U126 ( .IN1(n153), .IN2(n91), .IN3(n90), .QN(n151) );
  AND2X1 U127 ( .IN1(n86), .IN2(n152), .Q(n90) );
  NAND2X0 U128 ( .IN1(B[14]), .IN2(n12), .QN(n152) );
  OR2X1 U129 ( .IN1(n12), .IN2(B[14]), .Q(n86) );
  NAND2X0 U130 ( .IN1(A[13]), .IN2(n29), .QN(n91) );
  NAND3X0 U131 ( .IN1(n154), .IN2(n155), .IN3(n89), .QN(n153) );
  OR2X1 U132 ( .IN1(n29), .IN2(A[13]), .Q(n89) );
  NAND3X0 U133 ( .IN1(n156), .IN2(n97), .IN3(n96), .QN(n154) );
  AND2X1 U134 ( .IN1(n92), .IN2(n155), .Q(n96) );
  NAND2X0 U135 ( .IN1(B[12]), .IN2(n13), .QN(n155) );
  OR2X1 U136 ( .IN1(n13), .IN2(B[12]), .Q(n92) );
  NAND2X0 U137 ( .IN1(A[11]), .IN2(n30), .QN(n97) );
  NAND3X0 U138 ( .IN1(n157), .IN2(n158), .IN3(n95), .QN(n156) );
  OR2X1 U139 ( .IN1(n30), .IN2(A[11]), .Q(n95) );
  NAND3X0 U140 ( .IN1(n159), .IN2(n103), .IN3(n102), .QN(n157) );
  AND2X1 U141 ( .IN1(n98), .IN2(n158), .Q(n102) );
  NAND2X0 U142 ( .IN1(B[10]), .IN2(n14), .QN(n158) );
  OR2X1 U143 ( .IN1(n14), .IN2(B[10]), .Q(n98) );
  NAND2X0 U144 ( .IN1(A[9]), .IN2(n31), .QN(n103) );
  NAND3X0 U145 ( .IN1(n160), .IN2(n161), .IN3(n101), .QN(n159) );
  OR2X1 U146 ( .IN1(n31), .IN2(A[9]), .Q(n101) );
  NAND3X0 U147 ( .IN1(n162), .IN2(n109), .IN3(n108), .QN(n160) );
  AND2X1 U148 ( .IN1(n104), .IN2(n161), .Q(n108) );
  NAND2X0 U149 ( .IN1(B[8]), .IN2(n15), .QN(n161) );
  OR2X1 U150 ( .IN1(n15), .IN2(B[8]), .Q(n104) );
  NAND2X0 U151 ( .IN1(A[7]), .IN2(n32), .QN(n109) );
  NAND3X0 U152 ( .IN1(n163), .IN2(n164), .IN3(n107), .QN(n162) );
  OR2X1 U153 ( .IN1(n32), .IN2(A[7]), .Q(n107) );
  NAND3X0 U154 ( .IN1(n165), .IN2(n115), .IN3(n114), .QN(n163) );
  AND2X1 U155 ( .IN1(n110), .IN2(n164), .Q(n114) );
  NAND2X0 U156 ( .IN1(B[6]), .IN2(n16), .QN(n164) );
  OR2X1 U157 ( .IN1(n16), .IN2(B[6]), .Q(n110) );
  NAND2X0 U158 ( .IN1(A[5]), .IN2(n33), .QN(n115) );
  NAND3X0 U159 ( .IN1(n166), .IN2(n167), .IN3(n113), .QN(n165) );
  OR2X1 U160 ( .IN1(n33), .IN2(A[5]), .Q(n113) );
  NAND3X0 U161 ( .IN1(n168), .IN2(n121), .IN3(n120), .QN(n166) );
  AND2X1 U162 ( .IN1(n116), .IN2(n167), .Q(n120) );
  NAND2X0 U163 ( .IN1(B[4]), .IN2(n17), .QN(n167) );
  OR2X1 U164 ( .IN1(n17), .IN2(B[4]), .Q(n116) );
  NAND2X0 U165 ( .IN1(A[3]), .IN2(n34), .QN(n121) );
  NAND3X0 U166 ( .IN1(n169), .IN2(n170), .IN3(n119), .QN(n168) );
  OR2X1 U167 ( .IN1(n34), .IN2(A[3]), .Q(n119) );
  AO221X1 U168 ( .IN1(n171), .IN2(n35), .IN3(A[1]), .IN4(n1), .IN5(n126), .Q(
        n169) );
  NAND2X0 U169 ( .IN1(n122), .IN2(n170), .QN(n126) );
  NAND2X0 U170 ( .IN1(B[2]), .IN2(n18), .QN(n170) );
  OR2X1 U171 ( .IN1(n18), .IN2(B[2]), .Q(n122) );
  NAND2X0 U172 ( .IN1(n172), .IN2(n19), .QN(n171) );
  NOR2X0 U173 ( .IN1(n2), .IN2(A[0]), .QN(n172) );
  XOR2X1 U174 ( .IN1(A[30]), .IN2(B[30]), .Q(n39) );
  NOR2X0 U175 ( .IN1(n3), .IN2(B[31]), .QN(n38) );
endmodule


module gcd ( a_in, b_in, start, reset_n, clk, result, done );
  input [31:0] a_in;
  input [31:0] b_in;
  output [31:0] result;
  input start, reset_n, clk;
  output done;
  wire   N13, N14, N15, N81, N82, N83, N84, N85, N86, N87, N88, N89, N90, N91,
         N92, N93, N94, N95, N96, N97, N98, N99, N100, N101, N102, N103, N104,
         N105, N106, N107, N108, N109, N110, N111, N112, N118, N119, N120,
         N121, N122, N123, N124, N125, N126, N127, N128, N129, N130, N131,
         N132, N133, N134, N135, N136, N137, N138, N139, N140, N141, N142,
         N143, N144, N145, N146, N147, N148, N149, N151, N152, N153, N154,
         N155, N156, N157, N158, N159, N160, N161, N162, N163, N164, N165,
         N166, N167, N168, N169, N170, N171, N172, N173, N174, N175, N176,
         N177, N178, N179, N180, N181, N182, N184, N185, N186, N187, N188,
         N189, N190, N191, N192, N193, N194, N195, N196, N197, N198, N199,
         N200, N201, N202, N203, N204, N205, N206, N207, N208, N209, N210,
         N211, N212, N213, N214, N215, N217, N218, N219, N220, \U3/U3/Z_0 ,
         \U3/U3/Z_1 , \U3/U3/Z_2 , \U3/U3/Z_3 , \U3/U3/Z_4 , \U3/U3/Z_5 ,
         \U3/U3/Z_6 , \U3/U3/Z_7 , \U3/U3/Z_8 , \U3/U3/Z_9 , \U3/U3/Z_10 ,
         \U3/U3/Z_11 , \U3/U3/Z_12 , \U3/U3/Z_13 , \U3/U3/Z_14 , \U3/U3/Z_15 ,
         \U3/U3/Z_16 , \U3/U3/Z_17 , \U3/U3/Z_18 , \U3/U3/Z_19 , \U3/U3/Z_20 ,
         \U3/U3/Z_21 , \U3/U3/Z_22 , \U3/U3/Z_23 , \U3/U3/Z_24 , \U3/U3/Z_25 ,
         \U3/U3/Z_26 , \U3/U3/Z_27 , \U3/U3/Z_28 , \U3/U3/Z_29 , \U3/U3/Z_30 ,
         \U3/U3/Z_31 , \U3/U4/Z_0 , \U3/U4/Z_1 , \U3/U4/Z_2 , \U3/U4/Z_3 ,
         \U3/U4/Z_4 , \U3/U4/Z_5 , \U3/U4/Z_6 , \U3/U4/Z_7 , \U3/U4/Z_8 ,
         \U3/U4/Z_9 , \U3/U4/Z_10 , \U3/U4/Z_11 , \U3/U4/Z_12 , \U3/U4/Z_13 ,
         \U3/U4/Z_14 , \U3/U4/Z_15 , \U3/U4/Z_16 , \U3/U4/Z_17 , \U3/U4/Z_18 ,
         \U3/U4/Z_19 , \U3/U4/Z_20 , \U3/U4/Z_21 , \U3/U4/Z_22 , \U3/U4/Z_23 ,
         \U3/U4/Z_24 , \U3/U4/Z_25 , \U3/U4/Z_26 , \U3/U4/Z_27 , \U3/U4/Z_28 ,
         \U3/U4/Z_29 , \U3/U4/Z_30 , \U3/U4/Z_31 , n72, n73, n74, n76, n77,
         n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101;
  wire   [4:0] gcd_ns;
  wire   [31:0] reg_B;
  wire   [31:0] reg_A;

  gcd_DW01_sub_0 r89 ( .A({\U3/U3/Z_31 , \U3/U3/Z_30 , \U3/U3/Z_29 , 
        \U3/U3/Z_28 , \U3/U3/Z_27 , \U3/U3/Z_26 , \U3/U3/Z_25 , \U3/U3/Z_24 , 
        \U3/U3/Z_23 , \U3/U3/Z_22 , \U3/U3/Z_21 , \U3/U3/Z_20 , \U3/U3/Z_19 , 
        \U3/U3/Z_18 , \U3/U3/Z_17 , \U3/U3/Z_16 , \U3/U3/Z_15 , \U3/U3/Z_14 , 
        \U3/U3/Z_13 , \U3/U3/Z_12 , \U3/U3/Z_11 , \U3/U3/Z_10 , \U3/U3/Z_9 , 
        \U3/U3/Z_8 , \U3/U3/Z_7 , \U3/U3/Z_6 , \U3/U3/Z_5 , \U3/U3/Z_4 , 
        \U3/U3/Z_3 , \U3/U3/Z_2 , \U3/U3/Z_1 , \U3/U3/Z_0 }), .B({\U3/U4/Z_31 , 
        \U3/U4/Z_30 , \U3/U4/Z_29 , \U3/U4/Z_28 , \U3/U4/Z_27 , \U3/U4/Z_26 , 
        \U3/U4/Z_25 , \U3/U4/Z_24 , \U3/U4/Z_23 , \U3/U4/Z_22 , \U3/U4/Z_21 , 
        \U3/U4/Z_20 , \U3/U4/Z_19 , \U3/U4/Z_18 , \U3/U4/Z_17 , \U3/U4/Z_16 , 
        \U3/U4/Z_15 , \U3/U4/Z_14 , \U3/U4/Z_13 , \U3/U4/Z_12 , \U3/U4/Z_11 , 
        \U3/U4/Z_10 , \U3/U4/Z_9 , \U3/U4/Z_8 , \U3/U4/Z_7 , \U3/U4/Z_6 , 
        \U3/U4/Z_5 , \U3/U4/Z_4 , \U3/U4/Z_3 , \U3/U4/Z_2 , \U3/U4/Z_1 , 
        \U3/U4/Z_0 }), .CI(1'b0), .DIFF({N112, N111, N110, N109, N108, N107, 
        N106, N105, N104, N103, N102, N101, N100, N99, N98, N97, N96, N95, N94, 
        N93, N92, N91, N90, N89, N88, N87, N86, N85, N84, N83, N82, N81}) );
  gcd_DW01_cmp6_0 r83 ( .A(reg_B), .B(reg_A), .TC(1'b0), .LT(N14), .GT(N13), 
        .EQ(N15) );
  DFFASX1 \gcd_ps_reg[0]  ( .D(gcd_ns[0]), .CLK(clk), .SETB(reset_n), .Q(n89), 
        .QN(n77) );
  DFFARX1 \gcd_ps_reg[1]  ( .D(gcd_ns[1]), .CLK(clk), .RSTB(reset_n), .QN(n76)
         );
  DFFARX1 \gcd_ps_reg[3]  ( .D(gcd_ns[3]), .CLK(clk), .RSTB(reset_n), .Q(n91), 
        .QN(n73) );
  DFFARX1 \gcd_ps_reg[4]  ( .D(gcd_ns[4]), .CLK(clk), .RSTB(reset_n), .Q(n90), 
        .QN(n72) );
  DFFARX1 \gcd_ps_reg[2]  ( .D(gcd_ns[2]), .CLK(clk), .RSTB(reset_n), .QN(n74)
         );
  LATCHX1 \reg_B_reg[0]  ( .CLK(N217), .D(N184), .Q(reg_B[0]) );
  LATCHX1 \reg_B_reg[29]  ( .CLK(N217), .D(N213), .Q(reg_B[29]) );
  LATCHX1 \reg_B_reg[27]  ( .CLK(N217), .D(N211), .Q(reg_B[27]) );
  LATCHX1 \reg_B_reg[25]  ( .CLK(N217), .D(N209), .Q(reg_B[25]) );
  LATCHX1 \reg_B_reg[23]  ( .CLK(N217), .D(N207), .Q(reg_B[23]) );
  LATCHX1 \reg_B_reg[21]  ( .CLK(N217), .D(N205), .Q(reg_B[21]) );
  LATCHX1 \reg_B_reg[19]  ( .CLK(N217), .D(N203), .Q(reg_B[19]) );
  LATCHX1 \reg_B_reg[17]  ( .CLK(N217), .D(N201), .Q(reg_B[17]) );
  LATCHX1 \reg_B_reg[15]  ( .CLK(N217), .D(N199), .Q(reg_B[15]) );
  LATCHX1 \reg_B_reg[13]  ( .CLK(N217), .D(N197), .Q(reg_B[13]) );
  LATCHX1 \reg_B_reg[11]  ( .CLK(N217), .D(N195), .Q(reg_B[11]) );
  LATCHX1 \reg_B_reg[9]  ( .CLK(N217), .D(N193), .Q(reg_B[9]) );
  LATCHX1 \reg_B_reg[7]  ( .CLK(N217), .D(N191), .Q(reg_B[7]) );
  LATCHX1 \reg_B_reg[5]  ( .CLK(N217), .D(N189), .Q(reg_B[5]) );
  LATCHX1 \reg_B_reg[3]  ( .CLK(N217), .D(N187), .Q(reg_B[3]) );
  LATCHX1 \reg_A_reg[31]  ( .CLK(N220), .D(N182), .Q(reg_A[31]) );
  LATCHX1 \reg_A_reg[28]  ( .CLK(N220), .D(N179), .Q(reg_A[28]) );
  LATCHX1 \reg_A_reg[26]  ( .CLK(N220), .D(N177), .Q(reg_A[26]) );
  LATCHX1 \reg_A_reg[24]  ( .CLK(N220), .D(N175), .Q(reg_A[24]) );
  LATCHX1 \reg_A_reg[22]  ( .CLK(N220), .D(N173), .Q(reg_A[22]) );
  LATCHX1 \reg_A_reg[20]  ( .CLK(N220), .D(N171), .Q(reg_A[20]) );
  LATCHX1 \reg_A_reg[18]  ( .CLK(N220), .D(N169), .Q(reg_A[18]) );
  LATCHX1 \reg_A_reg[16]  ( .CLK(N220), .D(N167), .Q(reg_A[16]) );
  LATCHX1 \reg_A_reg[14]  ( .CLK(N220), .D(N165), .Q(reg_A[14]) );
  LATCHX1 \reg_A_reg[12]  ( .CLK(N220), .D(N163), .Q(reg_A[12]) );
  LATCHX1 \reg_A_reg[10]  ( .CLK(N220), .D(N161), .Q(reg_A[10]) );
  LATCHX1 \reg_A_reg[8]  ( .CLK(N220), .D(N159), .Q(reg_A[8]) );
  LATCHX1 \reg_A_reg[6]  ( .CLK(N220), .D(N157), .Q(reg_A[6]) );
  LATCHX1 \reg_A_reg[4]  ( .CLK(N220), .D(N155), .Q(reg_A[4]) );
  LATCHX1 \reg_A_reg[2]  ( .CLK(N220), .D(N153), .Q(reg_A[2]) );
  LATCHX1 \reg_B_reg[31]  ( .CLK(N217), .D(N215), .Q(reg_B[31]) );
  LATCHX1 \reg_B_reg[28]  ( .CLK(N217), .D(N212), .Q(reg_B[28]) );
  LATCHX1 \reg_B_reg[26]  ( .CLK(N217), .D(N210), .Q(reg_B[26]) );
  LATCHX1 \reg_B_reg[24]  ( .CLK(N217), .D(N208), .Q(reg_B[24]) );
  LATCHX1 \reg_B_reg[22]  ( .CLK(N217), .D(N206), .Q(reg_B[22]) );
  LATCHX1 \reg_B_reg[20]  ( .CLK(N217), .D(N204), .Q(reg_B[20]) );
  LATCHX1 \reg_B_reg[18]  ( .CLK(N217), .D(N202), .Q(reg_B[18]) );
  LATCHX1 \reg_B_reg[16]  ( .CLK(N217), .D(N200), .Q(reg_B[16]) );
  LATCHX1 \reg_B_reg[14]  ( .CLK(N217), .D(N198), .Q(reg_B[14]) );
  LATCHX1 \reg_B_reg[12]  ( .CLK(N217), .D(N196), .Q(reg_B[12]) );
  LATCHX1 \reg_B_reg[10]  ( .CLK(N217), .D(N194), .Q(reg_B[10]) );
  LATCHX1 \reg_B_reg[8]  ( .CLK(N217), .D(N192), .Q(reg_B[8]) );
  LATCHX1 \reg_B_reg[6]  ( .CLK(N217), .D(N190), .Q(reg_B[6]) );
  LATCHX1 \reg_B_reg[4]  ( .CLK(N217), .D(N188), .Q(reg_B[4]) );
  LATCHX1 \reg_B_reg[2]  ( .CLK(N217), .D(N186), .Q(reg_B[2]) );
  LATCHX1 \reg_A_reg[0]  ( .CLK(N220), .D(N151), .Q(reg_A[0]) );
  LATCHX1 \reg_A_reg[29]  ( .CLK(N220), .D(N180), .Q(reg_A[29]) );
  LATCHX1 \reg_A_reg[27]  ( .CLK(N220), .D(N178), .Q(reg_A[27]) );
  LATCHX1 \reg_A_reg[25]  ( .CLK(N220), .D(N176), .Q(reg_A[25]) );
  LATCHX1 \reg_A_reg[23]  ( .CLK(N220), .D(N174), .Q(reg_A[23]) );
  LATCHX1 \reg_A_reg[21]  ( .CLK(N220), .D(N172), .Q(reg_A[21]) );
  LATCHX1 \reg_A_reg[19]  ( .CLK(N220), .D(N170), .Q(reg_A[19]) );
  LATCHX1 \reg_A_reg[17]  ( .CLK(N220), .D(N168), .Q(reg_A[17]) );
  LATCHX1 \reg_A_reg[15]  ( .CLK(N220), .D(N166), .Q(reg_A[15]) );
  LATCHX1 \reg_A_reg[13]  ( .CLK(N220), .D(N164), .Q(reg_A[13]) );
  LATCHX1 \reg_A_reg[11]  ( .CLK(N220), .D(N162), .Q(reg_A[11]) );
  LATCHX1 \reg_A_reg[7]  ( .CLK(N220), .D(N158), .Q(reg_A[7]) );
  LATCHX1 \reg_A_reg[5]  ( .CLK(N220), .D(N156), .Q(reg_A[5]) );
  LATCHX1 \reg_A_reg[3]  ( .CLK(N220), .D(N154), .Q(reg_A[3]) );
  LATCHX1 \reg_A_reg[9]  ( .CLK(N220), .D(N160), .Q(reg_A[9]) );
  LATCHX1 \reg_B_reg[1]  ( .CLK(N217), .D(N185), .Q(reg_B[1]) );
  LATCHX1 \reg_A_reg[1]  ( .CLK(N220), .D(N152), .Q(reg_A[1]) );
  LATCHX1 \reg_B_reg[30]  ( .CLK(N217), .D(N214), .Q(reg_B[30]) );
  LATCHX1 \reg_A_reg[30]  ( .CLK(N220), .D(N181), .Q(reg_A[30]) );
  LATCHX1 done_reg ( .CLK(N218), .D(n88), .Q(done) );
  LATCHX1 \temp_result_reg[30]  ( .CLK(N219), .D(N148), .Q(result[30]) );
  LATCHX1 \temp_result_reg[29]  ( .CLK(N219), .D(N147), .Q(result[29]) );
  LATCHX1 \temp_result_reg[28]  ( .CLK(N219), .D(N146), .Q(result[28]) );
  LATCHX1 \temp_result_reg[27]  ( .CLK(N219), .D(N145), .Q(result[27]) );
  LATCHX1 \temp_result_reg[26]  ( .CLK(N219), .D(N144), .Q(result[26]) );
  LATCHX1 \temp_result_reg[25]  ( .CLK(N219), .D(N143), .Q(result[25]) );
  LATCHX1 \temp_result_reg[24]  ( .CLK(N219), .D(N142), .Q(result[24]) );
  LATCHX1 \temp_result_reg[23]  ( .CLK(N219), .D(N141), .Q(result[23]) );
  LATCHX1 \temp_result_reg[22]  ( .CLK(N219), .D(N140), .Q(result[22]) );
  LATCHX1 \temp_result_reg[21]  ( .CLK(N219), .D(N139), .Q(result[21]) );
  LATCHX1 \temp_result_reg[20]  ( .CLK(N219), .D(N138), .Q(result[20]) );
  LATCHX1 \temp_result_reg[19]  ( .CLK(N219), .D(N137), .Q(result[19]) );
  LATCHX1 \temp_result_reg[18]  ( .CLK(N219), .D(N136), .Q(result[18]) );
  LATCHX1 \temp_result_reg[17]  ( .CLK(N219), .D(N135), .Q(result[17]) );
  LATCHX1 \temp_result_reg[16]  ( .CLK(N219), .D(N134), .Q(result[16]) );
  LATCHX1 \temp_result_reg[15]  ( .CLK(N219), .D(N133), .Q(result[15]) );
  LATCHX1 \temp_result_reg[14]  ( .CLK(N219), .D(N132), .Q(result[14]) );
  LATCHX1 \temp_result_reg[13]  ( .CLK(N219), .D(N131), .Q(result[13]) );
  LATCHX1 \temp_result_reg[12]  ( .CLK(N219), .D(N130), .Q(result[12]) );
  LATCHX1 \temp_result_reg[11]  ( .CLK(N219), .D(N129), .Q(result[11]) );
  LATCHX1 \temp_result_reg[10]  ( .CLK(N219), .D(N128), .Q(result[10]) );
  LATCHX1 \temp_result_reg[9]  ( .CLK(N219), .D(N127), .Q(result[9]) );
  LATCHX1 \temp_result_reg[8]  ( .CLK(N219), .D(N126), .Q(result[8]) );
  LATCHX1 \temp_result_reg[7]  ( .CLK(N219), .D(N125), .Q(result[7]) );
  LATCHX1 \temp_result_reg[6]  ( .CLK(N219), .D(N124), .Q(result[6]) );
  LATCHX1 \temp_result_reg[5]  ( .CLK(N219), .D(N123), .Q(result[5]) );
  LATCHX1 \temp_result_reg[4]  ( .CLK(N219), .D(N122), .Q(result[4]) );
  LATCHX1 \temp_result_reg[3]  ( .CLK(N219), .D(N121), .Q(result[3]) );
  LATCHX1 \temp_result_reg[2]  ( .CLK(N219), .D(N120), .Q(result[2]) );
  LATCHX1 \temp_result_reg[1]  ( .CLK(N219), .D(N119), .Q(result[1]) );
  LATCHX1 \temp_result_reg[31]  ( .CLK(N219), .D(N149), .Q(result[31]) );
  LATCHX1 \temp_result_reg[0]  ( .CLK(N219), .D(N118), .Q(result[0]) );
  AND3X1 U186 ( .IN1(N15), .IN2(n92), .IN3(n93), .Q(gcd_ns[4]) );
  INVX0 U187 ( .IN(N14), .QN(n92) );
  NOR2X0 U188 ( .IN1(n76), .IN2(n94), .QN(gcd_ns[3]) );
  INVX0 U189 ( .IN(N13), .QN(n94) );
  AND2X1 U190 ( .IN1(n93), .IN2(N14), .Q(gcd_ns[2]) );
  NAND3X0 U191 ( .IN1(n73), .IN2(n95), .IN3(n74), .QN(gcd_ns[1]) );
  NAND2X0 U192 ( .IN1(start), .IN2(n89), .QN(n95) );
  AO221X1 U193 ( .IN1(n96), .IN2(n93), .IN3(n89), .IN4(n97), .IN5(n90), .Q(
        gcd_ns[0]) );
  INVX0 U194 ( .IN(start), .QN(n97) );
  NOR2X0 U195 ( .IN1(N13), .IN2(n76), .QN(n93) );
  NOR2X0 U196 ( .IN1(N15), .IN2(N14), .QN(n96) );
  AO22X1 U197 ( .IN1(reg_B[9]), .IN2(n98), .IN3(reg_A[9]), .IN4(n99), .Q(
        \U3/U4/Z_9 ) );
  AO22X1 U198 ( .IN1(reg_B[8]), .IN2(n98), .IN3(reg_A[8]), .IN4(n99), .Q(
        \U3/U4/Z_8 ) );
  AO22X1 U199 ( .IN1(reg_B[7]), .IN2(n98), .IN3(reg_A[7]), .IN4(n99), .Q(
        \U3/U4/Z_7 ) );
  AO22X1 U200 ( .IN1(reg_B[6]), .IN2(n98), .IN3(reg_A[6]), .IN4(n99), .Q(
        \U3/U4/Z_6 ) );
  AO22X1 U201 ( .IN1(reg_B[5]), .IN2(n98), .IN3(reg_A[5]), .IN4(n99), .Q(
        \U3/U4/Z_5 ) );
  AO22X1 U202 ( .IN1(reg_B[4]), .IN2(n98), .IN3(reg_A[4]), .IN4(n99), .Q(
        \U3/U4/Z_4 ) );
  AO22X1 U203 ( .IN1(reg_B[31]), .IN2(n98), .IN3(reg_A[31]), .IN4(n99), .Q(
        \U3/U4/Z_31 ) );
  AO22X1 U204 ( .IN1(reg_B[30]), .IN2(n98), .IN3(reg_A[30]), .IN4(n99), .Q(
        \U3/U4/Z_30 ) );
  AO22X1 U205 ( .IN1(reg_B[3]), .IN2(n98), .IN3(reg_A[3]), .IN4(n99), .Q(
        \U3/U4/Z_3 ) );
  AO22X1 U206 ( .IN1(reg_B[29]), .IN2(n98), .IN3(reg_A[29]), .IN4(n99), .Q(
        \U3/U4/Z_29 ) );
  AO22X1 U207 ( .IN1(reg_B[28]), .IN2(n98), .IN3(reg_A[28]), .IN4(n99), .Q(
        \U3/U4/Z_28 ) );
  AO22X1 U208 ( .IN1(reg_B[27]), .IN2(n98), .IN3(reg_A[27]), .IN4(n99), .Q(
        \U3/U4/Z_27 ) );
  AO22X1 U209 ( .IN1(reg_B[26]), .IN2(n98), .IN3(reg_A[26]), .IN4(n99), .Q(
        \U3/U4/Z_26 ) );
  AO22X1 U210 ( .IN1(reg_B[25]), .IN2(n98), .IN3(reg_A[25]), .IN4(n99), .Q(
        \U3/U4/Z_25 ) );
  AO22X1 U211 ( .IN1(reg_B[24]), .IN2(n98), .IN3(reg_A[24]), .IN4(n99), .Q(
        \U3/U4/Z_24 ) );
  AO22X1 U212 ( .IN1(reg_B[23]), .IN2(n98), .IN3(reg_A[23]), .IN4(n99), .Q(
        \U3/U4/Z_23 ) );
  AO22X1 U213 ( .IN1(reg_B[22]), .IN2(n98), .IN3(reg_A[22]), .IN4(n99), .Q(
        \U3/U4/Z_22 ) );
  AO22X1 U214 ( .IN1(reg_B[21]), .IN2(n98), .IN3(reg_A[21]), .IN4(n99), .Q(
        \U3/U4/Z_21 ) );
  AO22X1 U215 ( .IN1(reg_B[20]), .IN2(n98), .IN3(reg_A[20]), .IN4(n99), .Q(
        \U3/U4/Z_20 ) );
  AO22X1 U216 ( .IN1(reg_B[2]), .IN2(n98), .IN3(reg_A[2]), .IN4(n99), .Q(
        \U3/U4/Z_2 ) );
  AO22X1 U217 ( .IN1(reg_B[19]), .IN2(n98), .IN3(reg_A[19]), .IN4(n99), .Q(
        \U3/U4/Z_19 ) );
  AO22X1 U218 ( .IN1(reg_B[18]), .IN2(n98), .IN3(reg_A[18]), .IN4(n99), .Q(
        \U3/U4/Z_18 ) );
  AO22X1 U219 ( .IN1(reg_B[17]), .IN2(n98), .IN3(reg_A[17]), .IN4(n99), .Q(
        \U3/U4/Z_17 ) );
  AO22X1 U220 ( .IN1(reg_B[16]), .IN2(n98), .IN3(reg_A[16]), .IN4(n99), .Q(
        \U3/U4/Z_16 ) );
  AO22X1 U221 ( .IN1(reg_B[15]), .IN2(n98), .IN3(reg_A[15]), .IN4(n99), .Q(
        \U3/U4/Z_15 ) );
  AO22X1 U222 ( .IN1(reg_B[14]), .IN2(n98), .IN3(reg_A[14]), .IN4(n99), .Q(
        \U3/U4/Z_14 ) );
  AO22X1 U223 ( .IN1(reg_B[13]), .IN2(n98), .IN3(reg_A[13]), .IN4(n99), .Q(
        \U3/U4/Z_13 ) );
  AO22X1 U224 ( .IN1(reg_B[12]), .IN2(n98), .IN3(reg_A[12]), .IN4(n99), .Q(
        \U3/U4/Z_12 ) );
  AO22X1 U225 ( .IN1(reg_B[11]), .IN2(n98), .IN3(reg_A[11]), .IN4(n99), .Q(
        \U3/U4/Z_11 ) );
  AO22X1 U226 ( .IN1(reg_B[10]), .IN2(n98), .IN3(reg_A[10]), .IN4(n99), .Q(
        \U3/U4/Z_10 ) );
  AO22X1 U227 ( .IN1(reg_B[1]), .IN2(n98), .IN3(reg_A[1]), .IN4(n99), .Q(
        \U3/U4/Z_1 ) );
  AO22X1 U228 ( .IN1(reg_B[0]), .IN2(n98), .IN3(reg_A[0]), .IN4(n99), .Q(
        \U3/U4/Z_0 ) );
  AO22X1 U229 ( .IN1(n98), .IN2(reg_A[9]), .IN3(reg_B[9]), .IN4(n99), .Q(
        \U3/U3/Z_9 ) );
  AO22X1 U230 ( .IN1(reg_A[8]), .IN2(n98), .IN3(reg_B[8]), .IN4(n99), .Q(
        \U3/U3/Z_8 ) );
  AO22X1 U231 ( .IN1(reg_A[7]), .IN2(n98), .IN3(reg_B[7]), .IN4(n99), .Q(
        \U3/U3/Z_7 ) );
  AO22X1 U232 ( .IN1(reg_A[6]), .IN2(n98), .IN3(reg_B[6]), .IN4(n99), .Q(
        \U3/U3/Z_6 ) );
  AO22X1 U233 ( .IN1(reg_A[5]), .IN2(n98), .IN3(reg_B[5]), .IN4(n99), .Q(
        \U3/U3/Z_5 ) );
  AO22X1 U234 ( .IN1(reg_A[4]), .IN2(n98), .IN3(reg_B[4]), .IN4(n99), .Q(
        \U3/U3/Z_4 ) );
  AO22X1 U235 ( .IN1(reg_A[31]), .IN2(n98), .IN3(reg_B[31]), .IN4(n99), .Q(
        \U3/U3/Z_31 ) );
  AO22X1 U236 ( .IN1(reg_A[30]), .IN2(n98), .IN3(reg_B[30]), .IN4(n99), .Q(
        \U3/U3/Z_30 ) );
  AO22X1 U237 ( .IN1(reg_A[3]), .IN2(n98), .IN3(reg_B[3]), .IN4(n99), .Q(
        \U3/U3/Z_3 ) );
  AO22X1 U238 ( .IN1(reg_A[29]), .IN2(n98), .IN3(reg_B[29]), .IN4(n99), .Q(
        \U3/U3/Z_29 ) );
  AO22X1 U239 ( .IN1(reg_A[28]), .IN2(n98), .IN3(reg_B[28]), .IN4(n99), .Q(
        \U3/U3/Z_28 ) );
  AO22X1 U240 ( .IN1(reg_A[27]), .IN2(n98), .IN3(reg_B[27]), .IN4(n99), .Q(
        \U3/U3/Z_27 ) );
  AO22X1 U241 ( .IN1(reg_A[26]), .IN2(n98), .IN3(reg_B[26]), .IN4(n99), .Q(
        \U3/U3/Z_26 ) );
  AO22X1 U242 ( .IN1(reg_A[25]), .IN2(n98), .IN3(reg_B[25]), .IN4(n99), .Q(
        \U3/U3/Z_25 ) );
  AO22X1 U243 ( .IN1(reg_A[24]), .IN2(n98), .IN3(reg_B[24]), .IN4(n99), .Q(
        \U3/U3/Z_24 ) );
  AO22X1 U244 ( .IN1(reg_A[23]), .IN2(n98), .IN3(reg_B[23]), .IN4(n99), .Q(
        \U3/U3/Z_23 ) );
  AO22X1 U245 ( .IN1(reg_A[22]), .IN2(n98), .IN3(reg_B[22]), .IN4(n99), .Q(
        \U3/U3/Z_22 ) );
  AO22X1 U246 ( .IN1(reg_A[21]), .IN2(n98), .IN3(reg_B[21]), .IN4(n99), .Q(
        \U3/U3/Z_21 ) );
  AO22X1 U247 ( .IN1(reg_A[20]), .IN2(n98), .IN3(reg_B[20]), .IN4(n99), .Q(
        \U3/U3/Z_20 ) );
  AO22X1 U248 ( .IN1(reg_A[2]), .IN2(n98), .IN3(reg_B[2]), .IN4(n99), .Q(
        \U3/U3/Z_2 ) );
  AO22X1 U249 ( .IN1(reg_A[19]), .IN2(n98), .IN3(reg_B[19]), .IN4(n99), .Q(
        \U3/U3/Z_19 ) );
  AO22X1 U250 ( .IN1(reg_A[18]), .IN2(n98), .IN3(reg_B[18]), .IN4(n99), .Q(
        \U3/U3/Z_18 ) );
  AO22X1 U251 ( .IN1(reg_A[17]), .IN2(n98), .IN3(reg_B[17]), .IN4(n99), .Q(
        \U3/U3/Z_17 ) );
  AO22X1 U252 ( .IN1(reg_A[16]), .IN2(n98), .IN3(reg_B[16]), .IN4(n99), .Q(
        \U3/U3/Z_16 ) );
  AO22X1 U253 ( .IN1(reg_A[15]), .IN2(n98), .IN3(reg_B[15]), .IN4(n99), .Q(
        \U3/U3/Z_15 ) );
  AO22X1 U254 ( .IN1(reg_A[14]), .IN2(n98), .IN3(reg_B[14]), .IN4(n99), .Q(
        \U3/U3/Z_14 ) );
  AO22X1 U255 ( .IN1(reg_A[13]), .IN2(n98), .IN3(reg_B[13]), .IN4(n99), .Q(
        \U3/U3/Z_13 ) );
  AO22X1 U256 ( .IN1(reg_A[12]), .IN2(n98), .IN3(reg_B[12]), .IN4(n99), .Q(
        \U3/U3/Z_12 ) );
  AO22X1 U257 ( .IN1(reg_A[11]), .IN2(n98), .IN3(reg_B[11]), .IN4(n99), .Q(
        \U3/U3/Z_11 ) );
  AO22X1 U258 ( .IN1(reg_A[10]), .IN2(n98), .IN3(reg_B[10]), .IN4(n99), .Q(
        \U3/U3/Z_10 ) );
  AO22X1 U259 ( .IN1(reg_A[1]), .IN2(n98), .IN3(reg_B[1]), .IN4(n99), .Q(
        \U3/U3/Z_1 ) );
  AO22X1 U260 ( .IN1(reg_A[0]), .IN2(n98), .IN3(reg_B[0]), .IN4(n99), .Q(
        \U3/U3/Z_0 ) );
  AO21X1 U261 ( .IN1(n76), .IN2(n98), .IN3(n100), .Q(N220) );
  AO21X1 U262 ( .IN1(n88), .IN2(n76), .IN3(n100), .Q(N219) );
  OA21X1 U263 ( .IN1(n101), .IN2(n88), .IN3(n76), .Q(N218) );
  AO21X1 U264 ( .IN1(n76), .IN2(n99), .IN3(n100), .Q(N217) );
  AND3X1 U265 ( .IN1(n76), .IN2(start), .IN3(n101), .Q(n100) );
  AO22X1 U266 ( .IN1(b_in[31]), .IN2(n101), .IN3(N112), .IN4(n99), .Q(N215) );
  AO22X1 U267 ( .IN1(b_in[30]), .IN2(n101), .IN3(N111), .IN4(n99), .Q(N214) );
  AO22X1 U268 ( .IN1(b_in[29]), .IN2(n101), .IN3(N110), .IN4(n99), .Q(N213) );
  AO22X1 U269 ( .IN1(b_in[28]), .IN2(n101), .IN3(N109), .IN4(n99), .Q(N212) );
  AO22X1 U270 ( .IN1(b_in[27]), .IN2(n101), .IN3(N108), .IN4(n99), .Q(N211) );
  AO22X1 U271 ( .IN1(b_in[26]), .IN2(n101), .IN3(N107), .IN4(n99), .Q(N210) );
  AO22X1 U272 ( .IN1(b_in[25]), .IN2(n101), .IN3(N106), .IN4(n99), .Q(N209) );
  AO22X1 U273 ( .IN1(b_in[24]), .IN2(n101), .IN3(N105), .IN4(n99), .Q(N208) );
  AO22X1 U274 ( .IN1(b_in[23]), .IN2(n101), .IN3(N104), .IN4(n99), .Q(N207) );
  AO22X1 U275 ( .IN1(b_in[22]), .IN2(n101), .IN3(N103), .IN4(n99), .Q(N206) );
  AO22X1 U276 ( .IN1(b_in[21]), .IN2(n101), .IN3(N102), .IN4(n99), .Q(N205) );
  AO22X1 U277 ( .IN1(b_in[20]), .IN2(n101), .IN3(N101), .IN4(n99), .Q(N204) );
  AO22X1 U278 ( .IN1(b_in[19]), .IN2(n101), .IN3(N100), .IN4(n99), .Q(N203) );
  AO22X1 U279 ( .IN1(b_in[18]), .IN2(n101), .IN3(N99), .IN4(n99), .Q(N202) );
  AO22X1 U280 ( .IN1(b_in[17]), .IN2(n101), .IN3(N98), .IN4(n99), .Q(N201) );
  AO22X1 U281 ( .IN1(b_in[16]), .IN2(n101), .IN3(N97), .IN4(n99), .Q(N200) );
  AO22X1 U282 ( .IN1(b_in[15]), .IN2(n101), .IN3(N96), .IN4(n99), .Q(N199) );
  AO22X1 U283 ( .IN1(b_in[14]), .IN2(n101), .IN3(N95), .IN4(n99), .Q(N198) );
  AO22X1 U284 ( .IN1(b_in[13]), .IN2(n101), .IN3(N94), .IN4(n99), .Q(N197) );
  AO22X1 U285 ( .IN1(b_in[12]), .IN2(n101), .IN3(N93), .IN4(n99), .Q(N196) );
  AO22X1 U286 ( .IN1(b_in[11]), .IN2(n101), .IN3(N92), .IN4(n99), .Q(N195) );
  AO22X1 U287 ( .IN1(b_in[10]), .IN2(n101), .IN3(N91), .IN4(n99), .Q(N194) );
  AO22X1 U288 ( .IN1(b_in[9]), .IN2(n101), .IN3(N90), .IN4(n99), .Q(N193) );
  AO22X1 U289 ( .IN1(b_in[8]), .IN2(n101), .IN3(N89), .IN4(n99), .Q(N192) );
  AO22X1 U290 ( .IN1(b_in[7]), .IN2(n101), .IN3(N88), .IN4(n99), .Q(N191) );
  AO22X1 U291 ( .IN1(b_in[6]), .IN2(n101), .IN3(N87), .IN4(n99), .Q(N190) );
  AO22X1 U292 ( .IN1(b_in[5]), .IN2(n101), .IN3(N86), .IN4(n99), .Q(N189) );
  AO22X1 U293 ( .IN1(b_in[4]), .IN2(n101), .IN3(N85), .IN4(n99), .Q(N188) );
  AO22X1 U294 ( .IN1(b_in[3]), .IN2(n101), .IN3(N84), .IN4(n99), .Q(N187) );
  AO22X1 U295 ( .IN1(b_in[2]), .IN2(n101), .IN3(N83), .IN4(n99), .Q(N186) );
  AO22X1 U296 ( .IN1(b_in[1]), .IN2(n101), .IN3(N82), .IN4(n99), .Q(N185) );
  AO22X1 U297 ( .IN1(b_in[0]), .IN2(n101), .IN3(N81), .IN4(n99), .Q(N184) );
  AND4X1 U298 ( .IN1(n72), .IN2(n77), .IN3(n74), .IN4(n91), .Q(n99) );
  AO22X1 U299 ( .IN1(a_in[31]), .IN2(n101), .IN3(N112), .IN4(n98), .Q(N182) );
  AO22X1 U300 ( .IN1(a_in[30]), .IN2(n101), .IN3(N111), .IN4(n98), .Q(N181) );
  AO22X1 U301 ( .IN1(a_in[29]), .IN2(n101), .IN3(N110), .IN4(n98), .Q(N180) );
  AO22X1 U302 ( .IN1(a_in[28]), .IN2(n101), .IN3(N109), .IN4(n98), .Q(N179) );
  AO22X1 U303 ( .IN1(a_in[27]), .IN2(n101), .IN3(N108), .IN4(n98), .Q(N178) );
  AO22X1 U304 ( .IN1(a_in[26]), .IN2(n101), .IN3(N107), .IN4(n98), .Q(N177) );
  AO22X1 U305 ( .IN1(a_in[25]), .IN2(n101), .IN3(N106), .IN4(n98), .Q(N176) );
  AO22X1 U306 ( .IN1(a_in[24]), .IN2(n101), .IN3(N105), .IN4(n98), .Q(N175) );
  AO22X1 U307 ( .IN1(a_in[23]), .IN2(n101), .IN3(N104), .IN4(n98), .Q(N174) );
  AO22X1 U308 ( .IN1(a_in[22]), .IN2(n101), .IN3(N103), .IN4(n98), .Q(N173) );
  AO22X1 U309 ( .IN1(a_in[21]), .IN2(n101), .IN3(N102), .IN4(n98), .Q(N172) );
  AO22X1 U310 ( .IN1(a_in[20]), .IN2(n101), .IN3(N101), .IN4(n98), .Q(N171) );
  AO22X1 U311 ( .IN1(a_in[19]), .IN2(n101), .IN3(N100), .IN4(n98), .Q(N170) );
  AO22X1 U312 ( .IN1(a_in[18]), .IN2(n101), .IN3(N99), .IN4(n98), .Q(N169) );
  AO22X1 U313 ( .IN1(a_in[17]), .IN2(n101), .IN3(N98), .IN4(n98), .Q(N168) );
  AO22X1 U314 ( .IN1(a_in[16]), .IN2(n101), .IN3(N97), .IN4(n98), .Q(N167) );
  AO22X1 U315 ( .IN1(a_in[15]), .IN2(n101), .IN3(N96), .IN4(n98), .Q(N166) );
  AO22X1 U316 ( .IN1(a_in[14]), .IN2(n101), .IN3(N95), .IN4(n98), .Q(N165) );
  AO22X1 U317 ( .IN1(a_in[13]), .IN2(n101), .IN3(N94), .IN4(n98), .Q(N164) );
  AO22X1 U318 ( .IN1(a_in[12]), .IN2(n101), .IN3(N93), .IN4(n98), .Q(N163) );
  AO22X1 U319 ( .IN1(a_in[11]), .IN2(n101), .IN3(N92), .IN4(n98), .Q(N162) );
  AO22X1 U320 ( .IN1(a_in[10]), .IN2(n101), .IN3(N91), .IN4(n98), .Q(N161) );
  AO22X1 U321 ( .IN1(a_in[9]), .IN2(n101), .IN3(N90), .IN4(n98), .Q(N160) );
  AO22X1 U322 ( .IN1(a_in[8]), .IN2(n101), .IN3(N89), .IN4(n98), .Q(N159) );
  AO22X1 U323 ( .IN1(a_in[7]), .IN2(n101), .IN3(N88), .IN4(n98), .Q(N158) );
  AO22X1 U324 ( .IN1(a_in[6]), .IN2(n101), .IN3(N87), .IN4(n98), .Q(N157) );
  AO22X1 U325 ( .IN1(a_in[5]), .IN2(n101), .IN3(N86), .IN4(n98), .Q(N156) );
  AO22X1 U326 ( .IN1(a_in[4]), .IN2(n101), .IN3(N85), .IN4(n98), .Q(N155) );
  AO22X1 U327 ( .IN1(a_in[3]), .IN2(n101), .IN3(N84), .IN4(n98), .Q(N154) );
  AO22X1 U328 ( .IN1(a_in[2]), .IN2(n101), .IN3(N83), .IN4(n98), .Q(N153) );
  AO22X1 U329 ( .IN1(a_in[1]), .IN2(n101), .IN3(N82), .IN4(n98), .Q(N152) );
  AO22X1 U330 ( .IN1(a_in[0]), .IN2(n101), .IN3(N81), .IN4(n98), .Q(N151) );
  NOR4X0 U331 ( .IN1(n90), .IN2(n89), .IN3(n91), .IN4(n74), .QN(n98) );
  AND4X1 U332 ( .IN1(n72), .IN2(n74), .IN3(n73), .IN4(n89), .Q(n101) );
  AND2X1 U333 ( .IN1(reg_A[31]), .IN2(n88), .Q(N149) );
  AND2X1 U334 ( .IN1(reg_A[30]), .IN2(n88), .Q(N148) );
  AND2X1 U335 ( .IN1(reg_A[29]), .IN2(n88), .Q(N147) );
  AND2X1 U336 ( .IN1(reg_A[28]), .IN2(n88), .Q(N146) );
  AND2X1 U337 ( .IN1(reg_A[27]), .IN2(n88), .Q(N145) );
  AND2X1 U338 ( .IN1(reg_A[26]), .IN2(n88), .Q(N144) );
  AND2X1 U339 ( .IN1(reg_A[25]), .IN2(n88), .Q(N143) );
  AND2X1 U340 ( .IN1(reg_A[24]), .IN2(n88), .Q(N142) );
  AND2X1 U341 ( .IN1(reg_A[23]), .IN2(n88), .Q(N141) );
  AND2X1 U342 ( .IN1(reg_A[22]), .IN2(n88), .Q(N140) );
  AND2X1 U343 ( .IN1(reg_A[21]), .IN2(n88), .Q(N139) );
  AND2X1 U344 ( .IN1(reg_A[20]), .IN2(n88), .Q(N138) );
  AND2X1 U345 ( .IN1(reg_A[19]), .IN2(n88), .Q(N137) );
  AND2X1 U346 ( .IN1(reg_A[18]), .IN2(n88), .Q(N136) );
  AND2X1 U347 ( .IN1(reg_A[17]), .IN2(n88), .Q(N135) );
  AND2X1 U348 ( .IN1(reg_A[16]), .IN2(n88), .Q(N134) );
  AND2X1 U349 ( .IN1(reg_A[15]), .IN2(n88), .Q(N133) );
  AND2X1 U350 ( .IN1(reg_A[14]), .IN2(n88), .Q(N132) );
  AND2X1 U351 ( .IN1(reg_A[13]), .IN2(n88), .Q(N131) );
  AND2X1 U352 ( .IN1(reg_A[12]), .IN2(n88), .Q(N130) );
  AND2X1 U353 ( .IN1(reg_A[11]), .IN2(n88), .Q(N129) );
  AND2X1 U354 ( .IN1(reg_A[10]), .IN2(n88), .Q(N128) );
  AND2X1 U355 ( .IN1(reg_A[9]), .IN2(n88), .Q(N127) );
  AND2X1 U356 ( .IN1(reg_A[8]), .IN2(n88), .Q(N126) );
  AND2X1 U357 ( .IN1(reg_A[7]), .IN2(n88), .Q(N125) );
  AND2X1 U358 ( .IN1(reg_A[6]), .IN2(n88), .Q(N124) );
  AND2X1 U359 ( .IN1(reg_A[5]), .IN2(n88), .Q(N123) );
  AND2X1 U360 ( .IN1(reg_A[4]), .IN2(n88), .Q(N122) );
  AND2X1 U361 ( .IN1(reg_A[3]), .IN2(n88), .Q(N121) );
  AND2X1 U362 ( .IN1(reg_A[2]), .IN2(n88), .Q(N120) );
  AND2X1 U363 ( .IN1(reg_A[1]), .IN2(n88), .Q(N119) );
  AND2X1 U364 ( .IN1(reg_A[0]), .IN2(n88), .Q(N118) );
  AND4X1 U365 ( .IN1(n77), .IN2(n74), .IN3(n73), .IN4(n90), .Q(n88) );
endmodule

