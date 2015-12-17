/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06-SP1
// Date      : Wed Dec 16 19:01:44 2015
/////////////////////////////////////////////////////////////


module flex_counter_NUM_CNT_BITS13_1_DW01_inc_0 ( A, SUM );
  input [12:0] A;
  output [12:0] SUM;

  wire   [12:2] carry;

  HAX1 U1_1_11 ( .A(A[11]), .B(carry[11]), .YC(carry[12]), .YS(SUM[11]) );
  HAX1 U1_1_10 ( .A(A[10]), .B(carry[10]), .YC(carry[11]), .YS(SUM[10]) );
  HAX1 U1_1_9 ( .A(A[9]), .B(carry[9]), .YC(carry[10]), .YS(SUM[9]) );
  HAX1 U1_1_8 ( .A(A[8]), .B(carry[8]), .YC(carry[9]), .YS(SUM[8]) );
  HAX1 U1_1_7 ( .A(A[7]), .B(carry[7]), .YC(carry[8]), .YS(SUM[7]) );
  HAX1 U1_1_6 ( .A(A[6]), .B(carry[6]), .YC(carry[7]), .YS(SUM[6]) );
  HAX1 U1_1_5 ( .A(A[5]), .B(carry[5]), .YC(carry[6]), .YS(SUM[5]) );
  HAX1 U1_1_4 ( .A(A[4]), .B(carry[4]), .YC(carry[5]), .YS(SUM[4]) );
  HAX1 U1_1_3 ( .A(A[3]), .B(carry[3]), .YC(carry[4]), .YS(SUM[3]) );
  HAX1 U1_1_2 ( .A(A[2]), .B(carry[2]), .YC(carry[3]), .YS(SUM[2]) );
  HAX1 U1_1_1 ( .A(A[1]), .B(A[0]), .YC(carry[2]), .YS(SUM[1]) );
  INVX2 U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1 U2 ( .A(carry[12]), .B(A[12]), .Y(SUM[12]) );
endmodule


module flex_counter_NUM_CNT_BITS13_1 ( clk, n_rst, clear, count_enable, 
        rollover_val, count_out, rollover_flag );
  input [12:0] rollover_val;
  output [12:0] count_out;
  input clk, n_rst, clear, count_enable;
  output rollover_flag;
  wire   N21, N22, N23, N24, N25, N26, N27, N28, N29, N30, N31, N32, N33, n50,
         n1, n2, n3, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42,
         n43, n44, n45, n46, n47, n48, n49, n51, n52, n53, n54, n55, n56, n57,
         n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71,
         n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83;

  DFFSR \count_out_reg[0]  ( .D(n71), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[0]) );
  DFFSR \count_out_reg[11]  ( .D(n82), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[11]) );
  DFFSR \count_out_reg[10]  ( .D(n81), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[10]) );
  DFFSR \count_out_reg[9]  ( .D(n80), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[9]) );
  DFFSR \count_out_reg[8]  ( .D(n79), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[8]) );
  DFFSR \count_out_reg[7]  ( .D(n78), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[7]) );
  DFFSR \count_out_reg[6]  ( .D(n77), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[6]) );
  DFFSR \count_out_reg[5]  ( .D(n76), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[5]) );
  DFFSR \count_out_reg[4]  ( .D(n75), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[4]) );
  DFFSR \count_out_reg[3]  ( .D(n74), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[3]) );
  DFFSR \count_out_reg[2]  ( .D(n73), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[2]) );
  DFFSR \count_out_reg[1]  ( .D(n72), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[1]) );
  DFFSR rollover_flag_reg ( .D(n50), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        rollover_flag) );
  DFFSR \count_out_reg[12]  ( .D(n83), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[12]) );
  flex_counter_NUM_CNT_BITS13_1_DW01_inc_0 add_56 ( .A(count_out), .SUM({N33, 
        N32, N31, N30, N29, N28, N27, N26, N25, N24, N23, N22, N21}) );
  BUFX2 U5 ( .A(n3), .Y(n1) );
  OAI21X1 U18 ( .A(n2), .B(n1), .C(n18), .Y(n71) );
  NAND2X1 U19 ( .A(count_out[0]), .B(n19), .Y(n18) );
  INVX1 U20 ( .A(N21), .Y(n2) );
  OAI21X1 U21 ( .A(n20), .B(n1), .C(n21), .Y(n72) );
  NAND2X1 U22 ( .A(count_out[1]), .B(n19), .Y(n21) );
  INVX1 U23 ( .A(N22), .Y(n20) );
  OAI21X1 U24 ( .A(n22), .B(n1), .C(n23), .Y(n73) );
  NAND2X1 U25 ( .A(count_out[2]), .B(n19), .Y(n23) );
  INVX1 U26 ( .A(N23), .Y(n22) );
  OAI21X1 U27 ( .A(n24), .B(n1), .C(n25), .Y(n74) );
  NAND2X1 U28 ( .A(count_out[3]), .B(n19), .Y(n25) );
  INVX1 U29 ( .A(N24), .Y(n24) );
  OAI21X1 U30 ( .A(n26), .B(n1), .C(n27), .Y(n75) );
  NAND2X1 U31 ( .A(count_out[4]), .B(n19), .Y(n27) );
  INVX1 U32 ( .A(N25), .Y(n26) );
  OAI21X1 U33 ( .A(n28), .B(n1), .C(n29), .Y(n76) );
  NAND2X1 U34 ( .A(count_out[5]), .B(n19), .Y(n29) );
  INVX1 U35 ( .A(N26), .Y(n28) );
  OAI21X1 U36 ( .A(n30), .B(n1), .C(n31), .Y(n77) );
  NAND2X1 U37 ( .A(count_out[6]), .B(n19), .Y(n31) );
  INVX1 U38 ( .A(N27), .Y(n30) );
  OAI21X1 U39 ( .A(n32), .B(n1), .C(n33), .Y(n78) );
  NAND2X1 U40 ( .A(count_out[7]), .B(n19), .Y(n33) );
  OAI21X1 U41 ( .A(n34), .B(n1), .C(n35), .Y(n79) );
  NAND2X1 U42 ( .A(count_out[8]), .B(n19), .Y(n35) );
  OAI21X1 U43 ( .A(n36), .B(n1), .C(n37), .Y(n80) );
  NAND2X1 U44 ( .A(count_out[9]), .B(n19), .Y(n37) );
  INVX1 U45 ( .A(N30), .Y(n36) );
  OAI21X1 U46 ( .A(n38), .B(n1), .C(n39), .Y(n81) );
  NAND2X1 U47 ( .A(count_out[10]), .B(n19), .Y(n39) );
  INVX1 U48 ( .A(N31), .Y(n38) );
  OAI21X1 U49 ( .A(n40), .B(n1), .C(n41), .Y(n82) );
  NAND2X1 U50 ( .A(count_out[11]), .B(n19), .Y(n41) );
  INVX1 U51 ( .A(N32), .Y(n40) );
  OAI21X1 U52 ( .A(n42), .B(n1), .C(n43), .Y(n83) );
  NAND2X1 U53 ( .A(count_out[12]), .B(n19), .Y(n43) );
  NAND3X1 U54 ( .A(n44), .B(n45), .C(n46), .Y(n3) );
  INVX1 U55 ( .A(n19), .Y(n46) );
  INVX1 U56 ( .A(clear), .Y(n45) );
  INVX1 U57 ( .A(N33), .Y(n42) );
  OAI21X1 U58 ( .A(n47), .B(n48), .C(n49), .Y(n50) );
  NAND2X1 U59 ( .A(rollover_flag), .B(n19), .Y(n49) );
  NOR2X1 U60 ( .A(clear), .B(count_enable), .Y(n19) );
  OR2X1 U61 ( .A(n44), .B(clear), .Y(n48) );
  NAND2X1 U62 ( .A(n51), .B(n52), .Y(n44) );
  NOR2X1 U63 ( .A(n53), .B(n54), .Y(n52) );
  NAND3X1 U64 ( .A(n55), .B(n56), .C(n57), .Y(n54) );
  XNOR2X1 U65 ( .A(N33), .B(rollover_val[12]), .Y(n57) );
  XNOR2X1 U66 ( .A(N21), .B(rollover_val[0]), .Y(n56) );
  XNOR2X1 U67 ( .A(N32), .B(rollover_val[11]), .Y(n55) );
  NAND3X1 U68 ( .A(n58), .B(n59), .C(n60), .Y(n53) );
  NOR2X1 U69 ( .A(n61), .B(n62), .Y(n60) );
  XNOR2X1 U70 ( .A(rollover_val[8]), .B(n34), .Y(n62) );
  INVX1 U71 ( .A(N29), .Y(n34) );
  XNOR2X1 U72 ( .A(rollover_val[7]), .B(n32), .Y(n61) );
  INVX1 U73 ( .A(N28), .Y(n32) );
  XNOR2X1 U74 ( .A(N30), .B(rollover_val[9]), .Y(n59) );
  XNOR2X1 U75 ( .A(N31), .B(rollover_val[10]), .Y(n58) );
  NOR2X1 U76 ( .A(n63), .B(n64), .Y(n51) );
  NAND3X1 U77 ( .A(n65), .B(n66), .C(n67), .Y(n64) );
  XNOR2X1 U78 ( .A(N26), .B(rollover_val[5]), .Y(n67) );
  XNOR2X1 U79 ( .A(N27), .B(rollover_val[6]), .Y(n66) );
  XNOR2X1 U80 ( .A(N25), .B(rollover_val[4]), .Y(n65) );
  NAND3X1 U81 ( .A(n68), .B(n69), .C(n70), .Y(n63) );
  XNOR2X1 U82 ( .A(N23), .B(rollover_val[2]), .Y(n70) );
  XNOR2X1 U83 ( .A(N24), .B(rollover_val[3]), .Y(n69) );
  XNOR2X1 U84 ( .A(N22), .B(rollover_val[1]), .Y(n68) );
  INVX1 U85 ( .A(count_enable), .Y(n47) );
endmodule


module flex_counter_NUM_CNT_BITS13_0_DW01_inc_0 ( A, SUM );
  input [12:0] A;
  output [12:0] SUM;

  wire   [12:2] carry;

  HAX1 U1_1_11 ( .A(A[11]), .B(carry[11]), .YC(carry[12]), .YS(SUM[11]) );
  HAX1 U1_1_10 ( .A(A[10]), .B(carry[10]), .YC(carry[11]), .YS(SUM[10]) );
  HAX1 U1_1_9 ( .A(A[9]), .B(carry[9]), .YC(carry[10]), .YS(SUM[9]) );
  HAX1 U1_1_8 ( .A(A[8]), .B(carry[8]), .YC(carry[9]), .YS(SUM[8]) );
  HAX1 U1_1_7 ( .A(A[7]), .B(carry[7]), .YC(carry[8]), .YS(SUM[7]) );
  HAX1 U1_1_6 ( .A(A[6]), .B(carry[6]), .YC(carry[7]), .YS(SUM[6]) );
  HAX1 U1_1_5 ( .A(A[5]), .B(carry[5]), .YC(carry[6]), .YS(SUM[5]) );
  HAX1 U1_1_4 ( .A(A[4]), .B(carry[4]), .YC(carry[5]), .YS(SUM[4]) );
  HAX1 U1_1_3 ( .A(A[3]), .B(carry[3]), .YC(carry[4]), .YS(SUM[3]) );
  HAX1 U1_1_2 ( .A(A[2]), .B(carry[2]), .YC(carry[3]), .YS(SUM[2]) );
  HAX1 U1_1_1 ( .A(A[1]), .B(A[0]), .YC(carry[2]), .YS(SUM[1]) );
  INVX2 U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1 U2 ( .A(carry[12]), .B(A[12]), .Y(SUM[12]) );
endmodule


module flex_counter_NUM_CNT_BITS13_0 ( clk, n_rst, clear, count_enable, 
        rollover_val, count_out, rollover_flag );
  input [12:0] rollover_val;
  output [12:0] count_out;
  input clk, n_rst, clear, count_enable;
  output rollover_flag;
  wire   N21, N22, N23, N24, N25, N26, N27, N28, N29, N30, N31, N32, N33, n1,
         n2, n3, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29,
         n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43,
         n44, n45, n46, n47, n48, n49, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84;

  DFFSR \count_out_reg[0]  ( .D(n71), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[0]) );
  DFFSR \count_out_reg[11]  ( .D(n82), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[11]) );
  DFFSR \count_out_reg[10]  ( .D(n81), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[10]) );
  DFFSR \count_out_reg[9]  ( .D(n80), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[9]) );
  DFFSR \count_out_reg[8]  ( .D(n79), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[8]) );
  DFFSR \count_out_reg[7]  ( .D(n78), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[7]) );
  DFFSR \count_out_reg[6]  ( .D(n77), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[6]) );
  DFFSR \count_out_reg[5]  ( .D(n76), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[5]) );
  DFFSR \count_out_reg[4]  ( .D(n75), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[4]) );
  DFFSR \count_out_reg[3]  ( .D(n74), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[3]) );
  DFFSR \count_out_reg[2]  ( .D(n73), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[2]) );
  DFFSR \count_out_reg[1]  ( .D(n72), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[1]) );
  DFFSR rollover_flag_reg ( .D(n84), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        rollover_flag) );
  DFFSR \count_out_reg[12]  ( .D(n83), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[12]) );
  flex_counter_NUM_CNT_BITS13_0_DW01_inc_0 add_56 ( .A(count_out), .SUM({N33, 
        N32, N31, N30, N29, N28, N27, N26, N25, N24, N23, N22, N21}) );
  BUFX2 U5 ( .A(n3), .Y(n1) );
  OAI21X1 U18 ( .A(n2), .B(n1), .C(n18), .Y(n71) );
  NAND2X1 U19 ( .A(count_out[0]), .B(n19), .Y(n18) );
  INVX1 U20 ( .A(N21), .Y(n2) );
  OAI21X1 U21 ( .A(n20), .B(n1), .C(n21), .Y(n72) );
  NAND2X1 U22 ( .A(count_out[1]), .B(n19), .Y(n21) );
  INVX1 U23 ( .A(N22), .Y(n20) );
  OAI21X1 U24 ( .A(n22), .B(n1), .C(n23), .Y(n73) );
  NAND2X1 U25 ( .A(count_out[2]), .B(n19), .Y(n23) );
  INVX1 U26 ( .A(N23), .Y(n22) );
  OAI21X1 U27 ( .A(n24), .B(n1), .C(n25), .Y(n74) );
  NAND2X1 U28 ( .A(count_out[3]), .B(n19), .Y(n25) );
  INVX1 U29 ( .A(N24), .Y(n24) );
  OAI21X1 U30 ( .A(n26), .B(n1), .C(n27), .Y(n75) );
  NAND2X1 U31 ( .A(count_out[4]), .B(n19), .Y(n27) );
  INVX1 U32 ( .A(N25), .Y(n26) );
  OAI21X1 U33 ( .A(n28), .B(n1), .C(n29), .Y(n76) );
  NAND2X1 U34 ( .A(count_out[5]), .B(n19), .Y(n29) );
  INVX1 U35 ( .A(N26), .Y(n28) );
  OAI21X1 U36 ( .A(n30), .B(n1), .C(n31), .Y(n77) );
  NAND2X1 U37 ( .A(count_out[6]), .B(n19), .Y(n31) );
  INVX1 U38 ( .A(N27), .Y(n30) );
  OAI21X1 U39 ( .A(n32), .B(n1), .C(n33), .Y(n78) );
  NAND2X1 U40 ( .A(count_out[7]), .B(n19), .Y(n33) );
  OAI21X1 U41 ( .A(n34), .B(n1), .C(n35), .Y(n79) );
  NAND2X1 U42 ( .A(count_out[8]), .B(n19), .Y(n35) );
  OAI21X1 U43 ( .A(n36), .B(n1), .C(n37), .Y(n80) );
  NAND2X1 U44 ( .A(count_out[9]), .B(n19), .Y(n37) );
  INVX1 U45 ( .A(N30), .Y(n36) );
  OAI21X1 U46 ( .A(n38), .B(n1), .C(n39), .Y(n81) );
  NAND2X1 U47 ( .A(count_out[10]), .B(n19), .Y(n39) );
  INVX1 U48 ( .A(N31), .Y(n38) );
  OAI21X1 U49 ( .A(n40), .B(n1), .C(n41), .Y(n82) );
  NAND2X1 U50 ( .A(count_out[11]), .B(n19), .Y(n41) );
  INVX1 U51 ( .A(N32), .Y(n40) );
  OAI21X1 U52 ( .A(n42), .B(n1), .C(n43), .Y(n83) );
  NAND2X1 U53 ( .A(count_out[12]), .B(n19), .Y(n43) );
  NAND3X1 U54 ( .A(n44), .B(n45), .C(n46), .Y(n3) );
  INVX1 U55 ( .A(n19), .Y(n46) );
  INVX1 U56 ( .A(clear), .Y(n45) );
  INVX1 U57 ( .A(N33), .Y(n42) );
  OAI21X1 U58 ( .A(n47), .B(n48), .C(n49), .Y(n84) );
  NAND2X1 U59 ( .A(rollover_flag), .B(n19), .Y(n49) );
  NOR2X1 U60 ( .A(clear), .B(count_enable), .Y(n19) );
  OR2X1 U61 ( .A(n44), .B(clear), .Y(n48) );
  NAND2X1 U62 ( .A(n51), .B(n52), .Y(n44) );
  NOR2X1 U63 ( .A(n53), .B(n54), .Y(n52) );
  NAND3X1 U64 ( .A(n55), .B(n56), .C(n57), .Y(n54) );
  XNOR2X1 U65 ( .A(N33), .B(rollover_val[12]), .Y(n57) );
  XNOR2X1 U66 ( .A(N21), .B(rollover_val[0]), .Y(n56) );
  XNOR2X1 U67 ( .A(N32), .B(rollover_val[11]), .Y(n55) );
  NAND3X1 U68 ( .A(n58), .B(n59), .C(n60), .Y(n53) );
  NOR2X1 U69 ( .A(n61), .B(n62), .Y(n60) );
  XNOR2X1 U70 ( .A(rollover_val[8]), .B(n34), .Y(n62) );
  INVX1 U71 ( .A(N29), .Y(n34) );
  XNOR2X1 U72 ( .A(rollover_val[7]), .B(n32), .Y(n61) );
  INVX1 U73 ( .A(N28), .Y(n32) );
  XNOR2X1 U74 ( .A(N30), .B(rollover_val[9]), .Y(n59) );
  XNOR2X1 U75 ( .A(N31), .B(rollover_val[10]), .Y(n58) );
  NOR2X1 U76 ( .A(n63), .B(n64), .Y(n51) );
  NAND3X1 U77 ( .A(n65), .B(n66), .C(n67), .Y(n64) );
  XNOR2X1 U78 ( .A(N26), .B(rollover_val[5]), .Y(n67) );
  XNOR2X1 U79 ( .A(N27), .B(rollover_val[6]), .Y(n66) );
  XNOR2X1 U80 ( .A(N25), .B(rollover_val[4]), .Y(n65) );
  NAND3X1 U81 ( .A(n68), .B(n69), .C(n70), .Y(n63) );
  XNOR2X1 U82 ( .A(N23), .B(rollover_val[2]), .Y(n70) );
  XNOR2X1 U83 ( .A(N24), .B(rollover_val[3]), .Y(n69) );
  XNOR2X1 U84 ( .A(N22), .B(rollover_val[1]), .Y(n68) );
  INVX1 U85 ( .A(count_enable), .Y(n47) );
endmodule


module sram_address_calc_DW01_add_0 ( A, B, CI, SUM, CO );
  input [25:0] A;
  input [25:0] B;
  output [25:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13;
  wire   [25:1] carry;

  FAX1 U1_12 ( .A(A[12]), .B(B[12]), .C(carry[12]), .YC(carry[13]), .YS(
        SUM[12]) );
  FAX1 U1_11 ( .A(A[11]), .B(B[11]), .C(carry[11]), .YC(carry[12]), .YS(
        SUM[11]) );
  FAX1 U1_10 ( .A(A[10]), .B(B[10]), .C(carry[10]), .YC(carry[11]), .YS(
        SUM[10]) );
  FAX1 U1_9 ( .A(A[9]), .B(B[9]), .C(carry[9]), .YC(carry[10]), .YS(SUM[9]) );
  FAX1 U1_8 ( .A(A[8]), .B(B[8]), .C(carry[8]), .YC(carry[9]), .YS(SUM[8]) );
  FAX1 U1_7 ( .A(A[7]), .B(B[7]), .C(carry[7]), .YC(carry[8]), .YS(SUM[7]) );
  FAX1 U1_6 ( .A(A[6]), .B(B[6]), .C(carry[6]), .YC(carry[7]), .YS(SUM[6]) );
  FAX1 U1_5 ( .A(A[5]), .B(B[5]), .C(carry[5]), .YC(carry[6]), .YS(SUM[5]) );
  FAX1 U1_4 ( .A(A[4]), .B(B[4]), .C(carry[4]), .YC(carry[5]), .YS(SUM[4]) );
  FAX1 U1_3 ( .A(A[3]), .B(B[3]), .C(carry[3]), .YC(carry[4]), .YS(SUM[3]) );
  FAX1 U1_2 ( .A(A[2]), .B(B[2]), .C(carry[2]), .YC(carry[3]), .YS(SUM[2]) );
  FAX1 U1_1 ( .A(A[1]), .B(B[1]), .C(n6), .YC(carry[2]), .YS(SUM[1]) );
  AND2X2 U1 ( .A(n8), .B(B[23]), .Y(n1) );
  AND2X2 U2 ( .A(n9), .B(B[21]), .Y(n2) );
  AND2X2 U3 ( .A(n10), .B(B[19]), .Y(n3) );
  AND2X2 U4 ( .A(n11), .B(B[17]), .Y(n4) );
  AND2X2 U5 ( .A(n12), .B(B[15]), .Y(n5) );
  AND2X2 U6 ( .A(B[0]), .B(A[0]), .Y(n6) );
  AND2X2 U7 ( .A(carry[13]), .B(B[13]), .Y(n7) );
  AND2X2 U8 ( .A(n2), .B(B[22]), .Y(n8) );
  AND2X2 U9 ( .A(n3), .B(B[20]), .Y(n9) );
  AND2X2 U10 ( .A(n4), .B(B[18]), .Y(n10) );
  AND2X2 U11 ( .A(n5), .B(B[16]), .Y(n11) );
  AND2X2 U12 ( .A(n7), .B(B[14]), .Y(n12) );
  AND2X2 U13 ( .A(n1), .B(B[24]), .Y(n13) );
  XOR2X1 U14 ( .A(B[25]), .B(n13), .Y(SUM[25]) );
  XOR2X1 U15 ( .A(n1), .B(B[24]), .Y(SUM[24]) );
  XOR2X1 U16 ( .A(n8), .B(B[23]), .Y(SUM[23]) );
  XOR2X1 U17 ( .A(n2), .B(B[22]), .Y(SUM[22]) );
  XOR2X1 U18 ( .A(n9), .B(B[21]), .Y(SUM[21]) );
  XOR2X1 U19 ( .A(n3), .B(B[20]), .Y(SUM[20]) );
  XOR2X1 U20 ( .A(n10), .B(B[19]), .Y(SUM[19]) );
  XOR2X1 U21 ( .A(n4), .B(B[18]), .Y(SUM[18]) );
  XOR2X1 U22 ( .A(n11), .B(B[17]), .Y(SUM[17]) );
  XOR2X1 U23 ( .A(n5), .B(B[16]), .Y(SUM[16]) );
  XOR2X1 U24 ( .A(n12), .B(B[15]), .Y(SUM[15]) );
  XOR2X1 U25 ( .A(n7), .B(B[14]), .Y(SUM[14]) );
  XOR2X1 U26 ( .A(carry[13]), .B(B[13]), .Y(SUM[13]) );
  XOR2X1 U27 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module sram_address_calc_DW01_dec_0 ( A, SUM );
  input [12:0] A;
  output [12:0] SUM;
  wire   n1, n3, n5, n7, n9, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21,
         n22, n23, n24, n25, n26, n27;

  INVX2 U1 ( .A(A[10]), .Y(n1) );
  INVX2 U2 ( .A(n12), .Y(SUM[9]) );
  INVX2 U3 ( .A(A[8]), .Y(n3) );
  INVX2 U4 ( .A(n16), .Y(SUM[7]) );
  INVX2 U5 ( .A(A[6]), .Y(n5) );
  INVX2 U6 ( .A(n19), .Y(SUM[5]) );
  INVX2 U7 ( .A(A[4]), .Y(n7) );
  INVX2 U8 ( .A(n22), .Y(SUM[3]) );
  INVX2 U9 ( .A(A[2]), .Y(n9) );
  INVX2 U10 ( .A(n25), .Y(SUM[1]) );
  INVX2 U11 ( .A(A[0]), .Y(SUM[0]) );
  AOI21X1 U12 ( .A(n13), .B(A[9]), .C(n14), .Y(n12) );
  OAI21X1 U13 ( .A(n15), .B(n3), .C(n13), .Y(SUM[8]) );
  AOI21X1 U14 ( .A(n17), .B(A[7]), .C(n15), .Y(n16) );
  OAI21X1 U15 ( .A(n18), .B(n5), .C(n17), .Y(SUM[6]) );
  AOI21X1 U16 ( .A(n20), .B(A[5]), .C(n18), .Y(n19) );
  OAI21X1 U17 ( .A(n21), .B(n7), .C(n20), .Y(SUM[4]) );
  AOI21X1 U18 ( .A(n23), .B(A[3]), .C(n21), .Y(n22) );
  OAI21X1 U19 ( .A(n24), .B(n9), .C(n23), .Y(SUM[2]) );
  AOI21X1 U20 ( .A(A[0]), .B(A[1]), .C(n24), .Y(n25) );
  XOR2X1 U21 ( .A(A[12]), .B(n26), .Y(SUM[12]) );
  NOR2X1 U22 ( .A(A[11]), .B(n27), .Y(n26) );
  XNOR2X1 U23 ( .A(A[11]), .B(n27), .Y(SUM[11]) );
  OAI21X1 U24 ( .A(n14), .B(n1), .C(n27), .Y(SUM[10]) );
  NAND2X1 U25 ( .A(n14), .B(n1), .Y(n27) );
  NOR2X1 U26 ( .A(n13), .B(A[9]), .Y(n14) );
  NAND2X1 U27 ( .A(n15), .B(n3), .Y(n13) );
  NOR2X1 U28 ( .A(n17), .B(A[7]), .Y(n15) );
  NAND2X1 U29 ( .A(n18), .B(n5), .Y(n17) );
  NOR2X1 U30 ( .A(n20), .B(A[5]), .Y(n18) );
  NAND2X1 U31 ( .A(n21), .B(n7), .Y(n20) );
  NOR2X1 U32 ( .A(n23), .B(A[3]), .Y(n21) );
  NAND2X1 U33 ( .A(n24), .B(n9), .Y(n23) );
  NOR2X1 U34 ( .A(A[1]), .B(A[0]), .Y(n24) );
endmodule


module sram_address_calc ( clk, n_rst, clear, mode, enable, image_width, 
        sram_rowCacheStart, sram_outputAddrStart, sram_addr );
  input [12:0] image_width;
  input [25:0] sram_rowCacheStart;
  input [25:0] sram_outputAddrStart;
  output [25:0] sram_addr;
  input clk, n_rst, clear, mode, enable;
  wire   _0_net_, _1_net_, \_2_net_[12] , \_2_net_[11] , \_2_net_[10] ,
         \_2_net_[9] , \_2_net_[8] , \_2_net_[7] , \_2_net_[6] , \_2_net_[5] ,
         \_2_net_[4] , \_2_net_[3] , \_2_net_[2] , \_2_net_[1] , \_2_net_[0] ,
         n125, n126, n127, n128, n129, n130, n131, n132, n133, n134, n135,
         n136, n137, n138, n139, n140, n141, n142, n143, n144, n145, n146,
         n147, n148, n149, n150, n151, n152, n153, n154, n155, n156, n157,
         n158, n159, n160, n161, n162, n163, n164, n165, n166, n167, n168,
         n169, n170, n171, n172, n173, n174, n175, n176, n177, n178, n179,
         n180, n181, n182, n183, n184, n185, n186, n187, n188, n189, n190,
         n191, n192, n193, n194, n195, n196, n197, n198, n199, n200, n201,
         n202, n203;
  wire   [12:0] rowCacheNum;
  wire   [12:0] outputAddrNum;

  flex_counter_NUM_CNT_BITS13_1 rowCache ( .clk(clk), .n_rst(n_rst), .clear(
        clear), .count_enable(_0_net_), .rollover_val(image_width), 
        .count_out(rowCacheNum) );
  flex_counter_NUM_CNT_BITS13_0 outputAddr ( .clk(clk), .n_rst(n_rst), .clear(
        clear), .count_enable(_1_net_), .rollover_val({\_2_net_[12] , 
        \_2_net_[11] , \_2_net_[10] , \_2_net_[9] , \_2_net_[8] , \_2_net_[7] , 
        \_2_net_[6] , \_2_net_[5] , \_2_net_[4] , \_2_net_[3] , \_2_net_[2] , 
        \_2_net_[1] , \_2_net_[0] }), .count_out(outputAddrNum) );
  sram_address_calc_DW01_add_0 r307 ( .A({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, n177, n166, n167, n168, n169, 
        n170, n171, n172, n173, n174, n175, n176, n165}), .B({n196, n195, n194, 
        n193, n192, n191, n189, n188, n187, n186, n185, n184, n183, n182, n181, 
        n180, n203, n202, n201, n200, n199, n198, n197, n190, n179, n178}), 
        .CI(1'b0), .SUM(sram_addr) );
  sram_address_calc_DW01_dec_0 sub_44 ( .A(image_width), .SUM({\_2_net_[12] , 
        \_2_net_[11] , \_2_net_[10] , \_2_net_[9] , \_2_net_[8] , \_2_net_[7] , 
        \_2_net_[6] , \_2_net_[5] , \_2_net_[4] , \_2_net_[3] , \_2_net_[2] , 
        \_2_net_[1] , \_2_net_[0] }) );
  INVX1 U86 ( .A(n125), .Y(n165) );
  MUX2X1 U87 ( .B(outputAddrNum[0]), .A(rowCacheNum[0]), .S(mode), .Y(n125) );
  INVX1 U88 ( .A(n126), .Y(n166) );
  MUX2X1 U89 ( .B(outputAddrNum[11]), .A(rowCacheNum[11]), .S(mode), .Y(n126)
         );
  INVX1 U90 ( .A(n127), .Y(n167) );
  MUX2X1 U91 ( .B(outputAddrNum[10]), .A(rowCacheNum[10]), .S(mode), .Y(n127)
         );
  INVX1 U92 ( .A(n128), .Y(n168) );
  MUX2X1 U93 ( .B(outputAddrNum[9]), .A(rowCacheNum[9]), .S(mode), .Y(n128) );
  INVX1 U94 ( .A(n129), .Y(n169) );
  MUX2X1 U95 ( .B(outputAddrNum[8]), .A(rowCacheNum[8]), .S(mode), .Y(n129) );
  INVX1 U96 ( .A(n130), .Y(n170) );
  MUX2X1 U97 ( .B(outputAddrNum[7]), .A(rowCacheNum[7]), .S(mode), .Y(n130) );
  INVX1 U98 ( .A(n131), .Y(n171) );
  MUX2X1 U99 ( .B(outputAddrNum[6]), .A(rowCacheNum[6]), .S(mode), .Y(n131) );
  INVX1 U100 ( .A(n132), .Y(n172) );
  MUX2X1 U101 ( .B(outputAddrNum[5]), .A(rowCacheNum[5]), .S(mode), .Y(n132)
         );
  INVX1 U102 ( .A(n133), .Y(n173) );
  MUX2X1 U103 ( .B(outputAddrNum[4]), .A(rowCacheNum[4]), .S(mode), .Y(n133)
         );
  INVX1 U104 ( .A(n134), .Y(n174) );
  MUX2X1 U105 ( .B(outputAddrNum[3]), .A(rowCacheNum[3]), .S(mode), .Y(n134)
         );
  INVX1 U106 ( .A(n135), .Y(n175) );
  MUX2X1 U107 ( .B(outputAddrNum[2]), .A(rowCacheNum[2]), .S(mode), .Y(n135)
         );
  INVX1 U108 ( .A(n136), .Y(n176) );
  MUX2X1 U109 ( .B(outputAddrNum[1]), .A(rowCacheNum[1]), .S(mode), .Y(n136)
         );
  INVX1 U110 ( .A(n137), .Y(n177) );
  MUX2X1 U111 ( .B(outputAddrNum[12]), .A(rowCacheNum[12]), .S(mode), .Y(n137)
         );
  INVX1 U112 ( .A(n138), .Y(n178) );
  MUX2X1 U113 ( .B(sram_outputAddrStart[0]), .A(sram_rowCacheStart[0]), .S(
        mode), .Y(n138) );
  INVX1 U114 ( .A(n139), .Y(n179) );
  MUX2X1 U115 ( .B(sram_outputAddrStart[1]), .A(sram_rowCacheStart[1]), .S(
        mode), .Y(n139) );
  INVX1 U116 ( .A(n140), .Y(n180) );
  MUX2X1 U117 ( .B(sram_outputAddrStart[10]), .A(sram_rowCacheStart[10]), .S(
        mode), .Y(n140) );
  INVX1 U118 ( .A(n141), .Y(n181) );
  MUX2X1 U119 ( .B(sram_outputAddrStart[11]), .A(sram_rowCacheStart[11]), .S(
        mode), .Y(n141) );
  INVX1 U120 ( .A(n142), .Y(n182) );
  MUX2X1 U121 ( .B(sram_outputAddrStart[12]), .A(sram_rowCacheStart[12]), .S(
        mode), .Y(n142) );
  INVX1 U122 ( .A(n143), .Y(n183) );
  MUX2X1 U123 ( .B(sram_outputAddrStart[13]), .A(sram_rowCacheStart[13]), .S(
        mode), .Y(n143) );
  INVX1 U124 ( .A(n144), .Y(n184) );
  MUX2X1 U125 ( .B(sram_outputAddrStart[14]), .A(sram_rowCacheStart[14]), .S(
        mode), .Y(n144) );
  INVX1 U126 ( .A(n145), .Y(n185) );
  MUX2X1 U127 ( .B(sram_outputAddrStart[15]), .A(sram_rowCacheStart[15]), .S(
        mode), .Y(n145) );
  INVX1 U128 ( .A(n146), .Y(n186) );
  MUX2X1 U129 ( .B(sram_outputAddrStart[16]), .A(sram_rowCacheStart[16]), .S(
        mode), .Y(n146) );
  INVX1 U130 ( .A(n147), .Y(n187) );
  MUX2X1 U131 ( .B(sram_outputAddrStart[17]), .A(sram_rowCacheStart[17]), .S(
        mode), .Y(n147) );
  INVX1 U132 ( .A(n148), .Y(n188) );
  MUX2X1 U133 ( .B(sram_outputAddrStart[18]), .A(sram_rowCacheStart[18]), .S(
        mode), .Y(n148) );
  INVX1 U134 ( .A(n149), .Y(n189) );
  MUX2X1 U135 ( .B(sram_outputAddrStart[19]), .A(sram_rowCacheStart[19]), .S(
        mode), .Y(n149) );
  INVX1 U136 ( .A(n150), .Y(n190) );
  MUX2X1 U137 ( .B(sram_outputAddrStart[2]), .A(sram_rowCacheStart[2]), .S(
        mode), .Y(n150) );
  INVX1 U138 ( .A(n151), .Y(n191) );
  MUX2X1 U139 ( .B(sram_outputAddrStart[20]), .A(sram_rowCacheStart[20]), .S(
        mode), .Y(n151) );
  INVX1 U140 ( .A(n152), .Y(n192) );
  MUX2X1 U141 ( .B(sram_outputAddrStart[21]), .A(sram_rowCacheStart[21]), .S(
        mode), .Y(n152) );
  INVX1 U142 ( .A(n153), .Y(n193) );
  MUX2X1 U143 ( .B(sram_outputAddrStart[22]), .A(sram_rowCacheStart[22]), .S(
        mode), .Y(n153) );
  INVX1 U144 ( .A(n154), .Y(n194) );
  MUX2X1 U145 ( .B(sram_outputAddrStart[23]), .A(sram_rowCacheStart[23]), .S(
        mode), .Y(n154) );
  INVX1 U146 ( .A(n155), .Y(n195) );
  MUX2X1 U147 ( .B(sram_outputAddrStart[24]), .A(sram_rowCacheStart[24]), .S(
        mode), .Y(n155) );
  INVX1 U148 ( .A(n156), .Y(n196) );
  MUX2X1 U149 ( .B(sram_outputAddrStart[25]), .A(sram_rowCacheStart[25]), .S(
        mode), .Y(n156) );
  INVX1 U150 ( .A(n157), .Y(n197) );
  MUX2X1 U151 ( .B(sram_outputAddrStart[3]), .A(sram_rowCacheStart[3]), .S(
        mode), .Y(n157) );
  INVX1 U152 ( .A(n158), .Y(n198) );
  MUX2X1 U153 ( .B(sram_outputAddrStart[4]), .A(sram_rowCacheStart[4]), .S(
        mode), .Y(n158) );
  INVX1 U154 ( .A(n159), .Y(n199) );
  MUX2X1 U155 ( .B(sram_outputAddrStart[5]), .A(sram_rowCacheStart[5]), .S(
        mode), .Y(n159) );
  INVX1 U156 ( .A(n160), .Y(n200) );
  MUX2X1 U157 ( .B(sram_outputAddrStart[6]), .A(sram_rowCacheStart[6]), .S(
        mode), .Y(n160) );
  INVX1 U158 ( .A(n161), .Y(n201) );
  MUX2X1 U159 ( .B(sram_outputAddrStart[7]), .A(sram_rowCacheStart[7]), .S(
        mode), .Y(n161) );
  INVX1 U160 ( .A(n162), .Y(n202) );
  MUX2X1 U161 ( .B(sram_outputAddrStart[8]), .A(sram_rowCacheStart[8]), .S(
        mode), .Y(n162) );
  INVX1 U162 ( .A(n163), .Y(n203) );
  MUX2X1 U163 ( .B(sram_outputAddrStart[9]), .A(sram_rowCacheStart[9]), .S(
        mode), .Y(n163) );
  NOR2X1 U164 ( .A(mode), .B(n164), .Y(_1_net_) );
  INVX1 U165 ( .A(enable), .Y(n164) );
  AND2X1 U166 ( .A(mode), .B(enable), .Y(_0_net_) );
endmodule

