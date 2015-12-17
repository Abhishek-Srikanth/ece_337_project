/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06-SP1
// Date      : Wed Dec 16 22:31:22 2015
/////////////////////////////////////////////////////////////


module risingEdgeDetector ( clk, startData, start_flag );
  input clk, startData;
  output start_flag;
  wire   n3, v2, v1, n2;

  DFFPOSX1 v1_reg ( .D(startData), .CLK(clk), .Q(v1) );
  DFFPOSX1 v2_reg ( .D(v1), .CLK(clk), .Q(v2) );
  BUFX2 U3 ( .A(n3), .Y(start_flag) );
  NOR2X1 U4 ( .A(v2), .B(n2), .Y(n3) );
  INVX1 U5 ( .A(v1), .Y(n2) );
endmodule


module delaySingleClock ( clk, n_rst, in, out );
  input [31:0] in;
  output [31:0] out;
  input clk, n_rst;


  DFFSR \out_reg[31]  ( .D(in[31]), .CLK(clk), .R(n_rst), .S(1'b1), .Q(out[31]) );
  DFFSR \out_reg[30]  ( .D(in[30]), .CLK(clk), .R(n_rst), .S(1'b1), .Q(out[30]) );
  DFFSR \out_reg[29]  ( .D(in[29]), .CLK(clk), .R(n_rst), .S(1'b1), .Q(out[29]) );
  DFFSR \out_reg[28]  ( .D(in[28]), .CLK(clk), .R(n_rst), .S(1'b1), .Q(out[28]) );
  DFFSR \out_reg[27]  ( .D(in[27]), .CLK(clk), .R(n_rst), .S(1'b1), .Q(out[27]) );
  DFFSR \out_reg[26]  ( .D(in[26]), .CLK(clk), .R(n_rst), .S(1'b1), .Q(out[26]) );
  DFFSR \out_reg[25]  ( .D(in[25]), .CLK(clk), .R(n_rst), .S(1'b1), .Q(out[25]) );
  DFFSR \out_reg[24]  ( .D(in[24]), .CLK(clk), .R(n_rst), .S(1'b1), .Q(out[24]) );
  DFFSR \out_reg[23]  ( .D(in[23]), .CLK(clk), .R(n_rst), .S(1'b1), .Q(out[23]) );
  DFFSR \out_reg[22]  ( .D(in[22]), .CLK(clk), .R(n_rst), .S(1'b1), .Q(out[22]) );
  DFFSR \out_reg[21]  ( .D(in[21]), .CLK(clk), .R(n_rst), .S(1'b1), .Q(out[21]) );
  DFFSR \out_reg[20]  ( .D(in[20]), .CLK(clk), .R(n_rst), .S(1'b1), .Q(out[20]) );
  DFFSR \out_reg[19]  ( .D(in[19]), .CLK(clk), .R(n_rst), .S(1'b1), .Q(out[19]) );
  DFFSR \out_reg[18]  ( .D(in[18]), .CLK(clk), .R(n_rst), .S(1'b1), .Q(out[18]) );
  DFFSR \out_reg[17]  ( .D(in[17]), .CLK(clk), .R(n_rst), .S(1'b1), .Q(out[17]) );
  DFFSR \out_reg[16]  ( .D(in[16]), .CLK(clk), .R(n_rst), .S(1'b1), .Q(out[16]) );
  DFFSR \out_reg[15]  ( .D(in[15]), .CLK(clk), .R(n_rst), .S(1'b1), .Q(out[15]) );
  DFFSR \out_reg[14]  ( .D(in[14]), .CLK(clk), .R(n_rst), .S(1'b1), .Q(out[14]) );
  DFFSR \out_reg[13]  ( .D(in[13]), .CLK(clk), .R(n_rst), .S(1'b1), .Q(out[13]) );
  DFFSR \out_reg[12]  ( .D(in[12]), .CLK(clk), .R(n_rst), .S(1'b1), .Q(out[12]) );
  DFFSR \out_reg[11]  ( .D(in[11]), .CLK(clk), .R(n_rst), .S(1'b1), .Q(out[11]) );
  DFFSR \out_reg[10]  ( .D(in[10]), .CLK(clk), .R(n_rst), .S(1'b1), .Q(out[10]) );
  DFFSR \out_reg[9]  ( .D(in[9]), .CLK(clk), .R(n_rst), .S(1'b1), .Q(out[9])
         );
  DFFSR \out_reg[8]  ( .D(in[8]), .CLK(clk), .R(n_rst), .S(1'b1), .Q(out[8])
         );
  DFFSR \out_reg[7]  ( .D(in[7]), .CLK(clk), .R(n_rst), .S(1'b1), .Q(out[7])
         );
  DFFSR \out_reg[6]  ( .D(in[6]), .CLK(clk), .R(n_rst), .S(1'b1), .Q(out[6])
         );
  DFFSR \out_reg[5]  ( .D(in[5]), .CLK(clk), .R(n_rst), .S(1'b1), .Q(out[5])
         );
  DFFSR \out_reg[4]  ( .D(in[4]), .CLK(clk), .R(n_rst), .S(1'b1), .Q(out[4])
         );
  DFFSR \out_reg[3]  ( .D(in[3]), .CLK(clk), .R(n_rst), .S(1'b1), .Q(out[3])
         );
  DFFSR \out_reg[2]  ( .D(in[2]), .CLK(clk), .R(n_rst), .S(1'b1), .Q(out[2])
         );
  DFFSR \out_reg[1]  ( .D(in[1]), .CLK(clk), .R(n_rst), .S(1'b1), .Q(out[1])
         );
  DFFSR \out_reg[0]  ( .D(in[0]), .CLK(clk), .R(n_rst), .S(1'b1), .Q(out[0])
         );
endmodule


module flex_counter_NUM_CNT_BITS13_4_DW01_inc_0 ( A, SUM );
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


module flex_counter_NUM_CNT_BITS13_4 ( clk, n_rst, clear, count_enable, 
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
  flex_counter_NUM_CNT_BITS13_4_DW01_inc_0 add_56 ( .A(count_out), .SUM({N33, 
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


module i_wr_counter_DW01_dec_0 ( A, SUM );
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


module i_wr_counter ( clk, clear, rollover_val, count_enable, rollover_flag, 
        value );
  input [12:0] rollover_val;
  output [12:0] value;
  input clk, clear, count_enable;
  output rollover_flag;
  wire   \_0_net_[12] , \_0_net_[11] , \_0_net_[10] , \_0_net_[9] ,
         \_0_net_[8] , \_0_net_[7] , \_0_net_[6] , \_0_net_[5] , \_0_net_[4] ,
         \_0_net_[3] , \_0_net_[2] , \_0_net_[1] , \_0_net_[0] ;

  flex_counter_NUM_CNT_BITS13_4 iWrCounter ( .clk(clk), .n_rst(1'b0), .clear(
        clear), .count_enable(count_enable), .rollover_val({\_0_net_[12] , 
        \_0_net_[11] , \_0_net_[10] , \_0_net_[9] , \_0_net_[8] , \_0_net_[7] , 
        \_0_net_[6] , \_0_net_[5] , \_0_net_[4] , \_0_net_[3] , \_0_net_[2] , 
        \_0_net_[1] , \_0_net_[0] }), .count_out(value), .rollover_flag(
        rollover_flag) );
  i_wr_counter_DW01_dec_0 sub_21 ( .A(rollover_val), .SUM({\_0_net_[12] , 
        \_0_net_[11] , \_0_net_[10] , \_0_net_[9] , \_0_net_[8] , \_0_net_[7] , 
        \_0_net_[6] , \_0_net_[5] , \_0_net_[4] , \_0_net_[3] , \_0_net_[2] , 
        \_0_net_[1] , \_0_net_[0] }) );
endmodule


module flex_counter_NUM_CNT_BITS13_3_DW01_inc_0 ( A, SUM );
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


module flex_counter_NUM_CNT_BITS13_3 ( clk, n_rst, clear, count_enable, 
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
  flex_counter_NUM_CNT_BITS13_3_DW01_inc_0 add_56 ( .A(count_out), .SUM({N33, 
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


module i_col_counter ( clk, clear, rollover_val, count_enable, rollover_flag, 
        value );
  input [12:0] rollover_val;
  output [12:0] value;
  input clk, clear, count_enable;
  output rollover_flag;


  flex_counter_NUM_CNT_BITS13_3 colCounter ( .clk(clk), .n_rst(1'b0), .clear(
        clear), .count_enable(count_enable), .rollover_val(rollover_val), 
        .count_out(value), .rollover_flag(rollover_flag) );
endmodule


module flex_counter_NUM_CNT_BITS13_2_DW01_inc_0 ( A, SUM );
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


module flex_counter_NUM_CNT_BITS13_2 ( clk, n_rst, clear, count_enable, 
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
  flex_counter_NUM_CNT_BITS13_2_DW01_inc_0 add_56 ( .A(count_out), .SUM({N33, 
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


module j_row_counter_DW01_dec_0 ( A, SUM );
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


module j_row_counter ( clk, clear, rollover_val, count_enable, rollover_flag, 
        value );
  input [12:0] rollover_val;
  output [12:0] value;
  input clk, clear, count_enable;
  output rollover_flag;
  wire   \_0_net_[12] , \_0_net_[11] , \_0_net_[10] , \_0_net_[9] ,
         \_0_net_[8] , \_0_net_[7] , \_0_net_[6] , \_0_net_[5] , \_0_net_[4] ,
         \_0_net_[3] , \_0_net_[2] , \_0_net_[1] , \_0_net_[0] ;

  flex_counter_NUM_CNT_BITS13_2 rowCounter ( .clk(clk), .n_rst(1'b0), .clear(
        clear), .count_enable(count_enable), .rollover_val({\_0_net_[12] , 
        \_0_net_[11] , \_0_net_[10] , \_0_net_[9] , \_0_net_[8] , \_0_net_[7] , 
        \_0_net_[6] , \_0_net_[5] , \_0_net_[4] , \_0_net_[3] , \_0_net_[2] , 
        \_0_net_[1] , \_0_net_[0] }), .count_out(value), .rollover_flag(
        rollover_flag) );
  j_row_counter_DW01_dec_0 sub_21 ( .A(rollover_val), .SUM({\_0_net_[12] , 
        \_0_net_[11] , \_0_net_[10] , \_0_net_[9] , \_0_net_[8] , \_0_net_[7] , 
        \_0_net_[6] , \_0_net_[5] , \_0_net_[4] , \_0_net_[3] , \_0_net_[2] , 
        \_0_net_[1] , \_0_net_[0] }) );
endmodule


module sdram_address_calc_DW01_inc_0 ( A, SUM );
  input [25:0] A;
  output [25:0] SUM;

  wire   [25:2] carry;

  HAX1 U1_1_24 ( .A(A[24]), .B(carry[24]), .YC(carry[25]), .YS(SUM[24]) );
  HAX1 U1_1_23 ( .A(A[23]), .B(carry[23]), .YC(carry[24]), .YS(SUM[23]) );
  HAX1 U1_1_22 ( .A(A[22]), .B(carry[22]), .YC(carry[23]), .YS(SUM[22]) );
  HAX1 U1_1_21 ( .A(A[21]), .B(carry[21]), .YC(carry[22]), .YS(SUM[21]) );
  HAX1 U1_1_20 ( .A(A[20]), .B(carry[20]), .YC(carry[21]), .YS(SUM[20]) );
  HAX1 U1_1_19 ( .A(A[19]), .B(carry[19]), .YC(carry[20]), .YS(SUM[19]) );
  HAX1 U1_1_18 ( .A(A[18]), .B(carry[18]), .YC(carry[19]), .YS(SUM[18]) );
  HAX1 U1_1_17 ( .A(A[17]), .B(carry[17]), .YC(carry[18]), .YS(SUM[17]) );
  HAX1 U1_1_16 ( .A(A[16]), .B(carry[16]), .YC(carry[17]), .YS(SUM[16]) );
  HAX1 U1_1_15 ( .A(A[15]), .B(carry[15]), .YC(carry[16]), .YS(SUM[15]) );
  HAX1 U1_1_14 ( .A(A[14]), .B(carry[14]), .YC(carry[15]), .YS(SUM[14]) );
  HAX1 U1_1_13 ( .A(A[13]), .B(carry[13]), .YC(carry[14]), .YS(SUM[13]) );
  HAX1 U1_1_12 ( .A(A[12]), .B(carry[12]), .YC(carry[13]), .YS(SUM[12]) );
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
  XOR2X1 U2 ( .A(carry[25]), .B(A[25]), .Y(SUM[25]) );
endmodule


module sdram_address_calc ( clk, n_rst, mode, enable, load, start_address, 
        finish_address, sdram_address );
  input [25:0] start_address;
  input [25:0] finish_address;
  output [25:0] sdram_address;
  input clk, n_rst, mode, enable, load;
  wire   N85, N86, N87, N88, N89, N90, N91, N92, N93, N94, N95, N96, N97, N98,
         N99, N100, N101, N102, N103, N104, N105, N106, N107, N108, N109, N110,
         n294, n297, n300, n303, n306, n309, n312, n315, n318, n321, n324,
         n327, n330, n333, n336, n339, n342, n345, n348, n351, n354, n357,
         n360, n363, n366, n369, n372, n375, n378, n381, n384, n387, n390,
         n393, n396, n399, n402, n405, n408, n411, n414, n417, n420, n423,
         n426, n429, n432, n435, n438, n441, n444, n447, n1, n2, n3, n4, n5,
         n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62,
         n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76,
         n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90,
         n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103,
         n104, n105, n106, n107, n108, n109, n110, n111, n112, n113, n114,
         n115, n116, n117, n118, n119, n120, n121, n122, n123, n124, n125,
         n126, n127, n128, n129, n130, n131, n132, n133, n134, n135, n136,
         n137, n138, n139, n140, n141, n142, n143, n144, n145, n146, n147,
         n148, n149, n150, n151, n152, n153, n154, n155, n156, n157, n158,
         n159, n160, n161, n162, n163, n164, n165, n166, n167, n168, n169,
         n170, n171, n172, n173, n174, n175, n176, n177, n178, n179, n180,
         n181, n182, n183, n184, n185, n186, n187, n188, n189, n190, n191,
         n192, n193, n194, n195, n196, n197, n198, n199, n200, n201, n202,
         n203, n204, n205, n206, n207, n208, n209, n210, n211, n212, n213,
         n214, n215, n216, n217, n218, n219, n220, n221, n222, n223, n224,
         n225, n226, n227, n228, n229, n230, n231, n232, n233, n234, n235,
         n236, n237, n238, n239, n240, n241, n242, n243, n244, n245;
  wire   [25:0] start_address_reg;
  wire   [25:0] finish_address_reg;

  DFFSR \start_address_reg_reg[0]  ( .D(n447), .CLK(clk), .R(n245), .S(n244), 
        .Q(start_address_reg[0]) );
  DFFSR \finish_address_reg_reg[0]  ( .D(n369), .CLK(clk), .R(n193), .S(n192), 
        .Q(finish_address_reg[0]) );
  DFFSR \start_address_reg_reg[1]  ( .D(n444), .CLK(clk), .R(n243), .S(n242), 
        .Q(start_address_reg[1]) );
  DFFSR \finish_address_reg_reg[1]  ( .D(n366), .CLK(clk), .R(n191), .S(n190), 
        .Q(finish_address_reg[1]) );
  DFFSR \start_address_reg_reg[2]  ( .D(n441), .CLK(clk), .R(n241), .S(n240), 
        .Q(start_address_reg[2]) );
  DFFSR \finish_address_reg_reg[2]  ( .D(n363), .CLK(clk), .R(n189), .S(n188), 
        .Q(finish_address_reg[2]) );
  DFFSR \start_address_reg_reg[3]  ( .D(n438), .CLK(clk), .R(n239), .S(n238), 
        .Q(start_address_reg[3]) );
  DFFSR \finish_address_reg_reg[3]  ( .D(n360), .CLK(clk), .R(n187), .S(n186), 
        .Q(finish_address_reg[3]) );
  DFFSR \start_address_reg_reg[4]  ( .D(n435), .CLK(clk), .R(n237), .S(n236), 
        .Q(start_address_reg[4]) );
  DFFSR \finish_address_reg_reg[4]  ( .D(n357), .CLK(clk), .R(n185), .S(n184), 
        .Q(finish_address_reg[4]) );
  DFFSR \start_address_reg_reg[5]  ( .D(n432), .CLK(clk), .R(n235), .S(n234), 
        .Q(start_address_reg[5]) );
  DFFSR \finish_address_reg_reg[5]  ( .D(n354), .CLK(clk), .R(n183), .S(n182), 
        .Q(finish_address_reg[5]) );
  DFFSR \start_address_reg_reg[6]  ( .D(n429), .CLK(clk), .R(n233), .S(n232), 
        .Q(start_address_reg[6]) );
  DFFSR \finish_address_reg_reg[6]  ( .D(n351), .CLK(clk), .R(n181), .S(n180), 
        .Q(finish_address_reg[6]) );
  DFFSR \start_address_reg_reg[7]  ( .D(n426), .CLK(clk), .R(n231), .S(n230), 
        .Q(start_address_reg[7]) );
  DFFSR \finish_address_reg_reg[7]  ( .D(n348), .CLK(clk), .R(n179), .S(n178), 
        .Q(finish_address_reg[7]) );
  DFFSR \start_address_reg_reg[8]  ( .D(n423), .CLK(clk), .R(n229), .S(n228), 
        .Q(start_address_reg[8]) );
  DFFSR \finish_address_reg_reg[8]  ( .D(n345), .CLK(clk), .R(n177), .S(n176), 
        .Q(finish_address_reg[8]) );
  DFFSR \start_address_reg_reg[9]  ( .D(n420), .CLK(clk), .R(n227), .S(n226), 
        .Q(start_address_reg[9]) );
  DFFSR \finish_address_reg_reg[9]  ( .D(n342), .CLK(clk), .R(n175), .S(n174), 
        .Q(finish_address_reg[9]) );
  DFFSR \start_address_reg_reg[10]  ( .D(n417), .CLK(clk), .R(n225), .S(n224), 
        .Q(start_address_reg[10]) );
  DFFSR \finish_address_reg_reg[10]  ( .D(n339), .CLK(clk), .R(n173), .S(n172), 
        .Q(finish_address_reg[10]) );
  DFFSR \start_address_reg_reg[11]  ( .D(n414), .CLK(clk), .R(n223), .S(n222), 
        .Q(start_address_reg[11]) );
  DFFSR \finish_address_reg_reg[11]  ( .D(n336), .CLK(clk), .R(n171), .S(n170), 
        .Q(finish_address_reg[11]) );
  DFFSR \start_address_reg_reg[12]  ( .D(n411), .CLK(clk), .R(n221), .S(n220), 
        .Q(start_address_reg[12]) );
  DFFSR \finish_address_reg_reg[12]  ( .D(n333), .CLK(clk), .R(n169), .S(n168), 
        .Q(finish_address_reg[12]) );
  DFFSR \start_address_reg_reg[13]  ( .D(n408), .CLK(clk), .R(n219), .S(n218), 
        .Q(start_address_reg[13]) );
  DFFSR \finish_address_reg_reg[13]  ( .D(n330), .CLK(clk), .R(n167), .S(n166), 
        .Q(finish_address_reg[13]) );
  DFFSR \start_address_reg_reg[14]  ( .D(n405), .CLK(clk), .R(n217), .S(n216), 
        .Q(start_address_reg[14]) );
  DFFSR \finish_address_reg_reg[14]  ( .D(n327), .CLK(clk), .R(n165), .S(n164), 
        .Q(finish_address_reg[14]) );
  DFFSR \start_address_reg_reg[15]  ( .D(n402), .CLK(clk), .R(n215), .S(n214), 
        .Q(start_address_reg[15]) );
  DFFSR \finish_address_reg_reg[15]  ( .D(n324), .CLK(clk), .R(n163), .S(n162), 
        .Q(finish_address_reg[15]) );
  DFFSR \start_address_reg_reg[16]  ( .D(n399), .CLK(clk), .R(n213), .S(n212), 
        .Q(start_address_reg[16]) );
  DFFSR \finish_address_reg_reg[16]  ( .D(n321), .CLK(clk), .R(n161), .S(n160), 
        .Q(finish_address_reg[16]) );
  DFFSR \start_address_reg_reg[17]  ( .D(n396), .CLK(clk), .R(n211), .S(n210), 
        .Q(start_address_reg[17]) );
  DFFSR \finish_address_reg_reg[17]  ( .D(n318), .CLK(clk), .R(n159), .S(n158), 
        .Q(finish_address_reg[17]) );
  DFFSR \start_address_reg_reg[18]  ( .D(n393), .CLK(clk), .R(n209), .S(n208), 
        .Q(start_address_reg[18]) );
  DFFSR \finish_address_reg_reg[18]  ( .D(n315), .CLK(clk), .R(n157), .S(n156), 
        .Q(finish_address_reg[18]) );
  DFFSR \start_address_reg_reg[19]  ( .D(n390), .CLK(clk), .R(n207), .S(n206), 
        .Q(start_address_reg[19]) );
  DFFSR \finish_address_reg_reg[19]  ( .D(n312), .CLK(clk), .R(n155), .S(n154), 
        .Q(finish_address_reg[19]) );
  DFFSR \start_address_reg_reg[20]  ( .D(n387), .CLK(clk), .R(n205), .S(n204), 
        .Q(start_address_reg[20]) );
  DFFSR \finish_address_reg_reg[20]  ( .D(n309), .CLK(clk), .R(n153), .S(n152), 
        .Q(finish_address_reg[20]) );
  DFFSR \start_address_reg_reg[21]  ( .D(n384), .CLK(clk), .R(n203), .S(n202), 
        .Q(start_address_reg[21]) );
  DFFSR \finish_address_reg_reg[21]  ( .D(n306), .CLK(clk), .R(n151), .S(n150), 
        .Q(finish_address_reg[21]) );
  DFFSR \start_address_reg_reg[22]  ( .D(n381), .CLK(clk), .R(n201), .S(n200), 
        .Q(start_address_reg[22]) );
  DFFSR \finish_address_reg_reg[22]  ( .D(n303), .CLK(clk), .R(n149), .S(n148), 
        .Q(finish_address_reg[22]) );
  DFFSR \start_address_reg_reg[23]  ( .D(n378), .CLK(clk), .R(n199), .S(n198), 
        .Q(start_address_reg[23]) );
  DFFSR \finish_address_reg_reg[23]  ( .D(n300), .CLK(clk), .R(n147), .S(n146), 
        .Q(finish_address_reg[23]) );
  DFFSR \start_address_reg_reg[24]  ( .D(n375), .CLK(clk), .R(n197), .S(n196), 
        .Q(start_address_reg[24]) );
  DFFSR \finish_address_reg_reg[24]  ( .D(n297), .CLK(clk), .R(n145), .S(n144), 
        .Q(finish_address_reg[24]) );
  DFFSR \start_address_reg_reg[25]  ( .D(n372), .CLK(clk), .R(n195), .S(n194), 
        .Q(start_address_reg[25]) );
  DFFSR \finish_address_reg_reg[25]  ( .D(n294), .CLK(clk), .R(n143), .S(n142), 
        .Q(finish_address_reg[25]) );
  sdram_address_calc_DW01_inc_0 r302 ( .A(sdram_address), .SUM({N110, N109, 
        N108, N107, N106, N105, N104, N103, N102, N101, N100, N99, N98, N97, 
        N96, N95, N94, N93, N92, N91, N90, N89, N88, N87, N86, N85}) );
  INVX8 U3 ( .A(n_rst), .Y(n31) );
  OR2X1 U4 ( .A(n4), .B(load), .Y(n114) );
  INVX2 U5 ( .A(n114), .Y(n1) );
  BUFX2 U6 ( .A(n87), .Y(n2) );
  BUFX2 U7 ( .A(n86), .Y(n3) );
  BUFX2 U8 ( .A(n115), .Y(n4) );
  INVX4 U9 ( .A(load), .Y(n84) );
  INVX1 U10 ( .A(n5), .Y(sdram_address[9]) );
  MUX2X1 U11 ( .B(finish_address_reg[9]), .A(start_address_reg[9]), .S(mode), 
        .Y(n5) );
  INVX1 U12 ( .A(n6), .Y(sdram_address[8]) );
  MUX2X1 U13 ( .B(finish_address_reg[8]), .A(start_address_reg[8]), .S(mode), 
        .Y(n6) );
  INVX1 U14 ( .A(n7), .Y(sdram_address[7]) );
  MUX2X1 U15 ( .B(finish_address_reg[7]), .A(start_address_reg[7]), .S(mode), 
        .Y(n7) );
  INVX1 U16 ( .A(n8), .Y(sdram_address[6]) );
  MUX2X1 U17 ( .B(finish_address_reg[6]), .A(start_address_reg[6]), .S(mode), 
        .Y(n8) );
  INVX1 U18 ( .A(n9), .Y(sdram_address[5]) );
  MUX2X1 U19 ( .B(finish_address_reg[5]), .A(start_address_reg[5]), .S(mode), 
        .Y(n9) );
  INVX1 U20 ( .A(n10), .Y(sdram_address[4]) );
  MUX2X1 U21 ( .B(finish_address_reg[4]), .A(start_address_reg[4]), .S(mode), 
        .Y(n10) );
  INVX1 U22 ( .A(n11), .Y(sdram_address[3]) );
  MUX2X1 U23 ( .B(finish_address_reg[3]), .A(start_address_reg[3]), .S(mode), 
        .Y(n11) );
  INVX1 U24 ( .A(n12), .Y(sdram_address[2]) );
  MUX2X1 U25 ( .B(finish_address_reg[2]), .A(start_address_reg[2]), .S(mode), 
        .Y(n12) );
  INVX1 U26 ( .A(n13), .Y(sdram_address[25]) );
  MUX2X1 U27 ( .B(finish_address_reg[25]), .A(start_address_reg[25]), .S(mode), 
        .Y(n13) );
  INVX1 U28 ( .A(n14), .Y(sdram_address[24]) );
  MUX2X1 U29 ( .B(finish_address_reg[24]), .A(start_address_reg[24]), .S(mode), 
        .Y(n14) );
  INVX1 U30 ( .A(n15), .Y(sdram_address[23]) );
  MUX2X1 U31 ( .B(finish_address_reg[23]), .A(start_address_reg[23]), .S(mode), 
        .Y(n15) );
  INVX1 U32 ( .A(n16), .Y(sdram_address[22]) );
  MUX2X1 U33 ( .B(finish_address_reg[22]), .A(start_address_reg[22]), .S(mode), 
        .Y(n16) );
  INVX1 U34 ( .A(n17), .Y(sdram_address[21]) );
  MUX2X1 U35 ( .B(finish_address_reg[21]), .A(start_address_reg[21]), .S(mode), 
        .Y(n17) );
  INVX1 U36 ( .A(n18), .Y(sdram_address[20]) );
  MUX2X1 U37 ( .B(finish_address_reg[20]), .A(start_address_reg[20]), .S(mode), 
        .Y(n18) );
  INVX1 U38 ( .A(n19), .Y(sdram_address[1]) );
  MUX2X1 U39 ( .B(finish_address_reg[1]), .A(start_address_reg[1]), .S(mode), 
        .Y(n19) );
  INVX1 U40 ( .A(n20), .Y(sdram_address[19]) );
  MUX2X1 U41 ( .B(finish_address_reg[19]), .A(start_address_reg[19]), .S(mode), 
        .Y(n20) );
  INVX1 U42 ( .A(n21), .Y(sdram_address[18]) );
  MUX2X1 U43 ( .B(finish_address_reg[18]), .A(start_address_reg[18]), .S(mode), 
        .Y(n21) );
  INVX1 U44 ( .A(n22), .Y(sdram_address[17]) );
  MUX2X1 U45 ( .B(finish_address_reg[17]), .A(start_address_reg[17]), .S(mode), 
        .Y(n22) );
  INVX1 U46 ( .A(n23), .Y(sdram_address[16]) );
  MUX2X1 U47 ( .B(finish_address_reg[16]), .A(start_address_reg[16]), .S(mode), 
        .Y(n23) );
  INVX1 U48 ( .A(n24), .Y(sdram_address[15]) );
  MUX2X1 U49 ( .B(finish_address_reg[15]), .A(start_address_reg[15]), .S(mode), 
        .Y(n24) );
  INVX1 U50 ( .A(n25), .Y(sdram_address[14]) );
  MUX2X1 U51 ( .B(finish_address_reg[14]), .A(start_address_reg[14]), .S(mode), 
        .Y(n25) );
  INVX1 U52 ( .A(n26), .Y(sdram_address[13]) );
  MUX2X1 U53 ( .B(finish_address_reg[13]), .A(start_address_reg[13]), .S(mode), 
        .Y(n26) );
  INVX1 U54 ( .A(n27), .Y(sdram_address[12]) );
  MUX2X1 U55 ( .B(finish_address_reg[12]), .A(start_address_reg[12]), .S(mode), 
        .Y(n27) );
  INVX1 U56 ( .A(n28), .Y(sdram_address[11]) );
  MUX2X1 U57 ( .B(finish_address_reg[11]), .A(start_address_reg[11]), .S(mode), 
        .Y(n28) );
  INVX1 U58 ( .A(n29), .Y(sdram_address[10]) );
  MUX2X1 U59 ( .B(finish_address_reg[10]), .A(start_address_reg[10]), .S(mode), 
        .Y(n29) );
  INVX1 U60 ( .A(n30), .Y(sdram_address[0]) );
  MUX2X1 U61 ( .B(finish_address_reg[0]), .A(start_address_reg[0]), .S(mode), 
        .Y(n30) );
  NAND2X1 U62 ( .A(finish_address[25]), .B(n31), .Y(n142) );
  NAND2X1 U63 ( .A(n31), .B(n32), .Y(n143) );
  NAND2X1 U64 ( .A(finish_address[24]), .B(n31), .Y(n144) );
  NAND2X1 U65 ( .A(n31), .B(n33), .Y(n145) );
  NAND2X1 U66 ( .A(finish_address[23]), .B(n31), .Y(n146) );
  NAND2X1 U67 ( .A(n31), .B(n34), .Y(n147) );
  NAND2X1 U68 ( .A(finish_address[22]), .B(n31), .Y(n148) );
  NAND2X1 U69 ( .A(n31), .B(n35), .Y(n149) );
  NAND2X1 U70 ( .A(finish_address[21]), .B(n31), .Y(n150) );
  NAND2X1 U71 ( .A(n31), .B(n36), .Y(n151) );
  NAND2X1 U72 ( .A(finish_address[20]), .B(n31), .Y(n152) );
  NAND2X1 U73 ( .A(n31), .B(n37), .Y(n153) );
  NAND2X1 U74 ( .A(finish_address[19]), .B(n31), .Y(n154) );
  NAND2X1 U75 ( .A(n31), .B(n38), .Y(n155) );
  NAND2X1 U76 ( .A(finish_address[18]), .B(n31), .Y(n156) );
  NAND2X1 U77 ( .A(n31), .B(n39), .Y(n157) );
  NAND2X1 U78 ( .A(finish_address[17]), .B(n31), .Y(n158) );
  NAND2X1 U79 ( .A(n31), .B(n40), .Y(n159) );
  NAND2X1 U80 ( .A(finish_address[16]), .B(n31), .Y(n160) );
  NAND2X1 U81 ( .A(n31), .B(n41), .Y(n161) );
  NAND2X1 U82 ( .A(finish_address[15]), .B(n31), .Y(n162) );
  NAND2X1 U83 ( .A(n31), .B(n42), .Y(n163) );
  NAND2X1 U84 ( .A(finish_address[14]), .B(n31), .Y(n164) );
  NAND2X1 U85 ( .A(n31), .B(n43), .Y(n165) );
  NAND2X1 U86 ( .A(finish_address[13]), .B(n31), .Y(n166) );
  NAND2X1 U87 ( .A(n31), .B(n44), .Y(n167) );
  NAND2X1 U88 ( .A(finish_address[12]), .B(n31), .Y(n168) );
  NAND2X1 U89 ( .A(n31), .B(n45), .Y(n169) );
  NAND2X1 U90 ( .A(finish_address[11]), .B(n31), .Y(n170) );
  NAND2X1 U91 ( .A(n31), .B(n46), .Y(n171) );
  NAND2X1 U92 ( .A(finish_address[10]), .B(n31), .Y(n172) );
  NAND2X1 U93 ( .A(n31), .B(n47), .Y(n173) );
  NAND2X1 U94 ( .A(finish_address[9]), .B(n31), .Y(n174) );
  NAND2X1 U95 ( .A(n31), .B(n48), .Y(n175) );
  NAND2X1 U96 ( .A(finish_address[8]), .B(n31), .Y(n176) );
  NAND2X1 U97 ( .A(n31), .B(n49), .Y(n177) );
  NAND2X1 U98 ( .A(finish_address[7]), .B(n31), .Y(n178) );
  NAND2X1 U99 ( .A(n31), .B(n50), .Y(n179) );
  NAND2X1 U100 ( .A(finish_address[6]), .B(n31), .Y(n180) );
  NAND2X1 U101 ( .A(n31), .B(n51), .Y(n181) );
  NAND2X1 U102 ( .A(finish_address[5]), .B(n31), .Y(n182) );
  NAND2X1 U103 ( .A(n31), .B(n52), .Y(n183) );
  NAND2X1 U104 ( .A(finish_address[4]), .B(n31), .Y(n184) );
  NAND2X1 U105 ( .A(n31), .B(n53), .Y(n185) );
  NAND2X1 U106 ( .A(finish_address[3]), .B(n31), .Y(n186) );
  NAND2X1 U107 ( .A(n31), .B(n54), .Y(n187) );
  NAND2X1 U108 ( .A(finish_address[2]), .B(n31), .Y(n188) );
  NAND2X1 U109 ( .A(n31), .B(n55), .Y(n189) );
  NAND2X1 U110 ( .A(finish_address[1]), .B(n31), .Y(n190) );
  NAND2X1 U111 ( .A(n31), .B(n56), .Y(n191) );
  NAND2X1 U112 ( .A(finish_address[0]), .B(n31), .Y(n192) );
  NAND2X1 U113 ( .A(n31), .B(n57), .Y(n193) );
  NAND2X1 U114 ( .A(start_address[25]), .B(n31), .Y(n194) );
  NAND2X1 U115 ( .A(n58), .B(n31), .Y(n195) );
  NAND2X1 U116 ( .A(start_address[24]), .B(n31), .Y(n196) );
  NAND2X1 U117 ( .A(n59), .B(n31), .Y(n197) );
  NAND2X1 U118 ( .A(start_address[23]), .B(n31), .Y(n198) );
  NAND2X1 U119 ( .A(n60), .B(n31), .Y(n199) );
  NAND2X1 U120 ( .A(start_address[22]), .B(n31), .Y(n200) );
  NAND2X1 U121 ( .A(n61), .B(n31), .Y(n201) );
  NAND2X1 U122 ( .A(start_address[21]), .B(n31), .Y(n202) );
  NAND2X1 U123 ( .A(n62), .B(n31), .Y(n203) );
  NAND2X1 U124 ( .A(start_address[20]), .B(n31), .Y(n204) );
  NAND2X1 U125 ( .A(n63), .B(n31), .Y(n205) );
  NAND2X1 U126 ( .A(start_address[19]), .B(n31), .Y(n206) );
  NAND2X1 U127 ( .A(n64), .B(n31), .Y(n207) );
  NAND2X1 U128 ( .A(start_address[18]), .B(n31), .Y(n208) );
  NAND2X1 U129 ( .A(n65), .B(n31), .Y(n209) );
  NAND2X1 U130 ( .A(start_address[17]), .B(n31), .Y(n210) );
  NAND2X1 U131 ( .A(n66), .B(n31), .Y(n211) );
  NAND2X1 U132 ( .A(start_address[16]), .B(n31), .Y(n212) );
  NAND2X1 U133 ( .A(n67), .B(n31), .Y(n213) );
  NAND2X1 U134 ( .A(start_address[15]), .B(n31), .Y(n214) );
  NAND2X1 U135 ( .A(n68), .B(n31), .Y(n215) );
  NAND2X1 U136 ( .A(start_address[14]), .B(n31), .Y(n216) );
  NAND2X1 U137 ( .A(n69), .B(n31), .Y(n217) );
  NAND2X1 U138 ( .A(start_address[13]), .B(n31), .Y(n218) );
  NAND2X1 U139 ( .A(n70), .B(n31), .Y(n219) );
  NAND2X1 U140 ( .A(start_address[12]), .B(n31), .Y(n220) );
  NAND2X1 U141 ( .A(n71), .B(n31), .Y(n221) );
  NAND2X1 U142 ( .A(start_address[11]), .B(n31), .Y(n222) );
  NAND2X1 U143 ( .A(n72), .B(n31), .Y(n223) );
  NAND2X1 U144 ( .A(start_address[10]), .B(n31), .Y(n224) );
  NAND2X1 U145 ( .A(n73), .B(n31), .Y(n225) );
  NAND2X1 U146 ( .A(start_address[9]), .B(n31), .Y(n226) );
  NAND2X1 U147 ( .A(n74), .B(n31), .Y(n227) );
  NAND2X1 U148 ( .A(start_address[8]), .B(n31), .Y(n228) );
  NAND2X1 U149 ( .A(n75), .B(n31), .Y(n229) );
  NAND2X1 U150 ( .A(start_address[7]), .B(n31), .Y(n230) );
  NAND2X1 U151 ( .A(n76), .B(n31), .Y(n231) );
  NAND2X1 U152 ( .A(start_address[6]), .B(n31), .Y(n232) );
  NAND2X1 U153 ( .A(n77), .B(n31), .Y(n233) );
  NAND2X1 U154 ( .A(start_address[5]), .B(n31), .Y(n234) );
  NAND2X1 U155 ( .A(n78), .B(n31), .Y(n235) );
  NAND2X1 U156 ( .A(start_address[4]), .B(n31), .Y(n236) );
  NAND2X1 U157 ( .A(n79), .B(n31), .Y(n237) );
  NAND2X1 U158 ( .A(start_address[3]), .B(n31), .Y(n238) );
  NAND2X1 U159 ( .A(n80), .B(n31), .Y(n239) );
  NAND2X1 U160 ( .A(start_address[2]), .B(n31), .Y(n240) );
  NAND2X1 U161 ( .A(n81), .B(n31), .Y(n241) );
  NAND2X1 U162 ( .A(start_address[1]), .B(n31), .Y(n242) );
  NAND2X1 U163 ( .A(n82), .B(n31), .Y(n243) );
  NAND2X1 U164 ( .A(start_address[0]), .B(n31), .Y(n244) );
  NAND2X1 U165 ( .A(n83), .B(n31), .Y(n245) );
  OAI21X1 U166 ( .A(n83), .B(n84), .C(n85), .Y(n447) );
  AOI22X1 U167 ( .A(N85), .B(n3), .C(n2), .D(start_address_reg[0]), .Y(n85) );
  INVX1 U168 ( .A(start_address[0]), .Y(n83) );
  OAI21X1 U169 ( .A(n82), .B(n84), .C(n88), .Y(n444) );
  AOI22X1 U170 ( .A(N86), .B(n3), .C(n2), .D(start_address_reg[1]), .Y(n88) );
  INVX1 U171 ( .A(start_address[1]), .Y(n82) );
  OAI21X1 U172 ( .A(n81), .B(n84), .C(n89), .Y(n441) );
  AOI22X1 U173 ( .A(N87), .B(n3), .C(n2), .D(start_address_reg[2]), .Y(n89) );
  INVX1 U174 ( .A(start_address[2]), .Y(n81) );
  OAI21X1 U175 ( .A(n80), .B(n84), .C(n90), .Y(n438) );
  AOI22X1 U176 ( .A(N88), .B(n3), .C(n2), .D(start_address_reg[3]), .Y(n90) );
  INVX1 U177 ( .A(start_address[3]), .Y(n80) );
  OAI21X1 U178 ( .A(n79), .B(n84), .C(n91), .Y(n435) );
  AOI22X1 U179 ( .A(N89), .B(n3), .C(n2), .D(start_address_reg[4]), .Y(n91) );
  INVX1 U180 ( .A(start_address[4]), .Y(n79) );
  OAI21X1 U181 ( .A(n78), .B(n84), .C(n92), .Y(n432) );
  AOI22X1 U182 ( .A(N90), .B(n3), .C(n2), .D(start_address_reg[5]), .Y(n92) );
  INVX1 U183 ( .A(start_address[5]), .Y(n78) );
  OAI21X1 U184 ( .A(n77), .B(n84), .C(n93), .Y(n429) );
  AOI22X1 U185 ( .A(N91), .B(n3), .C(n2), .D(start_address_reg[6]), .Y(n93) );
  INVX1 U186 ( .A(start_address[6]), .Y(n77) );
  OAI21X1 U187 ( .A(n76), .B(n84), .C(n94), .Y(n426) );
  AOI22X1 U188 ( .A(N92), .B(n3), .C(n2), .D(start_address_reg[7]), .Y(n94) );
  INVX1 U189 ( .A(start_address[7]), .Y(n76) );
  OAI21X1 U190 ( .A(n75), .B(n84), .C(n95), .Y(n423) );
  AOI22X1 U191 ( .A(N93), .B(n3), .C(n2), .D(start_address_reg[8]), .Y(n95) );
  INVX1 U192 ( .A(start_address[8]), .Y(n75) );
  OAI21X1 U193 ( .A(n74), .B(n84), .C(n96), .Y(n420) );
  AOI22X1 U194 ( .A(N94), .B(n3), .C(n2), .D(start_address_reg[9]), .Y(n96) );
  INVX1 U195 ( .A(start_address[9]), .Y(n74) );
  OAI21X1 U196 ( .A(n73), .B(n84), .C(n97), .Y(n417) );
  AOI22X1 U197 ( .A(N95), .B(n3), .C(n2), .D(start_address_reg[10]), .Y(n97)
         );
  INVX1 U198 ( .A(start_address[10]), .Y(n73) );
  OAI21X1 U199 ( .A(n72), .B(n84), .C(n98), .Y(n414) );
  AOI22X1 U200 ( .A(N96), .B(n3), .C(n2), .D(start_address_reg[11]), .Y(n98)
         );
  INVX1 U201 ( .A(start_address[11]), .Y(n72) );
  OAI21X1 U202 ( .A(n71), .B(n84), .C(n99), .Y(n411) );
  AOI22X1 U203 ( .A(N97), .B(n3), .C(n2), .D(start_address_reg[12]), .Y(n99)
         );
  INVX1 U204 ( .A(start_address[12]), .Y(n71) );
  OAI21X1 U205 ( .A(n70), .B(n84), .C(n100), .Y(n408) );
  AOI22X1 U206 ( .A(N98), .B(n3), .C(n2), .D(start_address_reg[13]), .Y(n100)
         );
  INVX1 U207 ( .A(start_address[13]), .Y(n70) );
  OAI21X1 U208 ( .A(n69), .B(n84), .C(n101), .Y(n405) );
  AOI22X1 U209 ( .A(N99), .B(n3), .C(n2), .D(start_address_reg[14]), .Y(n101)
         );
  INVX1 U210 ( .A(start_address[14]), .Y(n69) );
  OAI21X1 U211 ( .A(n68), .B(n84), .C(n102), .Y(n402) );
  AOI22X1 U212 ( .A(N100), .B(n3), .C(n2), .D(start_address_reg[15]), .Y(n102)
         );
  INVX1 U213 ( .A(start_address[15]), .Y(n68) );
  OAI21X1 U214 ( .A(n67), .B(n84), .C(n103), .Y(n399) );
  AOI22X1 U215 ( .A(N101), .B(n3), .C(n2), .D(start_address_reg[16]), .Y(n103)
         );
  INVX1 U216 ( .A(start_address[16]), .Y(n67) );
  OAI21X1 U217 ( .A(n66), .B(n84), .C(n104), .Y(n396) );
  AOI22X1 U218 ( .A(N102), .B(n3), .C(n2), .D(start_address_reg[17]), .Y(n104)
         );
  INVX1 U219 ( .A(start_address[17]), .Y(n66) );
  OAI21X1 U220 ( .A(n65), .B(n84), .C(n105), .Y(n393) );
  AOI22X1 U221 ( .A(N103), .B(n3), .C(n2), .D(start_address_reg[18]), .Y(n105)
         );
  INVX1 U222 ( .A(start_address[18]), .Y(n65) );
  OAI21X1 U223 ( .A(n64), .B(n84), .C(n106), .Y(n390) );
  AOI22X1 U224 ( .A(N104), .B(n3), .C(n2), .D(start_address_reg[19]), .Y(n106)
         );
  INVX1 U225 ( .A(start_address[19]), .Y(n64) );
  OAI21X1 U226 ( .A(n63), .B(n84), .C(n107), .Y(n387) );
  AOI22X1 U227 ( .A(N105), .B(n3), .C(n2), .D(start_address_reg[20]), .Y(n107)
         );
  INVX1 U228 ( .A(start_address[20]), .Y(n63) );
  OAI21X1 U229 ( .A(n62), .B(n84), .C(n108), .Y(n384) );
  AOI22X1 U230 ( .A(N106), .B(n3), .C(n2), .D(start_address_reg[21]), .Y(n108)
         );
  INVX1 U231 ( .A(start_address[21]), .Y(n62) );
  OAI21X1 U232 ( .A(n61), .B(n84), .C(n109), .Y(n381) );
  AOI22X1 U233 ( .A(N107), .B(n3), .C(n2), .D(start_address_reg[22]), .Y(n109)
         );
  INVX1 U234 ( .A(start_address[22]), .Y(n61) );
  OAI21X1 U235 ( .A(n60), .B(n84), .C(n110), .Y(n378) );
  AOI22X1 U236 ( .A(N108), .B(n3), .C(n2), .D(start_address_reg[23]), .Y(n110)
         );
  INVX1 U237 ( .A(start_address[23]), .Y(n60) );
  OAI21X1 U238 ( .A(n59), .B(n84), .C(n111), .Y(n375) );
  AOI22X1 U239 ( .A(N109), .B(n3), .C(n2), .D(start_address_reg[24]), .Y(n111)
         );
  INVX1 U240 ( .A(start_address[24]), .Y(n59) );
  OAI21X1 U241 ( .A(n58), .B(n84), .C(n112), .Y(n372) );
  AOI22X1 U242 ( .A(N110), .B(n3), .C(n2), .D(start_address_reg[25]), .Y(n112)
         );
  NOR2X1 U243 ( .A(n2), .B(load), .Y(n86) );
  AOI21X1 U244 ( .A(mode), .B(enable), .C(load), .Y(n87) );
  INVX1 U245 ( .A(start_address[25]), .Y(n58) );
  OAI21X1 U246 ( .A(n57), .B(n84), .C(n113), .Y(n369) );
  AOI22X1 U247 ( .A(n1), .B(N85), .C(n4), .D(finish_address_reg[0]), .Y(n113)
         );
  INVX1 U248 ( .A(finish_address[0]), .Y(n57) );
  OAI21X1 U249 ( .A(n56), .B(n84), .C(n116), .Y(n366) );
  AOI22X1 U250 ( .A(n1), .B(N86), .C(n4), .D(finish_address_reg[1]), .Y(n116)
         );
  INVX1 U251 ( .A(finish_address[1]), .Y(n56) );
  OAI21X1 U252 ( .A(n55), .B(n84), .C(n117), .Y(n363) );
  AOI22X1 U253 ( .A(n1), .B(N87), .C(n4), .D(finish_address_reg[2]), .Y(n117)
         );
  INVX1 U254 ( .A(finish_address[2]), .Y(n55) );
  OAI21X1 U255 ( .A(n54), .B(n84), .C(n118), .Y(n360) );
  AOI22X1 U256 ( .A(n1), .B(N88), .C(n4), .D(finish_address_reg[3]), .Y(n118)
         );
  INVX1 U257 ( .A(finish_address[3]), .Y(n54) );
  OAI21X1 U258 ( .A(n53), .B(n84), .C(n119), .Y(n357) );
  AOI22X1 U259 ( .A(n1), .B(N89), .C(n4), .D(finish_address_reg[4]), .Y(n119)
         );
  INVX1 U260 ( .A(finish_address[4]), .Y(n53) );
  OAI21X1 U261 ( .A(n52), .B(n84), .C(n120), .Y(n354) );
  AOI22X1 U262 ( .A(n1), .B(N90), .C(n4), .D(finish_address_reg[5]), .Y(n120)
         );
  INVX1 U263 ( .A(finish_address[5]), .Y(n52) );
  OAI21X1 U264 ( .A(n51), .B(n84), .C(n121), .Y(n351) );
  AOI22X1 U265 ( .A(n1), .B(N91), .C(n4), .D(finish_address_reg[6]), .Y(n121)
         );
  INVX1 U266 ( .A(finish_address[6]), .Y(n51) );
  OAI21X1 U267 ( .A(n50), .B(n84), .C(n122), .Y(n348) );
  AOI22X1 U268 ( .A(n1), .B(N92), .C(n4), .D(finish_address_reg[7]), .Y(n122)
         );
  INVX1 U269 ( .A(finish_address[7]), .Y(n50) );
  OAI21X1 U270 ( .A(n49), .B(n84), .C(n123), .Y(n345) );
  AOI22X1 U271 ( .A(n1), .B(N93), .C(n4), .D(finish_address_reg[8]), .Y(n123)
         );
  INVX1 U272 ( .A(finish_address[8]), .Y(n49) );
  OAI21X1 U273 ( .A(n48), .B(n84), .C(n124), .Y(n342) );
  AOI22X1 U274 ( .A(n1), .B(N94), .C(n4), .D(finish_address_reg[9]), .Y(n124)
         );
  INVX1 U275 ( .A(finish_address[9]), .Y(n48) );
  OAI21X1 U276 ( .A(n47), .B(n84), .C(n125), .Y(n339) );
  AOI22X1 U277 ( .A(n1), .B(N95), .C(n4), .D(finish_address_reg[10]), .Y(n125)
         );
  INVX1 U278 ( .A(finish_address[10]), .Y(n47) );
  OAI21X1 U279 ( .A(n46), .B(n84), .C(n126), .Y(n336) );
  AOI22X1 U280 ( .A(n1), .B(N96), .C(n4), .D(finish_address_reg[11]), .Y(n126)
         );
  INVX1 U281 ( .A(finish_address[11]), .Y(n46) );
  OAI21X1 U282 ( .A(n45), .B(n84), .C(n127), .Y(n333) );
  AOI22X1 U283 ( .A(n1), .B(N97), .C(n4), .D(finish_address_reg[12]), .Y(n127)
         );
  INVX1 U284 ( .A(finish_address[12]), .Y(n45) );
  OAI21X1 U285 ( .A(n44), .B(n84), .C(n128), .Y(n330) );
  AOI22X1 U286 ( .A(n1), .B(N98), .C(n4), .D(finish_address_reg[13]), .Y(n128)
         );
  INVX1 U287 ( .A(finish_address[13]), .Y(n44) );
  OAI21X1 U288 ( .A(n43), .B(n84), .C(n129), .Y(n327) );
  AOI22X1 U289 ( .A(n1), .B(N99), .C(n4), .D(finish_address_reg[14]), .Y(n129)
         );
  INVX1 U290 ( .A(finish_address[14]), .Y(n43) );
  OAI21X1 U291 ( .A(n42), .B(n84), .C(n130), .Y(n324) );
  AOI22X1 U292 ( .A(n1), .B(N100), .C(n4), .D(finish_address_reg[15]), .Y(n130) );
  INVX1 U293 ( .A(finish_address[15]), .Y(n42) );
  OAI21X1 U294 ( .A(n41), .B(n84), .C(n131), .Y(n321) );
  AOI22X1 U295 ( .A(n1), .B(N101), .C(n4), .D(finish_address_reg[16]), .Y(n131) );
  INVX1 U296 ( .A(finish_address[16]), .Y(n41) );
  OAI21X1 U297 ( .A(n40), .B(n84), .C(n132), .Y(n318) );
  AOI22X1 U298 ( .A(n1), .B(N102), .C(n4), .D(finish_address_reg[17]), .Y(n132) );
  INVX1 U299 ( .A(finish_address[17]), .Y(n40) );
  OAI21X1 U300 ( .A(n39), .B(n84), .C(n133), .Y(n315) );
  AOI22X1 U301 ( .A(n1), .B(N103), .C(n4), .D(finish_address_reg[18]), .Y(n133) );
  INVX1 U302 ( .A(finish_address[18]), .Y(n39) );
  OAI21X1 U303 ( .A(n38), .B(n84), .C(n134), .Y(n312) );
  AOI22X1 U304 ( .A(n1), .B(N104), .C(n4), .D(finish_address_reg[19]), .Y(n134) );
  INVX1 U305 ( .A(finish_address[19]), .Y(n38) );
  OAI21X1 U306 ( .A(n37), .B(n84), .C(n135), .Y(n309) );
  AOI22X1 U307 ( .A(n1), .B(N105), .C(n4), .D(finish_address_reg[20]), .Y(n135) );
  INVX1 U308 ( .A(finish_address[20]), .Y(n37) );
  OAI21X1 U309 ( .A(n36), .B(n84), .C(n136), .Y(n306) );
  AOI22X1 U310 ( .A(n1), .B(N106), .C(n4), .D(finish_address_reg[21]), .Y(n136) );
  INVX1 U311 ( .A(finish_address[21]), .Y(n36) );
  OAI21X1 U312 ( .A(n35), .B(n84), .C(n137), .Y(n303) );
  AOI22X1 U313 ( .A(n1), .B(N107), .C(n4), .D(finish_address_reg[22]), .Y(n137) );
  INVX1 U314 ( .A(finish_address[22]), .Y(n35) );
  OAI21X1 U315 ( .A(n34), .B(n84), .C(n138), .Y(n300) );
  AOI22X1 U316 ( .A(n1), .B(N108), .C(n4), .D(finish_address_reg[23]), .Y(n138) );
  INVX1 U317 ( .A(finish_address[23]), .Y(n34) );
  OAI21X1 U318 ( .A(n33), .B(n84), .C(n139), .Y(n297) );
  AOI22X1 U319 ( .A(n1), .B(N109), .C(n4), .D(finish_address_reg[24]), .Y(n139) );
  INVX1 U320 ( .A(finish_address[24]), .Y(n33) );
  OAI21X1 U321 ( .A(n32), .B(n84), .C(n140), .Y(n294) );
  AOI22X1 U322 ( .A(n1), .B(N110), .C(n4), .D(finish_address_reg[25]), .Y(n140) );
  AOI21X1 U323 ( .A(n141), .B(enable), .C(load), .Y(n115) );
  INVX1 U324 ( .A(mode), .Y(n141) );
  INVX1 U325 ( .A(finish_address[25]), .Y(n32) );
endmodule


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
         n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n45,
         n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59,
         n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73,
         n74, n75, n76, n77, n78, n79, n80;
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
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, n54, n42, n43, n45, n46, n47, 
        n48, n49, n50, n51, n52, n53, n41}), .B({n73, n72, n71, n70, n69, n68, 
        n66, n65, n64, n63, n62, n61, n60, n59, n58, n57, n80, n79, n78, n77, 
        n76, n75, n74, n67, n56, n55}), .CI(1'b0), .SUM(sram_addr) );
  sram_address_calc_DW01_dec_0 sub_44 ( .A(image_width), .SUM({\_2_net_[12] , 
        \_2_net_[11] , \_2_net_[10] , \_2_net_[9] , \_2_net_[8] , \_2_net_[7] , 
        \_2_net_[6] , \_2_net_[5] , \_2_net_[4] , \_2_net_[3] , \_2_net_[2] , 
        \_2_net_[1] , \_2_net_[0] }) );
  INVX1 U3 ( .A(n1), .Y(n41) );
  MUX2X1 U4 ( .B(outputAddrNum[0]), .A(rowCacheNum[0]), .S(mode), .Y(n1) );
  INVX1 U5 ( .A(n2), .Y(n42) );
  MUX2X1 U6 ( .B(outputAddrNum[11]), .A(rowCacheNum[11]), .S(mode), .Y(n2) );
  INVX1 U7 ( .A(n3), .Y(n43) );
  MUX2X1 U8 ( .B(outputAddrNum[10]), .A(rowCacheNum[10]), .S(mode), .Y(n3) );
  INVX1 U9 ( .A(n4), .Y(n45) );
  MUX2X1 U10 ( .B(outputAddrNum[9]), .A(rowCacheNum[9]), .S(mode), .Y(n4) );
  INVX1 U11 ( .A(n5), .Y(n46) );
  MUX2X1 U12 ( .B(outputAddrNum[8]), .A(rowCacheNum[8]), .S(mode), .Y(n5) );
  INVX1 U13 ( .A(n6), .Y(n47) );
  MUX2X1 U14 ( .B(outputAddrNum[7]), .A(rowCacheNum[7]), .S(mode), .Y(n6) );
  INVX1 U15 ( .A(n7), .Y(n48) );
  MUX2X1 U16 ( .B(outputAddrNum[6]), .A(rowCacheNum[6]), .S(mode), .Y(n7) );
  INVX1 U17 ( .A(n8), .Y(n49) );
  MUX2X1 U18 ( .B(outputAddrNum[5]), .A(rowCacheNum[5]), .S(mode), .Y(n8) );
  INVX1 U19 ( .A(n9), .Y(n50) );
  MUX2X1 U20 ( .B(outputAddrNum[4]), .A(rowCacheNum[4]), .S(mode), .Y(n9) );
  INVX1 U21 ( .A(n10), .Y(n51) );
  MUX2X1 U22 ( .B(outputAddrNum[3]), .A(rowCacheNum[3]), .S(mode), .Y(n10) );
  INVX1 U23 ( .A(n11), .Y(n52) );
  MUX2X1 U24 ( .B(outputAddrNum[2]), .A(rowCacheNum[2]), .S(mode), .Y(n11) );
  INVX1 U25 ( .A(n12), .Y(n53) );
  MUX2X1 U26 ( .B(outputAddrNum[1]), .A(rowCacheNum[1]), .S(mode), .Y(n12) );
  INVX1 U27 ( .A(n13), .Y(n54) );
  MUX2X1 U28 ( .B(outputAddrNum[12]), .A(rowCacheNum[12]), .S(mode), .Y(n13)
         );
  INVX1 U29 ( .A(n14), .Y(n55) );
  MUX2X1 U30 ( .B(sram_outputAddrStart[0]), .A(sram_rowCacheStart[0]), .S(mode), .Y(n14) );
  INVX1 U31 ( .A(n15), .Y(n56) );
  MUX2X1 U32 ( .B(sram_outputAddrStart[1]), .A(sram_rowCacheStart[1]), .S(mode), .Y(n15) );
  INVX1 U33 ( .A(n16), .Y(n57) );
  MUX2X1 U34 ( .B(sram_outputAddrStart[10]), .A(sram_rowCacheStart[10]), .S(
        mode), .Y(n16) );
  INVX1 U35 ( .A(n17), .Y(n58) );
  MUX2X1 U36 ( .B(sram_outputAddrStart[11]), .A(sram_rowCacheStart[11]), .S(
        mode), .Y(n17) );
  INVX1 U37 ( .A(n18), .Y(n59) );
  MUX2X1 U38 ( .B(sram_outputAddrStart[12]), .A(sram_rowCacheStart[12]), .S(
        mode), .Y(n18) );
  INVX1 U39 ( .A(n19), .Y(n60) );
  MUX2X1 U40 ( .B(sram_outputAddrStart[13]), .A(sram_rowCacheStart[13]), .S(
        mode), .Y(n19) );
  INVX1 U41 ( .A(n20), .Y(n61) );
  MUX2X1 U42 ( .B(sram_outputAddrStart[14]), .A(sram_rowCacheStart[14]), .S(
        mode), .Y(n20) );
  INVX1 U43 ( .A(n21), .Y(n62) );
  MUX2X1 U44 ( .B(sram_outputAddrStart[15]), .A(sram_rowCacheStart[15]), .S(
        mode), .Y(n21) );
  INVX1 U45 ( .A(n22), .Y(n63) );
  MUX2X1 U46 ( .B(sram_outputAddrStart[16]), .A(sram_rowCacheStart[16]), .S(
        mode), .Y(n22) );
  INVX1 U47 ( .A(n23), .Y(n64) );
  MUX2X1 U48 ( .B(sram_outputAddrStart[17]), .A(sram_rowCacheStart[17]), .S(
        mode), .Y(n23) );
  INVX1 U49 ( .A(n24), .Y(n65) );
  MUX2X1 U50 ( .B(sram_outputAddrStart[18]), .A(sram_rowCacheStart[18]), .S(
        mode), .Y(n24) );
  INVX1 U51 ( .A(n25), .Y(n66) );
  MUX2X1 U52 ( .B(sram_outputAddrStart[19]), .A(sram_rowCacheStart[19]), .S(
        mode), .Y(n25) );
  INVX1 U53 ( .A(n26), .Y(n67) );
  MUX2X1 U54 ( .B(sram_outputAddrStart[2]), .A(sram_rowCacheStart[2]), .S(mode), .Y(n26) );
  INVX1 U55 ( .A(n27), .Y(n68) );
  MUX2X1 U56 ( .B(sram_outputAddrStart[20]), .A(sram_rowCacheStart[20]), .S(
        mode), .Y(n27) );
  INVX1 U57 ( .A(n28), .Y(n69) );
  MUX2X1 U58 ( .B(sram_outputAddrStart[21]), .A(sram_rowCacheStart[21]), .S(
        mode), .Y(n28) );
  INVX1 U59 ( .A(n29), .Y(n70) );
  MUX2X1 U60 ( .B(sram_outputAddrStart[22]), .A(sram_rowCacheStart[22]), .S(
        mode), .Y(n29) );
  INVX1 U61 ( .A(n30), .Y(n71) );
  MUX2X1 U62 ( .B(sram_outputAddrStart[23]), .A(sram_rowCacheStart[23]), .S(
        mode), .Y(n30) );
  INVX1 U63 ( .A(n31), .Y(n72) );
  MUX2X1 U64 ( .B(sram_outputAddrStart[24]), .A(sram_rowCacheStart[24]), .S(
        mode), .Y(n31) );
  INVX1 U65 ( .A(n32), .Y(n73) );
  MUX2X1 U66 ( .B(sram_outputAddrStart[25]), .A(sram_rowCacheStart[25]), .S(
        mode), .Y(n32) );
  INVX1 U67 ( .A(n33), .Y(n74) );
  MUX2X1 U68 ( .B(sram_outputAddrStart[3]), .A(sram_rowCacheStart[3]), .S(mode), .Y(n33) );
  INVX1 U69 ( .A(n34), .Y(n75) );
  MUX2X1 U70 ( .B(sram_outputAddrStart[4]), .A(sram_rowCacheStart[4]), .S(mode), .Y(n34) );
  INVX1 U71 ( .A(n35), .Y(n76) );
  MUX2X1 U72 ( .B(sram_outputAddrStart[5]), .A(sram_rowCacheStart[5]), .S(mode), .Y(n35) );
  INVX1 U73 ( .A(n36), .Y(n77) );
  MUX2X1 U74 ( .B(sram_outputAddrStart[6]), .A(sram_rowCacheStart[6]), .S(mode), .Y(n36) );
  INVX1 U75 ( .A(n37), .Y(n78) );
  MUX2X1 U76 ( .B(sram_outputAddrStart[7]), .A(sram_rowCacheStart[7]), .S(mode), .Y(n37) );
  INVX1 U77 ( .A(n38), .Y(n79) );
  MUX2X1 U78 ( .B(sram_outputAddrStart[8]), .A(sram_rowCacheStart[8]), .S(mode), .Y(n38) );
  INVX1 U79 ( .A(n39), .Y(n80) );
  MUX2X1 U80 ( .B(sram_outputAddrStart[9]), .A(sram_rowCacheStart[9]), .S(mode), .Y(n39) );
  NOR2X1 U81 ( .A(mode), .B(n40), .Y(_1_net_) );
  INVX1 U82 ( .A(enable), .Y(n40) );
  AND2X1 U83 ( .A(mode), .B(enable), .Y(_0_net_) );
endmodule


module address_calc ( clk, n_rst, sram_mode, sdram_mode, sram_update, 
        sdram_update, start_flag, image_width, start_address_sdram, 
        finish_address_sdram, rowCache_address_sram, output_address_sram, 
        sdram_address, sram_address );
  input [12:0] image_width;
  input [25:0] start_address_sdram;
  input [25:0] finish_address_sdram;
  input [25:0] rowCache_address_sram;
  input [25:0] output_address_sram;
  output [25:0] sdram_address;
  output [25:0] sram_address;
  input clk, n_rst, sram_mode, sdram_mode, sram_update, sdram_update,
         start_flag;


  sdram_address_calc sdramAddrCalc ( .clk(clk), .n_rst(n_rst), .mode(
        sdram_mode), .enable(sdram_update), .load(start_flag), .start_address(
        start_address_sdram), .finish_address(finish_address_sdram), 
        .sdram_address(sdram_address) );
  sram_address_calc sramAddrCalc ( .clk(clk), .n_rst(n_rst), .clear(start_flag), .mode(sram_mode), .enable(sram_update), .image_width(image_width), 
        .sram_rowCacheStart(rowCache_address_sram), .sram_outputAddrStart(
        output_address_sram), .sram_addr(sram_address) );
endmodule


module controlUnit ( clk, n_rst, start_flag, dataRead_sram, dataRead_sdram, 
        rollover_i, rollover_j, rollover_i_wr, enable_i, enable_j, enable_i_wr, 
        enable_addr_calc_sram, enable_addr_calc_sdram, enable_WB, enable_sram, 
        read_en_sdram, write_en_sdram, mode_addr_calc_sram, 
        mode_addr_calc_sdram, mode_WB, mode_sram, finish_flag );
  output [2:0] mode_WB;
  input clk, n_rst, start_flag, dataRead_sram, dataRead_sdram, rollover_i,
         rollover_j, rollover_i_wr;
  output enable_i, enable_j, enable_i_wr, enable_addr_calc_sram,
         enable_addr_calc_sdram, enable_WB, enable_sram, read_en_sdram,
         write_en_sdram, mode_addr_calc_sram, mode_addr_calc_sdram, mode_sram,
         finish_flag;
  wire   n163, n164, N499, N501, N502, N503, N504, N505, N506, N507, N508,
         N509, N510, N511, N513, N515, n183, n184, n185, n186, n187, n6, n7,
         n8, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23,
         n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37,
         n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51,
         n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65,
         n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79,
         n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93,
         n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138,
         n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149,
         n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160,
         n161, n162;
  wire   [31:0] state;

  DFFSR \state_reg[0]  ( .D(n187), .CLK(clk), .R(n_rst), .S(1'b1), .Q(state[0]) );
  DFFSR \state_reg[3]  ( .D(n184), .CLK(clk), .R(n_rst), .S(1'b1), .Q(state[3]) );
  DFFSR \state_reg[2]  ( .D(n185), .CLK(clk), .R(n_rst), .S(1'b1), .Q(state[2]) );
  DFFSR \state_reg[4]  ( .D(n183), .CLK(clk), .R(n_rst), .S(1'b1), .Q(state[4]) );
  DFFSR \state_reg[1]  ( .D(n186), .CLK(clk), .R(n_rst), .S(1'b1), .Q(state[1]) );
  LATCH \mode_WB_reg[2]  ( .CLK(n7), .D(N510), .Q(mode_WB[2]) );
  LATCH \mode_WB_reg[1]  ( .CLK(n7), .D(N509), .Q(mode_WB[1]) );
  LATCH \mode_WB_reg[0]  ( .CLK(n7), .D(N508), .Q(mode_WB[0]) );
  LATCH mode_sram_reg ( .CLK(n7), .D(N511), .Q(mode_sram) );
  LATCH mode_addr_calc_sram_reg ( .CLK(n7), .D(n161), .Q(n163) );
  LATCH mode_addr_calc_sdram_reg ( .CLK(n7), .D(N513), .Q(n164) );
  LATCH enable_i_reg ( .CLK(n7), .D(N499), .Q(enable_i) );
  LATCH enable_j_reg ( .CLK(n7), .D(n162), .Q(enable_j) );
  LATCH enable_i_wr_reg ( .CLK(n7), .D(N501), .Q(enable_i_wr) );
  LATCH enable_addr_calc_sram_reg ( .CLK(n7), .D(N502), .Q(
        enable_addr_calc_sram) );
  LATCH enable_addr_calc_sdram_reg ( .CLK(n7), .D(N503), .Q(
        enable_addr_calc_sdram) );
  LATCH enable_WB_reg ( .CLK(n7), .D(N504), .Q(enable_WB) );
  LATCH enable_sram_reg ( .CLK(n7), .D(N505), .Q(enable_sram) );
  LATCH read_en_sdram_reg ( .CLK(n7), .D(N506), .Q(read_en_sdram) );
  LATCH write_en_sdram_reg ( .CLK(n7), .D(N501), .Q(write_en_sdram) );
  LATCH finish_flag_reg ( .CLK(n7), .D(N507), .Q(finish_flag) );
  INVX1 U8 ( .A(N515), .Y(n6) );
  INVX2 U9 ( .A(n6), .Y(n7) );
  INVX1 U10 ( .A(n163), .Y(n8) );
  INVX4 U11 ( .A(n8), .Y(mode_addr_calc_sram) );
  BUFX4 U12 ( .A(n164), .Y(mode_addr_calc_sdram) );
  INVX1 U13 ( .A(n11), .Y(n161) );
  INVX1 U14 ( .A(n12), .Y(n162) );
  OAI21X1 U15 ( .A(n13), .B(n14), .C(n15), .Y(n187) );
  OAI21X1 U16 ( .A(n16), .B(n17), .C(n18), .Y(n15) );
  NAND3X1 U17 ( .A(n19), .B(n20), .C(n21), .Y(n17) );
  NOR2X1 U18 ( .A(n22), .B(n23), .Y(n21) );
  MUX2X1 U19 ( .B(n24), .A(n25), .S(dataRead_sdram), .Y(n23) );
  OR2X1 U20 ( .A(n26), .B(n27), .Y(n16) );
  OAI22X1 U21 ( .A(rollover_i), .B(n28), .C(n29), .D(n30), .Y(n27) );
  OAI21X1 U22 ( .A(n31), .B(n32), .C(n33), .Y(n26) );
  NOR2X1 U23 ( .A(N501), .B(n34), .Y(n33) );
  OAI21X1 U24 ( .A(n13), .B(n35), .C(n36), .Y(n186) );
  OAI21X1 U25 ( .A(n37), .B(n38), .C(n18), .Y(n36) );
  NAND3X1 U26 ( .A(n39), .B(n19), .C(n25), .Y(n38) );
  NAND3X1 U27 ( .A(n12), .B(n31), .C(n40), .Y(n37) );
  AOI21X1 U28 ( .A(n41), .B(dataRead_sdram), .C(n42), .Y(n40) );
  NAND3X1 U29 ( .A(n43), .B(n44), .C(n45), .Y(n185) );
  NOR2X1 U30 ( .A(n46), .B(n47), .Y(n45) );
  NAND2X1 U31 ( .A(n28), .B(n31), .Y(n47) );
  NAND3X1 U32 ( .A(n48), .B(n49), .C(n50), .Y(n46) );
  INVX1 U33 ( .A(N499), .Y(n49) );
  AOI21X1 U34 ( .A(n51), .B(rollover_i), .C(n52), .Y(n44) );
  OAI21X1 U35 ( .A(rollover_j), .B(n12), .C(n29), .Y(n52) );
  INVX1 U36 ( .A(n53), .Y(n51) );
  INVX1 U37 ( .A(n54), .Y(n43) );
  OAI21X1 U38 ( .A(n55), .B(n13), .C(n19), .Y(n54) );
  INVX1 U39 ( .A(n56), .Y(n19) );
  OAI21X1 U40 ( .A(dataRead_sram), .B(n57), .C(n58), .Y(n56) );
  NOR2X1 U41 ( .A(n59), .B(n60), .Y(n13) );
  MUX2X1 U42 ( .B(n61), .A(n62), .S(n18), .Y(n184) );
  INVX1 U43 ( .A(n59), .Y(n18) );
  NAND3X1 U44 ( .A(n63), .B(n64), .C(n65), .Y(n59) );
  OAI21X1 U45 ( .A(n66), .B(n67), .C(n32), .Y(n65) );
  INVX1 U46 ( .A(dataRead_sram), .Y(n32) );
  NAND2X1 U47 ( .A(n68), .B(n58), .Y(n67) );
  NAND2X1 U48 ( .A(n69), .B(n70), .Y(n64) );
  NOR2X1 U49 ( .A(start_flag), .B(n71), .Y(n69) );
  OAI21X1 U50 ( .A(n72), .B(n42), .C(n73), .Y(n63) );
  INVX1 U51 ( .A(dataRead_sdram), .Y(n73) );
  OAI21X1 U52 ( .A(n74), .B(n71), .C(n75), .Y(n42) );
  AND2X1 U53 ( .A(n76), .B(n77), .Y(n62) );
  AOI21X1 U54 ( .A(dataRead_sram), .B(n78), .C(n79), .Y(n77) );
  OAI21X1 U55 ( .A(n12), .B(n80), .C(n81), .Y(n79) );
  INVX1 U56 ( .A(n60), .Y(n81) );
  NOR2X1 U57 ( .A(n82), .B(n83), .Y(n76) );
  OAI21X1 U58 ( .A(rollover_i), .B(n28), .C(n84), .Y(n83) );
  NAND3X1 U59 ( .A(n85), .B(n86), .C(n87), .Y(n183) );
  NOR2X1 U60 ( .A(n88), .B(n89), .Y(n87) );
  NAND2X1 U61 ( .A(n90), .B(n39), .Y(n89) );
  INVX1 U62 ( .A(n91), .Y(n39) );
  NAND3X1 U63 ( .A(n92), .B(n93), .C(n94), .Y(n91) );
  AOI22X1 U64 ( .A(n95), .B(n30), .C(rollover_i), .D(n96), .Y(n94) );
  INVX1 U65 ( .A(rollover_i_wr), .Y(n30) );
  INVX1 U66 ( .A(n29), .Y(n95) );
  OAI21X1 U67 ( .A(n12), .B(n80), .C(n97), .Y(n88) );
  INVX1 U68 ( .A(rollover_j), .Y(n80) );
  AND2X1 U69 ( .A(n98), .B(n99), .Y(n86) );
  NOR2X1 U70 ( .A(n41), .B(n60), .Y(n85) );
  NOR2X1 U71 ( .A(n100), .B(n101), .Y(n60) );
  NAND3X1 U72 ( .A(n102), .B(n84), .C(n103), .Y(n101) );
  INVX1 U73 ( .A(n104), .Y(n102) );
  NAND3X1 U74 ( .A(n99), .B(n105), .C(n106), .Y(n100) );
  INVX1 U75 ( .A(N511), .Y(n105) );
  INVX1 U76 ( .A(n24), .Y(n41) );
  NAND3X1 U77 ( .A(n29), .B(n107), .C(n97), .Y(N515) );
  INVX1 U78 ( .A(N513), .Y(n107) );
  NAND3X1 U79 ( .A(n98), .B(n11), .C(n90), .Y(N513) );
  NOR2X1 U80 ( .A(n108), .B(n109), .Y(n11) );
  NAND3X1 U81 ( .A(n110), .B(n111), .C(n20), .Y(n109) );
  NOR2X1 U82 ( .A(n104), .B(n112), .Y(n20) );
  NAND3X1 U83 ( .A(n92), .B(n53), .C(n113), .Y(n104) );
  OAI21X1 U84 ( .A(n70), .B(n114), .C(n115), .Y(n113) );
  INVX1 U85 ( .A(n116), .Y(n111) );
  INVX1 U86 ( .A(n117), .Y(n110) );
  NAND3X1 U87 ( .A(n118), .B(n119), .C(n106), .Y(n108) );
  NOR2X1 U88 ( .A(n120), .B(n72), .Y(n106) );
  INVX1 U89 ( .A(n93), .Y(n72) );
  INVX1 U90 ( .A(N509), .Y(n119) );
  NAND3X1 U91 ( .A(n57), .B(n121), .C(n122), .Y(N511) );
  NOR2X1 U92 ( .A(n117), .B(n123), .Y(n122) );
  NAND2X1 U93 ( .A(n29), .B(n124), .Y(n123) );
  NAND3X1 U94 ( .A(n12), .B(n24), .C(n125), .Y(n117) );
  NOR2X1 U95 ( .A(N507), .B(n96), .Y(n125) );
  NAND2X1 U96 ( .A(n126), .B(n127), .Y(n12) );
  INVX1 U97 ( .A(n82), .Y(n121) );
  NAND3X1 U98 ( .A(n97), .B(n128), .C(n129), .Y(n82) );
  NOR2X1 U99 ( .A(n112), .B(n130), .Y(n129) );
  INVX1 U100 ( .A(n68), .Y(n130) );
  NOR2X1 U101 ( .A(N501), .B(n66), .Y(n97) );
  AND2X1 U102 ( .A(n131), .B(n132), .Y(n66) );
  NAND3X1 U103 ( .A(n90), .B(n24), .C(n133), .Y(N510) );
  NOR2X1 U104 ( .A(n96), .B(n134), .Y(n133) );
  NAND2X1 U105 ( .A(n92), .B(n93), .Y(n134) );
  NAND2X1 U106 ( .A(n132), .B(n70), .Y(n93) );
  INVX1 U107 ( .A(n135), .Y(n90) );
  NAND3X1 U108 ( .A(n128), .B(n99), .C(n84), .Y(N509) );
  INVX1 U109 ( .A(n136), .Y(n128) );
  NAND3X1 U110 ( .A(n31), .B(n137), .C(n58), .Y(n136) );
  NAND3X1 U111 ( .A(state[2]), .B(n138), .C(n115), .Y(n58) );
  NAND3X1 U112 ( .A(n139), .B(n84), .C(n140), .Y(N508) );
  NOR2X1 U113 ( .A(n116), .B(n135), .Y(n140) );
  NAND2X1 U114 ( .A(n124), .B(n48), .Y(n135) );
  OAI21X1 U115 ( .A(n71), .B(n141), .C(n68), .Y(n116) );
  NAND2X1 U116 ( .A(n131), .B(n127), .Y(n68) );
  INVX1 U117 ( .A(n142), .Y(n84) );
  OAI21X1 U118 ( .A(n143), .B(n144), .C(n145), .Y(n142) );
  NOR2X1 U119 ( .A(n146), .B(n34), .Y(n145) );
  INVX1 U120 ( .A(n75), .Y(n34) );
  NAND3X1 U121 ( .A(n138), .B(n55), .C(n115), .Y(n75) );
  NOR2X1 U122 ( .A(n112), .B(n96), .Y(n139) );
  INVX1 U123 ( .A(n147), .Y(N507) );
  NAND3X1 U124 ( .A(n138), .B(n55), .C(n148), .Y(n147) );
  NAND2X1 U125 ( .A(n25), .B(n24), .Y(N506) );
  NAND2X1 U126 ( .A(n148), .B(n70), .Y(n24) );
  INVX1 U127 ( .A(n149), .Y(n70) );
  AOI21X1 U128 ( .A(n127), .B(n150), .C(n120), .Y(n25) );
  NOR2X1 U129 ( .A(n149), .B(n143), .Y(n120) );
  INVX1 U130 ( .A(n127), .Y(n143) );
  NAND3X1 U131 ( .A(n55), .B(n61), .C(n35), .Y(n149) );
  NAND3X1 U132 ( .A(n103), .B(n57), .C(n151), .Y(N505) );
  NOR2X1 U133 ( .A(n152), .B(n153), .Y(n151) );
  NAND2X1 U134 ( .A(n31), .B(n50), .Y(n153) );
  NAND3X1 U135 ( .A(n127), .B(n35), .C(n154), .Y(n31) );
  NOR2X1 U136 ( .A(n61), .B(n55), .Y(n154) );
  INVX1 U137 ( .A(n78), .Y(n57) );
  OAI21X1 U138 ( .A(n71), .B(n141), .C(n98), .Y(n78) );
  NAND2X1 U139 ( .A(n131), .B(n148), .Y(n98) );
  INVX1 U140 ( .A(n141), .Y(n131) );
  NAND3X1 U141 ( .A(state[1]), .B(n61), .C(state[2]), .Y(n141) );
  AND2X1 U142 ( .A(n118), .B(n48), .Y(n103) );
  NAND2X1 U143 ( .A(n132), .B(n114), .Y(n48) );
  NAND3X1 U144 ( .A(n155), .B(n99), .C(n156), .Y(N504) );
  NOR2X1 U145 ( .A(n146), .B(n152), .Y(n156) );
  INVX1 U146 ( .A(n92), .Y(n152) );
  NAND2X1 U147 ( .A(n148), .B(n114), .Y(n92) );
  INVX1 U148 ( .A(n50), .Y(n146) );
  NAND3X1 U149 ( .A(n127), .B(n55), .C(n138), .Y(n50) );
  NAND3X1 U150 ( .A(n138), .B(n127), .C(state[2]), .Y(n99) );
  NOR2X1 U151 ( .A(n61), .B(n35), .Y(n138) );
  NOR2X1 U152 ( .A(n157), .B(n112), .Y(n155) );
  NOR2X1 U153 ( .A(n144), .B(n71), .Y(n112) );
  INVX1 U154 ( .A(n115), .Y(n71) );
  INVX1 U155 ( .A(n124), .Y(n157) );
  OR2X1 U156 ( .A(n96), .B(N503), .Y(N502) );
  NAND3X1 U157 ( .A(n29), .B(n53), .C(n158), .Y(N503) );
  NAND2X1 U158 ( .A(n126), .B(n115), .Y(n53) );
  NAND2X1 U159 ( .A(n132), .B(n150), .Y(n29) );
  INVX1 U160 ( .A(n28), .Y(n96) );
  NAND2X1 U161 ( .A(n126), .B(n132), .Y(n28) );
  AND2X1 U162 ( .A(state[4]), .B(state[0]), .Y(n132) );
  AND2X1 U163 ( .A(n148), .B(n150), .Y(N501) );
  INVX1 U164 ( .A(n144), .Y(n150) );
  NAND3X1 U165 ( .A(n35), .B(n55), .C(state[3]), .Y(n144) );
  NAND2X1 U166 ( .A(n158), .B(n118), .Y(N499) );
  NAND2X1 U167 ( .A(n127), .B(n114), .Y(n118) );
  INVX1 U168 ( .A(n74), .Y(n114) );
  NAND3X1 U169 ( .A(n55), .B(n61), .C(state[1]), .Y(n74) );
  INVX1 U170 ( .A(state[2]), .Y(n55) );
  NOR2X1 U171 ( .A(n14), .B(state[4]), .Y(n127) );
  INVX1 U172 ( .A(n22), .Y(n158) );
  NAND2X1 U173 ( .A(n137), .B(n124), .Y(n22) );
  NAND2X1 U174 ( .A(n148), .B(n126), .Y(n124) );
  INVX1 U175 ( .A(n159), .Y(n126) );
  NAND3X1 U176 ( .A(n35), .B(n61), .C(state[2]), .Y(n159) );
  INVX1 U177 ( .A(state[1]), .Y(n35) );
  AND2X1 U178 ( .A(state[4]), .B(n14), .Y(n148) );
  INVX1 U179 ( .A(state[0]), .Y(n14) );
  NAND3X1 U180 ( .A(n115), .B(state[2]), .C(n160), .Y(n137) );
  NOR2X1 U181 ( .A(state[1]), .B(n61), .Y(n160) );
  INVX1 U182 ( .A(state[3]), .Y(n61) );
  NOR2X1 U183 ( .A(state[0]), .B(state[4]), .Y(n115) );
endmodule


module wbuffer ( clk, nrst, enable_CU, mode, data_read, data, w_1, w_2, w_3, 
        w_4 );
  input [2:0] mode;
  input [7:0] data_read;
  input [7:0] data;
  output [7:0] w_1;
  output [7:0] w_2;
  output [7:0] w_3;
  output [7:0] w_4;
  input clk, nrst, enable_CU;
  wire   n114, n115, n116, n117, n118, n119, n120, n121, n122, n123, n124,
         n125, n126, n127, n128, n129, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54,
         n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68,
         n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82,
         n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96,
         n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108,
         n109, n110;

  DFFSR \wb_4_curr_reg[7]  ( .D(n95), .CLK(clk), .R(nrst), .S(1'b1), .Q(w_4[7]) );
  DFFSR \wb_4_curr_reg[6]  ( .D(n96), .CLK(clk), .R(nrst), .S(1'b1), .Q(w_4[6]) );
  DFFSR \wb_4_curr_reg[5]  ( .D(n97), .CLK(clk), .R(nrst), .S(1'b1), .Q(w_4[5]) );
  DFFSR \wb_4_curr_reg[4]  ( .D(n98), .CLK(clk), .R(nrst), .S(1'b1), .Q(w_4[4]) );
  DFFSR \wb_4_curr_reg[3]  ( .D(n99), .CLK(clk), .R(nrst), .S(1'b1), .Q(w_4[3]) );
  DFFSR \wb_4_curr_reg[2]  ( .D(n100), .CLK(clk), .R(nrst), .S(1'b1), .Q(
        w_4[2]) );
  DFFSR \wb_4_curr_reg[1]  ( .D(n101), .CLK(clk), .R(nrst), .S(1'b1), .Q(
        w_4[1]) );
  DFFSR \wb_4_curr_reg[0]  ( .D(n102), .CLK(clk), .R(nrst), .S(1'b1), .Q(
        w_4[0]) );
  DFFSR \wb_2_curr_reg[7]  ( .D(n103), .CLK(clk), .R(nrst), .S(1'b1), .Q(
        w_2[7]) );
  DFFSR \wb_1_curr_reg[7]  ( .D(n122), .CLK(clk), .R(nrst), .S(1'b1), .Q(
        w_1[7]) );
  DFFSR \wb_2_curr_reg[6]  ( .D(n104), .CLK(clk), .R(nrst), .S(1'b1), .Q(
        w_2[6]) );
  DFFSR \wb_1_curr_reg[6]  ( .D(n123), .CLK(clk), .R(nrst), .S(1'b1), .Q(
        w_1[6]) );
  DFFSR \wb_2_curr_reg[5]  ( .D(n105), .CLK(clk), .R(nrst), .S(1'b1), .Q(
        w_2[5]) );
  DFFSR \wb_1_curr_reg[5]  ( .D(n124), .CLK(clk), .R(nrst), .S(1'b1), .Q(
        w_1[5]) );
  DFFSR \wb_2_curr_reg[4]  ( .D(n106), .CLK(clk), .R(nrst), .S(1'b1), .Q(
        w_2[4]) );
  DFFSR \wb_1_curr_reg[4]  ( .D(n125), .CLK(clk), .R(nrst), .S(1'b1), .Q(
        w_1[4]) );
  DFFSR \wb_2_curr_reg[3]  ( .D(n107), .CLK(clk), .R(nrst), .S(1'b1), .Q(
        w_2[3]) );
  DFFSR \wb_1_curr_reg[3]  ( .D(n126), .CLK(clk), .R(nrst), .S(1'b1), .Q(
        w_1[3]) );
  DFFSR \wb_2_curr_reg[2]  ( .D(n108), .CLK(clk), .R(nrst), .S(1'b1), .Q(
        w_2[2]) );
  DFFSR \wb_1_curr_reg[2]  ( .D(n127), .CLK(clk), .R(nrst), .S(1'b1), .Q(
        w_1[2]) );
  DFFSR \wb_2_curr_reg[1]  ( .D(n109), .CLK(clk), .R(nrst), .S(1'b1), .Q(
        w_2[1]) );
  DFFSR \wb_1_curr_reg[1]  ( .D(n128), .CLK(clk), .R(nrst), .S(1'b1), .Q(
        w_1[1]) );
  DFFSR \wb_2_curr_reg[0]  ( .D(n110), .CLK(clk), .R(nrst), .S(1'b1), .Q(
        w_2[0]) );
  DFFSR \wb_1_curr_reg[0]  ( .D(n129), .CLK(clk), .R(nrst), .S(1'b1), .Q(
        w_1[0]) );
  DFFSR \wb_3_curr_reg[7]  ( .D(n114), .CLK(clk), .R(nrst), .S(1'b1), .Q(
        w_3[7]) );
  DFFSR \wb_3_curr_reg[6]  ( .D(n115), .CLK(clk), .R(nrst), .S(1'b1), .Q(
        w_3[6]) );
  DFFSR \wb_3_curr_reg[5]  ( .D(n116), .CLK(clk), .R(nrst), .S(1'b1), .Q(
        w_3[5]) );
  DFFSR \wb_3_curr_reg[4]  ( .D(n117), .CLK(clk), .R(nrst), .S(1'b1), .Q(
        w_3[4]) );
  DFFSR \wb_3_curr_reg[3]  ( .D(n118), .CLK(clk), .R(nrst), .S(1'b1), .Q(
        w_3[3]) );
  DFFSR \wb_3_curr_reg[2]  ( .D(n119), .CLK(clk), .R(nrst), .S(1'b1), .Q(
        w_3[2]) );
  DFFSR \wb_3_curr_reg[1]  ( .D(n120), .CLK(clk), .R(nrst), .S(1'b1), .Q(
        w_3[1]) );
  DFFSR \wb_3_curr_reg[0]  ( .D(n121), .CLK(clk), .R(nrst), .S(1'b1), .Q(
        w_3[0]) );
  OR2X2 U34 ( .A(n53), .B(n42), .Y(n55) );
  INVX1 U35 ( .A(n33), .Y(n95) );
  MUX2X1 U36 ( .B(w_4[7]), .A(data_read[7]), .S(n34), .Y(n33) );
  INVX1 U37 ( .A(n35), .Y(n96) );
  MUX2X1 U38 ( .B(w_4[6]), .A(data_read[6]), .S(n34), .Y(n35) );
  INVX1 U39 ( .A(n36), .Y(n97) );
  MUX2X1 U40 ( .B(w_4[5]), .A(data_read[5]), .S(n34), .Y(n36) );
  INVX1 U41 ( .A(n37), .Y(n98) );
  MUX2X1 U42 ( .B(w_4[4]), .A(data_read[4]), .S(n34), .Y(n37) );
  INVX1 U43 ( .A(n38), .Y(n99) );
  MUX2X1 U44 ( .B(w_4[3]), .A(data_read[3]), .S(n34), .Y(n38) );
  INVX1 U45 ( .A(n39), .Y(n100) );
  MUX2X1 U46 ( .B(w_4[2]), .A(data_read[2]), .S(n34), .Y(n39) );
  INVX1 U47 ( .A(n40), .Y(n101) );
  MUX2X1 U48 ( .B(w_4[1]), .A(data_read[1]), .S(n34), .Y(n40) );
  INVX1 U49 ( .A(n41), .Y(n102) );
  MUX2X1 U50 ( .B(w_4[0]), .A(data_read[0]), .S(n34), .Y(n41) );
  NOR2X1 U51 ( .A(n42), .B(mode[0]), .Y(n34) );
  INVX1 U52 ( .A(n43), .Y(n103) );
  MUX2X1 U53 ( .B(data[7]), .A(w_2[7]), .S(n44), .Y(n43) );
  INVX1 U54 ( .A(n45), .Y(n104) );
  MUX2X1 U55 ( .B(data[6]), .A(w_2[6]), .S(n44), .Y(n45) );
  INVX1 U56 ( .A(n46), .Y(n105) );
  MUX2X1 U57 ( .B(data[5]), .A(w_2[5]), .S(n44), .Y(n46) );
  INVX1 U58 ( .A(n47), .Y(n106) );
  MUX2X1 U59 ( .B(data[4]), .A(w_2[4]), .S(n44), .Y(n47) );
  INVX1 U60 ( .A(n48), .Y(n107) );
  MUX2X1 U61 ( .B(data[3]), .A(w_2[3]), .S(n44), .Y(n48) );
  INVX1 U62 ( .A(n49), .Y(n108) );
  MUX2X1 U63 ( .B(data[2]), .A(w_2[2]), .S(n44), .Y(n49) );
  INVX1 U64 ( .A(n50), .Y(n109) );
  MUX2X1 U65 ( .B(data[1]), .A(w_2[1]), .S(n44), .Y(n50) );
  INVX1 U66 ( .A(n51), .Y(n110) );
  MUX2X1 U67 ( .B(data[0]), .A(w_2[0]), .S(n44), .Y(n51) );
  NAND3X1 U68 ( .A(n52), .B(n53), .C(mode[1]), .Y(n44) );
  OAI21X1 U69 ( .A(n54), .B(n55), .C(n56), .Y(n129) );
  AOI22X1 U70 ( .A(w_1[0]), .B(n57), .C(n58), .D(data[0]), .Y(n56) );
  INVX1 U71 ( .A(w_2[0]), .Y(n54) );
  OAI21X1 U72 ( .A(n59), .B(n55), .C(n60), .Y(n128) );
  AOI22X1 U73 ( .A(w_1[1]), .B(n57), .C(n58), .D(data[1]), .Y(n60) );
  INVX1 U74 ( .A(w_2[1]), .Y(n59) );
  OAI21X1 U75 ( .A(n61), .B(n55), .C(n62), .Y(n127) );
  AOI22X1 U76 ( .A(w_1[2]), .B(n57), .C(n58), .D(data[2]), .Y(n62) );
  INVX1 U77 ( .A(w_2[2]), .Y(n61) );
  OAI21X1 U78 ( .A(n63), .B(n55), .C(n64), .Y(n126) );
  AOI22X1 U79 ( .A(w_1[3]), .B(n57), .C(n58), .D(data[3]), .Y(n64) );
  INVX1 U80 ( .A(w_2[3]), .Y(n63) );
  OAI21X1 U81 ( .A(n65), .B(n55), .C(n66), .Y(n125) );
  AOI22X1 U82 ( .A(w_1[4]), .B(n57), .C(n58), .D(data[4]), .Y(n66) );
  INVX1 U83 ( .A(w_2[4]), .Y(n65) );
  OAI21X1 U84 ( .A(n67), .B(n55), .C(n68), .Y(n124) );
  AOI22X1 U85 ( .A(w_1[5]), .B(n57), .C(n58), .D(data[5]), .Y(n68) );
  INVX1 U86 ( .A(w_2[5]), .Y(n67) );
  OAI21X1 U87 ( .A(n69), .B(n55), .C(n70), .Y(n123) );
  AOI22X1 U88 ( .A(w_1[6]), .B(n57), .C(n58), .D(data[6]), .Y(n70) );
  INVX1 U89 ( .A(w_2[6]), .Y(n69) );
  OAI21X1 U90 ( .A(n71), .B(n55), .C(n72), .Y(n122) );
  AOI22X1 U91 ( .A(w_1[7]), .B(n57), .C(n58), .D(data[7]), .Y(n72) );
  INVX1 U92 ( .A(n73), .Y(n58) );
  AND2X1 U93 ( .A(n55), .B(n73), .Y(n57) );
  NAND3X1 U94 ( .A(n52), .B(n74), .C(mode[0]), .Y(n73) );
  INVX1 U95 ( .A(w_2[7]), .Y(n71) );
  OAI21X1 U96 ( .A(n75), .B(n55), .C(n76), .Y(n121) );
  AOI22X1 U97 ( .A(w_3[0]), .B(n77), .C(n78), .D(data_read[0]), .Y(n76) );
  INVX1 U98 ( .A(w_4[0]), .Y(n75) );
  OAI21X1 U99 ( .A(n79), .B(n55), .C(n80), .Y(n120) );
  AOI22X1 U100 ( .A(w_3[1]), .B(n77), .C(n78), .D(data_read[1]), .Y(n80) );
  INVX1 U101 ( .A(w_4[1]), .Y(n79) );
  OAI21X1 U102 ( .A(n81), .B(n55), .C(n82), .Y(n119) );
  AOI22X1 U103 ( .A(w_3[2]), .B(n77), .C(n78), .D(data_read[2]), .Y(n82) );
  INVX1 U104 ( .A(w_4[2]), .Y(n81) );
  OAI21X1 U105 ( .A(n83), .B(n55), .C(n84), .Y(n118) );
  AOI22X1 U106 ( .A(w_3[3]), .B(n77), .C(n78), .D(data_read[3]), .Y(n84) );
  INVX1 U107 ( .A(w_4[3]), .Y(n83) );
  OAI21X1 U108 ( .A(n85), .B(n55), .C(n86), .Y(n117) );
  AOI22X1 U109 ( .A(w_3[4]), .B(n77), .C(n78), .D(data_read[4]), .Y(n86) );
  INVX1 U110 ( .A(w_4[4]), .Y(n85) );
  OAI21X1 U111 ( .A(n87), .B(n55), .C(n88), .Y(n116) );
  AOI22X1 U112 ( .A(w_3[5]), .B(n77), .C(n78), .D(data_read[5]), .Y(n88) );
  INVX1 U113 ( .A(w_4[5]), .Y(n87) );
  OAI21X1 U114 ( .A(n89), .B(n55), .C(n90), .Y(n115) );
  AOI22X1 U115 ( .A(w_3[6]), .B(n77), .C(n78), .D(data_read[6]), .Y(n90) );
  INVX1 U116 ( .A(w_4[6]), .Y(n89) );
  OAI21X1 U117 ( .A(n91), .B(n55), .C(n92), .Y(n114) );
  AOI22X1 U118 ( .A(w_3[7]), .B(n77), .C(n78), .D(data_read[7]), .Y(n92) );
  INVX1 U119 ( .A(n93), .Y(n78) );
  AND2X1 U120 ( .A(n55), .B(n93), .Y(n77) );
  NAND3X1 U121 ( .A(mode[1]), .B(n52), .C(mode[0]), .Y(n93) );
  NOR2X1 U122 ( .A(n94), .B(mode[2]), .Y(n52) );
  INVX1 U123 ( .A(enable_CU), .Y(n94) );
  NAND3X1 U124 ( .A(enable_CU), .B(n74), .C(mode[2]), .Y(n42) );
  INVX1 U125 ( .A(mode[1]), .Y(n74) );
  INVX1 U126 ( .A(mode[0]), .Y(n53) );
  INVX1 U127 ( .A(w_4[7]), .Y(n91) );
endmodule


module rggb ( wb_1, wb_2, wb_3, wb_4, row, col, out );
  input [7:0] wb_1;
  input [7:0] wb_2;
  input [7:0] wb_3;
  input [7:0] wb_4;
  output [31:0] out;
  input row, col;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57;

  BUFX2 U2 ( .A(n6), .Y(n1) );
  BUFX2 U3 ( .A(n8), .Y(n2) );
  BUFX2 U4 ( .A(n7), .Y(n3) );
  OR2X2 U5 ( .A(n2), .B(n9), .Y(n40) );
  AND2X2 U6 ( .A(row), .B(col), .Y(n9) );
  NAND2X1 U7 ( .A(n4), .B(n5), .Y(out[7]) );
  AOI22X1 U8 ( .A(wb_4[7]), .B(n1), .C(wb_1[7]), .D(n3), .Y(n5) );
  AOI22X1 U9 ( .A(wb_2[7]), .B(n2), .C(wb_3[7]), .D(n9), .Y(n4) );
  NAND2X1 U10 ( .A(n10), .B(n11), .Y(out[6]) );
  AOI22X1 U11 ( .A(wb_4[6]), .B(n1), .C(wb_1[6]), .D(n3), .Y(n11) );
  AOI22X1 U12 ( .A(wb_2[6]), .B(n2), .C(wb_3[6]), .D(n9), .Y(n10) );
  NAND2X1 U13 ( .A(n12), .B(n13), .Y(out[5]) );
  AOI22X1 U14 ( .A(wb_4[5]), .B(n1), .C(wb_1[5]), .D(n3), .Y(n13) );
  AOI22X1 U15 ( .A(wb_2[5]), .B(n2), .C(wb_3[5]), .D(n9), .Y(n12) );
  NAND2X1 U16 ( .A(n14), .B(n15), .Y(out[4]) );
  AOI22X1 U17 ( .A(wb_4[4]), .B(n1), .C(wb_1[4]), .D(n3), .Y(n15) );
  AOI22X1 U18 ( .A(wb_2[4]), .B(n2), .C(wb_3[4]), .D(n9), .Y(n14) );
  NAND2X1 U19 ( .A(n16), .B(n17), .Y(out[3]) );
  AOI22X1 U20 ( .A(wb_4[3]), .B(n1), .C(wb_1[3]), .D(n3), .Y(n17) );
  AOI22X1 U21 ( .A(wb_2[3]), .B(n2), .C(wb_3[3]), .D(n9), .Y(n16) );
  NAND2X1 U22 ( .A(n18), .B(n19), .Y(out[31]) );
  AOI22X1 U23 ( .A(wb_1[7]), .B(n1), .C(n3), .D(wb_4[7]), .Y(n19) );
  AOI22X1 U24 ( .A(wb_3[7]), .B(n2), .C(n9), .D(wb_2[7]), .Y(n18) );
  NAND2X1 U25 ( .A(n20), .B(n21), .Y(out[30]) );
  AOI22X1 U26 ( .A(wb_1[6]), .B(n1), .C(wb_4[6]), .D(n3), .Y(n21) );
  AOI22X1 U27 ( .A(wb_3[6]), .B(n2), .C(wb_2[6]), .D(n9), .Y(n20) );
  NAND2X1 U28 ( .A(n22), .B(n23), .Y(out[2]) );
  AOI22X1 U29 ( .A(wb_4[2]), .B(n1), .C(wb_1[2]), .D(n3), .Y(n23) );
  AOI22X1 U30 ( .A(wb_2[2]), .B(n2), .C(wb_3[2]), .D(n9), .Y(n22) );
  NAND2X1 U31 ( .A(n24), .B(n25), .Y(out[29]) );
  AOI22X1 U32 ( .A(wb_1[5]), .B(n1), .C(wb_4[5]), .D(n3), .Y(n25) );
  AOI22X1 U33 ( .A(wb_3[5]), .B(n2), .C(wb_2[5]), .D(n9), .Y(n24) );
  NAND2X1 U34 ( .A(n26), .B(n27), .Y(out[28]) );
  AOI22X1 U35 ( .A(wb_1[4]), .B(n1), .C(wb_4[4]), .D(n3), .Y(n27) );
  AOI22X1 U36 ( .A(wb_3[4]), .B(n2), .C(wb_2[4]), .D(n9), .Y(n26) );
  NAND2X1 U37 ( .A(n28), .B(n29), .Y(out[27]) );
  AOI22X1 U38 ( .A(wb_1[3]), .B(n1), .C(wb_4[3]), .D(n3), .Y(n29) );
  AOI22X1 U39 ( .A(wb_3[3]), .B(n2), .C(wb_2[3]), .D(n9), .Y(n28) );
  NAND2X1 U40 ( .A(n30), .B(n31), .Y(out[26]) );
  AOI22X1 U41 ( .A(wb_1[2]), .B(n1), .C(wb_4[2]), .D(n3), .Y(n31) );
  AOI22X1 U42 ( .A(wb_3[2]), .B(n2), .C(wb_2[2]), .D(n9), .Y(n30) );
  NAND2X1 U43 ( .A(n32), .B(n33), .Y(out[25]) );
  AOI22X1 U44 ( .A(wb_1[1]), .B(n1), .C(wb_4[1]), .D(n3), .Y(n33) );
  AOI22X1 U45 ( .A(wb_3[1]), .B(n2), .C(wb_2[1]), .D(n9), .Y(n32) );
  NAND2X1 U46 ( .A(n34), .B(n35), .Y(out[24]) );
  AOI22X1 U47 ( .A(wb_1[0]), .B(n1), .C(wb_4[0]), .D(n3), .Y(n35) );
  AOI22X1 U48 ( .A(wb_3[0]), .B(n2), .C(wb_2[0]), .D(n9), .Y(n34) );
  NAND2X1 U49 ( .A(n36), .B(n37), .Y(out[1]) );
  AOI22X1 U50 ( .A(wb_4[1]), .B(n1), .C(wb_1[1]), .D(n3), .Y(n37) );
  AOI22X1 U51 ( .A(wb_2[1]), .B(n2), .C(wb_3[1]), .D(n9), .Y(n36) );
  NAND2X1 U52 ( .A(n38), .B(n39), .Y(out[0]) );
  AOI22X1 U53 ( .A(wb_4[0]), .B(n1), .C(wb_1[0]), .D(n3), .Y(n39) );
  NOR2X1 U54 ( .A(n40), .B(n3), .Y(n6) );
  NOR2X1 U55 ( .A(n41), .B(row), .Y(n7) );
  INVX1 U56 ( .A(col), .Y(n41) );
  AOI22X1 U57 ( .A(wb_2[0]), .B(n2), .C(wb_3[0]), .D(n9), .Y(n38) );
  INVX1 U58 ( .A(n42), .Y(out[10]) );
  MUX2X1 U59 ( .B(wb_3[2]), .A(wb_4[2]), .S(n40), .Y(n42) );
  INVX1 U60 ( .A(n43), .Y(out[11]) );
  MUX2X1 U61 ( .B(wb_3[3]), .A(wb_4[3]), .S(n40), .Y(n43) );
  INVX1 U62 ( .A(n44), .Y(out[12]) );
  MUX2X1 U63 ( .B(wb_3[4]), .A(wb_4[4]), .S(n40), .Y(n44) );
  INVX1 U64 ( .A(n45), .Y(out[13]) );
  MUX2X1 U65 ( .B(wb_3[5]), .A(wb_4[5]), .S(n40), .Y(n45) );
  INVX1 U66 ( .A(n46), .Y(out[14]) );
  MUX2X1 U67 ( .B(wb_3[6]), .A(wb_4[6]), .S(n40), .Y(n46) );
  INVX1 U68 ( .A(n47), .Y(out[15]) );
  MUX2X1 U69 ( .B(wb_3[7]), .A(wb_4[7]), .S(n40), .Y(n47) );
  INVX1 U70 ( .A(n48), .Y(out[16]) );
  MUX2X1 U71 ( .B(wb_2[0]), .A(wb_1[0]), .S(n40), .Y(n48) );
  INVX1 U72 ( .A(n49), .Y(out[17]) );
  MUX2X1 U73 ( .B(wb_2[1]), .A(wb_1[1]), .S(n40), .Y(n49) );
  INVX1 U74 ( .A(n50), .Y(out[18]) );
  MUX2X1 U75 ( .B(wb_2[2]), .A(wb_1[2]), .S(n40), .Y(n50) );
  INVX1 U76 ( .A(n51), .Y(out[19]) );
  MUX2X1 U77 ( .B(wb_2[3]), .A(wb_1[3]), .S(n40), .Y(n51) );
  INVX1 U78 ( .A(n52), .Y(out[20]) );
  MUX2X1 U79 ( .B(wb_2[4]), .A(wb_1[4]), .S(n40), .Y(n52) );
  INVX1 U80 ( .A(n53), .Y(out[21]) );
  MUX2X1 U81 ( .B(wb_2[5]), .A(wb_1[5]), .S(n40), .Y(n53) );
  INVX1 U82 ( .A(n54), .Y(out[22]) );
  MUX2X1 U83 ( .B(wb_2[6]), .A(wb_1[6]), .S(n40), .Y(n54) );
  INVX1 U84 ( .A(n55), .Y(out[23]) );
  MUX2X1 U85 ( .B(wb_2[7]), .A(wb_1[7]), .S(n40), .Y(n55) );
  INVX1 U86 ( .A(n56), .Y(out[8]) );
  MUX2X1 U87 ( .B(wb_3[0]), .A(wb_4[0]), .S(n40), .Y(n56) );
  INVX1 U88 ( .A(n57), .Y(out[9]) );
  MUX2X1 U89 ( .B(wb_3[1]), .A(wb_4[1]), .S(n40), .Y(n57) );
  NOR2X1 U90 ( .A(col), .B(row), .Y(n8) );
endmodule


module brightnessFilter_DW01_add_0 ( A, B, CI, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [8:1] carry;

  FAX1 U1_7 ( .A(A[7]), .B(B[7]), .C(carry[7]), .YC(SUM[8]), .YS(SUM[7]) );
  FAX1 U1_6 ( .A(A[6]), .B(B[6]), .C(carry[6]), .YC(carry[7]), .YS(SUM[6]) );
  FAX1 U1_5 ( .A(A[5]), .B(B[5]), .C(carry[5]), .YC(carry[6]), .YS(SUM[5]) );
  FAX1 U1_4 ( .A(A[4]), .B(B[4]), .C(carry[4]), .YC(carry[5]), .YS(SUM[4]) );
  FAX1 U1_3 ( .A(A[3]), .B(B[3]), .C(carry[3]), .YC(carry[4]), .YS(SUM[3]) );
  FAX1 U1_2 ( .A(A[2]), .B(B[2]), .C(carry[2]), .YC(carry[3]), .YS(SUM[2]) );
  FAX1 U1_1 ( .A(A[1]), .B(B[1]), .C(n1), .YC(carry[2]), .YS(SUM[1]) );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module brightnessFilter_DW01_add_1 ( A, B, CI, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [8:1] carry;

  FAX1 U1_7 ( .A(A[7]), .B(B[7]), .C(carry[7]), .YC(SUM[8]), .YS(SUM[7]) );
  FAX1 U1_6 ( .A(A[6]), .B(B[6]), .C(carry[6]), .YC(carry[7]), .YS(SUM[6]) );
  FAX1 U1_5 ( .A(A[5]), .B(B[5]), .C(carry[5]), .YC(carry[6]), .YS(SUM[5]) );
  FAX1 U1_4 ( .A(A[4]), .B(B[4]), .C(carry[4]), .YC(carry[5]), .YS(SUM[4]) );
  FAX1 U1_3 ( .A(A[3]), .B(B[3]), .C(carry[3]), .YC(carry[4]), .YS(SUM[3]) );
  FAX1 U1_2 ( .A(A[2]), .B(B[2]), .C(carry[2]), .YC(carry[3]), .YS(SUM[2]) );
  FAX1 U1_1 ( .A(A[1]), .B(B[1]), .C(n1), .YC(carry[2]), .YS(SUM[1]) );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module brightnessFilter_DW01_add_2 ( A, B, CI, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [8:1] carry;

  FAX1 U1_7 ( .A(A[7]), .B(B[7]), .C(carry[7]), .YC(SUM[8]), .YS(SUM[7]) );
  FAX1 U1_6 ( .A(A[6]), .B(B[6]), .C(carry[6]), .YC(carry[7]), .YS(SUM[6]) );
  FAX1 U1_5 ( .A(A[5]), .B(B[5]), .C(carry[5]), .YC(carry[6]), .YS(SUM[5]) );
  FAX1 U1_4 ( .A(A[4]), .B(B[4]), .C(carry[4]), .YC(carry[5]), .YS(SUM[4]) );
  FAX1 U1_3 ( .A(A[3]), .B(B[3]), .C(carry[3]), .YC(carry[4]), .YS(SUM[3]) );
  FAX1 U1_2 ( .A(A[2]), .B(B[2]), .C(carry[2]), .YC(carry[3]), .YS(SUM[2]) );
  FAX1 U1_1 ( .A(A[1]), .B(B[1]), .C(n1), .YC(carry[2]), .YS(SUM[1]) );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module brightnessFilter ( in, beta, result );
  input [31:0] in;
  input [7:0] beta;
  output [31:0] result;

  wire   [8:0] red;
  wire   [8:0] green;
  wire   [8:0] blue;
  assign result[24] = 1'b1;
  assign result[25] = 1'b1;
  assign result[26] = 1'b1;
  assign result[27] = 1'b1;
  assign result[28] = 1'b1;
  assign result[29] = 1'b1;
  assign result[30] = 1'b1;
  assign result[31] = 1'b1;

  brightnessFilter_DW01_add_0 add_32 ( .A({1'b0, in[7:0]}), .B({1'b0, beta}), 
        .CI(1'b0), .SUM(blue) );
  brightnessFilter_DW01_add_1 add_30 ( .A({1'b0, in[23:16]}), .B({1'b0, beta}), 
        .CI(1'b0), .SUM(green) );
  brightnessFilter_DW01_add_2 add_29 ( .A({1'b0, in[31:24]}), .B({1'b0, beta}), 
        .CI(1'b0), .SUM(red) );
  OR2X1 U5 ( .A(green[1]), .B(green[8]), .Y(result[9]) );
  OR2X1 U6 ( .A(green[0]), .B(green[8]), .Y(result[8]) );
  OR2X1 U7 ( .A(blue[7]), .B(blue[8]), .Y(result[7]) );
  OR2X1 U8 ( .A(blue[6]), .B(blue[8]), .Y(result[6]) );
  OR2X1 U9 ( .A(blue[5]), .B(blue[8]), .Y(result[5]) );
  OR2X1 U10 ( .A(blue[4]), .B(blue[8]), .Y(result[4]) );
  OR2X1 U11 ( .A(blue[3]), .B(blue[8]), .Y(result[3]) );
  OR2X1 U12 ( .A(blue[2]), .B(blue[8]), .Y(result[2]) );
  OR2X1 U13 ( .A(red[7]), .B(red[8]), .Y(result[23]) );
  OR2X1 U14 ( .A(red[6]), .B(red[8]), .Y(result[22]) );
  OR2X1 U15 ( .A(red[5]), .B(red[8]), .Y(result[21]) );
  OR2X1 U16 ( .A(red[4]), .B(red[8]), .Y(result[20]) );
  OR2X1 U17 ( .A(blue[1]), .B(blue[8]), .Y(result[1]) );
  OR2X1 U18 ( .A(red[3]), .B(red[8]), .Y(result[19]) );
  OR2X1 U19 ( .A(red[2]), .B(red[8]), .Y(result[18]) );
  OR2X1 U20 ( .A(red[1]), .B(red[8]), .Y(result[17]) );
  OR2X1 U21 ( .A(red[0]), .B(red[8]), .Y(result[16]) );
  OR2X1 U22 ( .A(green[7]), .B(green[8]), .Y(result[15]) );
  OR2X1 U23 ( .A(green[6]), .B(green[8]), .Y(result[14]) );
  OR2X1 U24 ( .A(green[5]), .B(green[8]), .Y(result[13]) );
  OR2X1 U25 ( .A(green[4]), .B(green[8]), .Y(result[12]) );
  OR2X1 U26 ( .A(green[3]), .B(green[8]), .Y(result[11]) );
  OR2X1 U27 ( .A(green[2]), .B(green[8]), .Y(result[10]) );
  OR2X1 U28 ( .A(blue[0]), .B(blue[8]), .Y(result[0]) );
endmodule


module debayer_DW01_add_0 ( A, B, CI, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;

  wire   [8:1] carry;

  FAX1 U1_7 ( .A(A[7]), .B(B[7]), .C(carry[7]), .YC(SUM[8]), .YS(SUM[7]) );
  FAX1 U1_6 ( .A(A[6]), .B(B[6]), .C(carry[6]), .YC(carry[7]), .YS(SUM[6]) );
  FAX1 U1_5 ( .A(A[5]), .B(B[5]), .C(carry[5]), .YC(carry[6]), .YS(SUM[5]) );
  FAX1 U1_4 ( .A(A[4]), .B(B[4]), .C(carry[4]), .YC(carry[5]), .YS(SUM[4]) );
  FAX1 U1_3 ( .A(A[3]), .B(B[3]), .C(carry[3]), .YC(carry[4]), .YS(SUM[3]) );
  FAX1 U1_2 ( .A(A[2]), .B(B[2]), .C(carry[2]), .YC(carry[3]), .YS(SUM[2]) );
  FAX1 U1_1 ( .A(A[1]), .B(B[1]), .C(carry[1]), .YC(carry[2]), .YS(SUM[1]) );
  AND2X1 U1 ( .A(B[0]), .B(A[0]), .Y(carry[1]) );
endmodule


module debayer ( in, out );
  input [31:0] in;
  output [31:0] out;
  wire   \in[31] , \in[30] , \in[29] , \in[28] , \in[27] , \in[26] , \in[25] ,
         \in[24] , \in[7] , \in[6] , \in[5] , \in[4] , \in[3] , \in[2] ,
         \in[1] , \in[0] ;
  wire   SYNOPSYS_UNCONNECTED__0;
  assign out[24] = 1'b1;
  assign out[25] = 1'b1;
  assign out[26] = 1'b1;
  assign out[27] = 1'b1;
  assign out[28] = 1'b1;
  assign out[29] = 1'b1;
  assign out[30] = 1'b1;
  assign out[31] = 1'b1;
  assign out[23] = \in[31] ;
  assign \in[31]  = in[31];
  assign out[22] = \in[30] ;
  assign \in[30]  = in[30];
  assign out[21] = \in[29] ;
  assign \in[29]  = in[29];
  assign out[20] = \in[28] ;
  assign \in[28]  = in[28];
  assign out[19] = \in[27] ;
  assign \in[27]  = in[27];
  assign out[18] = \in[26] ;
  assign \in[26]  = in[26];
  assign out[17] = \in[25] ;
  assign \in[25]  = in[25];
  assign out[16] = \in[24] ;
  assign \in[24]  = in[24];
  assign out[7] = \in[7] ;
  assign \in[7]  = in[7];
  assign out[6] = \in[6] ;
  assign \in[6]  = in[6];
  assign out[5] = \in[5] ;
  assign \in[5]  = in[5];
  assign out[4] = \in[4] ;
  assign \in[4]  = in[4];
  assign out[3] = \in[3] ;
  assign \in[3]  = in[3];
  assign out[2] = \in[2] ;
  assign \in[2]  = in[2];
  assign out[1] = \in[1] ;
  assign \in[1]  = in[1];
  assign out[0] = \in[0] ;
  assign \in[0]  = in[0];

  debayer_DW01_add_0 add_20 ( .A({1'b0, in[23:16]}), .B({1'b0, in[15:8]}), 
        .CI(1'b0), .SUM({out[15:8], SYNOPSYS_UNCONNECTED__0}) );
endmodule


module horblur_DW01_add_0 ( A, B, CI, SUM, CO );
  input [10:0] A;
  input [10:0] B;
  output [10:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6;
  wire   [10:1] carry;
  assign SUM[10] = carry[10];

  FAX1 U1_9 ( .A(A[9]), .B(B[9]), .C(carry[9]), .YC(carry[10]), .YS(SUM[9]) );
  FAX1 U1_8 ( .A(A[8]), .B(B[8]), .C(carry[8]), .YC(carry[9]), .YS(SUM[8]) );
  FAX1 U1_7 ( .A(A[7]), .B(B[7]), .C(carry[7]), .YC(carry[8]), .YS(SUM[7]) );
  FAX1 U1_6 ( .A(A[6]), .B(B[6]), .C(carry[6]), .YC(carry[7]), .YS(SUM[6]) );
  FAX1 U1_5 ( .A(A[5]), .B(B[5]), .C(carry[5]), .YC(carry[6]), .YS(SUM[5]) );
  FAX1 U1_4 ( .A(A[4]), .B(B[4]), .C(carry[4]), .YC(carry[5]), .YS(SUM[4]) );
  FAX1 U1_3 ( .A(A[3]), .B(B[3]), .C(carry[3]), .YC(carry[4]), .YS(SUM[3]) );
  INVX2 U1 ( .A(A[2]), .Y(n1) );
  INVX2 U2 ( .A(n4), .Y(n2) );
  INVX2 U3 ( .A(n6), .Y(n3) );
  OAI21X1 U4 ( .A(n4), .B(n1), .C(n5), .Y(carry[3]) );
  OAI21X1 U5 ( .A(A[2]), .B(n2), .C(B[2]), .Y(n5) );
  AOI22X1 U6 ( .A(A[1]), .B(B[1]), .C(B[0]), .D(n3), .Y(n4) );
  OAI21X1 U7 ( .A(A[1]), .B(B[1]), .C(A[0]), .Y(n6) );
endmodule


module horblur_DW01_add_1 ( A, B, CI, SUM, CO );
  input [10:0] A;
  input [10:0] B;
  output [10:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [10:1] carry;
  assign SUM[9] = carry[9];

  FAX1 U1_8 ( .A(A[8]), .B(B[8]), .C(carry[8]), .YC(carry[9]), .YS(SUM[8]) );
  FAX1 U1_7 ( .A(A[7]), .B(B[7]), .C(carry[7]), .YC(carry[8]), .YS(SUM[7]) );
  FAX1 U1_6 ( .A(A[6]), .B(B[6]), .C(carry[6]), .YC(carry[7]), .YS(SUM[6]) );
  FAX1 U1_5 ( .A(A[5]), .B(B[5]), .C(carry[5]), .YC(carry[6]), .YS(SUM[5]) );
  FAX1 U1_4 ( .A(A[4]), .B(B[4]), .C(carry[4]), .YC(carry[5]), .YS(SUM[4]) );
  FAX1 U1_3 ( .A(A[3]), .B(B[3]), .C(carry[3]), .YC(carry[4]), .YS(SUM[3]) );
  FAX1 U1_2 ( .A(A[2]), .B(B[2]), .C(carry[2]), .YC(carry[3]), .YS(SUM[2]) );
  FAX1 U1_1 ( .A(A[1]), .B(B[1]), .C(n1), .YC(carry[2]), .YS(SUM[1]) );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module horblur_DW01_add_2 ( A, B, CI, SUM, CO );
  input [10:0] A;
  input [10:0] B;
  output [10:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [10:1] carry;
  assign SUM[9] = carry[9];

  FAX1 U1_8 ( .A(A[8]), .B(B[8]), .C(carry[8]), .YC(carry[9]), .YS(SUM[8]) );
  FAX1 U1_7 ( .A(A[7]), .B(B[7]), .C(carry[7]), .YC(carry[8]), .YS(SUM[7]) );
  FAX1 U1_6 ( .A(A[6]), .B(B[6]), .C(carry[6]), .YC(carry[7]), .YS(SUM[6]) );
  FAX1 U1_5 ( .A(A[5]), .B(B[5]), .C(carry[5]), .YC(carry[6]), .YS(SUM[5]) );
  FAX1 U1_4 ( .A(A[4]), .B(B[4]), .C(carry[4]), .YC(carry[5]), .YS(SUM[4]) );
  FAX1 U1_3 ( .A(A[3]), .B(B[3]), .C(carry[3]), .YC(carry[4]), .YS(SUM[3]) );
  FAX1 U1_2 ( .A(A[2]), .B(B[2]), .C(carry[2]), .YC(carry[3]), .YS(SUM[2]) );
  FAX1 U1_1 ( .A(A[1]), .B(B[1]), .C(n1), .YC(carry[2]), .YS(SUM[1]) );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module horblur_DW01_add_5 ( A, B, CI, SUM, CO );
  input [9:0] A;
  input [9:0] B;
  output [9:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [9:1] carry;

  FAX1 U1_7 ( .A(A[7]), .B(B[7]), .C(carry[7]), .YC(SUM[8]), .YS(SUM[7]) );
  FAX1 U1_6 ( .A(A[6]), .B(B[6]), .C(carry[6]), .YC(carry[7]), .YS(SUM[6]) );
  FAX1 U1_5 ( .A(A[5]), .B(B[5]), .C(carry[5]), .YC(carry[6]), .YS(SUM[5]) );
  FAX1 U1_4 ( .A(A[4]), .B(B[4]), .C(carry[4]), .YC(carry[5]), .YS(SUM[4]) );
  FAX1 U1_3 ( .A(A[3]), .B(B[3]), .C(carry[3]), .YC(carry[4]), .YS(SUM[3]) );
  FAX1 U1_2 ( .A(A[2]), .B(B[2]), .C(carry[2]), .YC(carry[3]), .YS(SUM[2]) );
  FAX1 U1_1 ( .A(A[1]), .B(B[1]), .C(n1), .YC(carry[2]), .YS(SUM[1]) );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module horblur_DW01_add_6 ( A, B, CI, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [8:1] carry;

  FAX1 U1_7 ( .A(A[7]), .B(B[7]), .C(carry[7]), .YC(SUM[8]), .YS(SUM[7]) );
  FAX1 U1_6 ( .A(A[6]), .B(B[6]), .C(carry[6]), .YC(carry[7]), .YS(SUM[6]) );
  FAX1 U1_5 ( .A(A[5]), .B(B[5]), .C(carry[5]), .YC(carry[6]), .YS(SUM[5]) );
  FAX1 U1_4 ( .A(A[4]), .B(B[4]), .C(carry[4]), .YC(carry[5]), .YS(SUM[4]) );
  FAX1 U1_3 ( .A(A[3]), .B(B[3]), .C(carry[3]), .YC(carry[4]), .YS(SUM[3]) );
  FAX1 U1_2 ( .A(A[2]), .B(B[2]), .C(carry[2]), .YC(carry[3]), .YS(SUM[2]) );
  FAX1 U1_1 ( .A(A[1]), .B(B[1]), .C(n1), .YC(carry[2]), .YS(SUM[1]) );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module horblur_DW01_add_7 ( A, B, CI, SUM, CO );
  input [10:0] A;
  input [10:0] B;
  output [10:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6;
  wire   [10:1] carry;
  assign SUM[10] = carry[10];

  FAX1 U1_9 ( .A(A[9]), .B(B[9]), .C(carry[9]), .YC(carry[10]), .YS(SUM[9]) );
  FAX1 U1_8 ( .A(A[8]), .B(B[8]), .C(carry[8]), .YC(carry[9]), .YS(SUM[8]) );
  FAX1 U1_7 ( .A(A[7]), .B(B[7]), .C(carry[7]), .YC(carry[8]), .YS(SUM[7]) );
  FAX1 U1_6 ( .A(A[6]), .B(B[6]), .C(carry[6]), .YC(carry[7]), .YS(SUM[6]) );
  FAX1 U1_5 ( .A(A[5]), .B(B[5]), .C(carry[5]), .YC(carry[6]), .YS(SUM[5]) );
  FAX1 U1_4 ( .A(A[4]), .B(B[4]), .C(carry[4]), .YC(carry[5]), .YS(SUM[4]) );
  FAX1 U1_3 ( .A(A[3]), .B(B[3]), .C(carry[3]), .YC(carry[4]), .YS(SUM[3]) );
  INVX2 U1 ( .A(A[2]), .Y(n1) );
  INVX2 U2 ( .A(n4), .Y(n2) );
  INVX2 U3 ( .A(n6), .Y(n3) );
  OAI21X1 U4 ( .A(n4), .B(n1), .C(n5), .Y(carry[3]) );
  OAI21X1 U5 ( .A(A[2]), .B(n2), .C(B[2]), .Y(n5) );
  AOI22X1 U6 ( .A(A[1]), .B(B[1]), .C(B[0]), .D(n3), .Y(n4) );
  OAI21X1 U7 ( .A(A[1]), .B(B[1]), .C(A[0]), .Y(n6) );
endmodule


module horblur_DW01_add_8 ( A, B, CI, SUM, CO );
  input [10:0] A;
  input [10:0] B;
  output [10:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [10:1] carry;
  assign SUM[9] = carry[9];

  FAX1 U1_8 ( .A(A[8]), .B(B[8]), .C(carry[8]), .YC(carry[9]), .YS(SUM[8]) );
  FAX1 U1_7 ( .A(A[7]), .B(B[7]), .C(carry[7]), .YC(carry[8]), .YS(SUM[7]) );
  FAX1 U1_6 ( .A(A[6]), .B(B[6]), .C(carry[6]), .YC(carry[7]), .YS(SUM[6]) );
  FAX1 U1_5 ( .A(A[5]), .B(B[5]), .C(carry[5]), .YC(carry[6]), .YS(SUM[5]) );
  FAX1 U1_4 ( .A(A[4]), .B(B[4]), .C(carry[4]), .YC(carry[5]), .YS(SUM[4]) );
  FAX1 U1_3 ( .A(A[3]), .B(B[3]), .C(carry[3]), .YC(carry[4]), .YS(SUM[3]) );
  FAX1 U1_2 ( .A(A[2]), .B(B[2]), .C(carry[2]), .YC(carry[3]), .YS(SUM[2]) );
  FAX1 U1_1 ( .A(A[1]), .B(B[1]), .C(n1), .YC(carry[2]), .YS(SUM[1]) );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module horblur_DW01_add_9 ( A, B, CI, SUM, CO );
  input [10:0] A;
  input [10:0] B;
  output [10:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [10:1] carry;
  assign SUM[9] = carry[9];

  FAX1 U1_8 ( .A(A[8]), .B(B[8]), .C(carry[8]), .YC(carry[9]), .YS(SUM[8]) );
  FAX1 U1_7 ( .A(A[7]), .B(B[7]), .C(carry[7]), .YC(carry[8]), .YS(SUM[7]) );
  FAX1 U1_6 ( .A(A[6]), .B(B[6]), .C(carry[6]), .YC(carry[7]), .YS(SUM[6]) );
  FAX1 U1_5 ( .A(A[5]), .B(B[5]), .C(carry[5]), .YC(carry[6]), .YS(SUM[5]) );
  FAX1 U1_4 ( .A(A[4]), .B(B[4]), .C(carry[4]), .YC(carry[5]), .YS(SUM[4]) );
  FAX1 U1_3 ( .A(A[3]), .B(B[3]), .C(carry[3]), .YC(carry[4]), .YS(SUM[3]) );
  FAX1 U1_2 ( .A(A[2]), .B(B[2]), .C(carry[2]), .YC(carry[3]), .YS(SUM[2]) );
  FAX1 U1_1 ( .A(A[1]), .B(B[1]), .C(n1), .YC(carry[2]), .YS(SUM[1]) );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module horblur_DW01_add_12 ( A, B, CI, SUM, CO );
  input [9:0] A;
  input [9:0] B;
  output [9:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [9:1] carry;

  FAX1 U1_7 ( .A(A[7]), .B(B[7]), .C(carry[7]), .YC(SUM[8]), .YS(SUM[7]) );
  FAX1 U1_6 ( .A(A[6]), .B(B[6]), .C(carry[6]), .YC(carry[7]), .YS(SUM[6]) );
  FAX1 U1_5 ( .A(A[5]), .B(B[5]), .C(carry[5]), .YC(carry[6]), .YS(SUM[5]) );
  FAX1 U1_4 ( .A(A[4]), .B(B[4]), .C(carry[4]), .YC(carry[5]), .YS(SUM[4]) );
  FAX1 U1_3 ( .A(A[3]), .B(B[3]), .C(carry[3]), .YC(carry[4]), .YS(SUM[3]) );
  FAX1 U1_2 ( .A(A[2]), .B(B[2]), .C(carry[2]), .YC(carry[3]), .YS(SUM[2]) );
  FAX1 U1_1 ( .A(A[1]), .B(B[1]), .C(n1), .YC(carry[2]), .YS(SUM[1]) );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module horblur_DW01_add_13 ( A, B, CI, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [8:1] carry;

  FAX1 U1_7 ( .A(A[7]), .B(B[7]), .C(carry[7]), .YC(SUM[8]), .YS(SUM[7]) );
  FAX1 U1_6 ( .A(A[6]), .B(B[6]), .C(carry[6]), .YC(carry[7]), .YS(SUM[6]) );
  FAX1 U1_5 ( .A(A[5]), .B(B[5]), .C(carry[5]), .YC(carry[6]), .YS(SUM[5]) );
  FAX1 U1_4 ( .A(A[4]), .B(B[4]), .C(carry[4]), .YC(carry[5]), .YS(SUM[4]) );
  FAX1 U1_3 ( .A(A[3]), .B(B[3]), .C(carry[3]), .YC(carry[4]), .YS(SUM[3]) );
  FAX1 U1_2 ( .A(A[2]), .B(B[2]), .C(carry[2]), .YC(carry[3]), .YS(SUM[2]) );
  FAX1 U1_1 ( .A(A[1]), .B(B[1]), .C(n1), .YC(carry[2]), .YS(SUM[1]) );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module horblur_DW01_add_14 ( A, B, CI, SUM, CO );
  input [10:0] A;
  input [10:0] B;
  output [10:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6;
  wire   [10:1] carry;
  assign SUM[10] = carry[10];

  FAX1 U1_9 ( .A(A[9]), .B(B[9]), .C(carry[9]), .YC(carry[10]), .YS(SUM[9]) );
  FAX1 U1_8 ( .A(A[8]), .B(B[8]), .C(carry[8]), .YC(carry[9]), .YS(SUM[8]) );
  FAX1 U1_7 ( .A(A[7]), .B(B[7]), .C(carry[7]), .YC(carry[8]), .YS(SUM[7]) );
  FAX1 U1_6 ( .A(A[6]), .B(B[6]), .C(carry[6]), .YC(carry[7]), .YS(SUM[6]) );
  FAX1 U1_5 ( .A(A[5]), .B(B[5]), .C(carry[5]), .YC(carry[6]), .YS(SUM[5]) );
  FAX1 U1_4 ( .A(A[4]), .B(B[4]), .C(carry[4]), .YC(carry[5]), .YS(SUM[4]) );
  FAX1 U1_3 ( .A(A[3]), .B(B[3]), .C(carry[3]), .YC(carry[4]), .YS(SUM[3]) );
  INVX2 U1 ( .A(A[2]), .Y(n1) );
  INVX2 U2 ( .A(n4), .Y(n2) );
  INVX2 U3 ( .A(n6), .Y(n3) );
  OAI21X1 U4 ( .A(n4), .B(n1), .C(n5), .Y(carry[3]) );
  OAI21X1 U5 ( .A(A[2]), .B(n2), .C(B[2]), .Y(n5) );
  AOI22X1 U6 ( .A(A[1]), .B(B[1]), .C(B[0]), .D(n3), .Y(n4) );
  OAI21X1 U7 ( .A(A[1]), .B(B[1]), .C(A[0]), .Y(n6) );
endmodule


module horblur_DW01_add_15 ( A, B, CI, SUM, CO );
  input [10:0] A;
  input [10:0] B;
  output [10:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [10:1] carry;
  assign SUM[9] = carry[9];

  FAX1 U1_8 ( .A(A[8]), .B(B[8]), .C(carry[8]), .YC(carry[9]), .YS(SUM[8]) );
  FAX1 U1_7 ( .A(A[7]), .B(B[7]), .C(carry[7]), .YC(carry[8]), .YS(SUM[7]) );
  FAX1 U1_6 ( .A(A[6]), .B(B[6]), .C(carry[6]), .YC(carry[7]), .YS(SUM[6]) );
  FAX1 U1_5 ( .A(A[5]), .B(B[5]), .C(carry[5]), .YC(carry[6]), .YS(SUM[5]) );
  FAX1 U1_4 ( .A(A[4]), .B(B[4]), .C(carry[4]), .YC(carry[5]), .YS(SUM[4]) );
  FAX1 U1_3 ( .A(A[3]), .B(B[3]), .C(carry[3]), .YC(carry[4]), .YS(SUM[3]) );
  FAX1 U1_2 ( .A(A[2]), .B(B[2]), .C(carry[2]), .YC(carry[3]), .YS(SUM[2]) );
  FAX1 U1_1 ( .A(A[1]), .B(B[1]), .C(n1), .YC(carry[2]), .YS(SUM[1]) );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module horblur_DW01_add_16 ( A, B, CI, SUM, CO );
  input [10:0] A;
  input [10:0] B;
  output [10:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [10:1] carry;
  assign SUM[9] = carry[9];

  FAX1 U1_8 ( .A(A[8]), .B(B[8]), .C(carry[8]), .YC(carry[9]), .YS(SUM[8]) );
  FAX1 U1_7 ( .A(A[7]), .B(B[7]), .C(carry[7]), .YC(carry[8]), .YS(SUM[7]) );
  FAX1 U1_6 ( .A(A[6]), .B(B[6]), .C(carry[6]), .YC(carry[7]), .YS(SUM[6]) );
  FAX1 U1_5 ( .A(A[5]), .B(B[5]), .C(carry[5]), .YC(carry[6]), .YS(SUM[5]) );
  FAX1 U1_4 ( .A(A[4]), .B(B[4]), .C(carry[4]), .YC(carry[5]), .YS(SUM[4]) );
  FAX1 U1_3 ( .A(A[3]), .B(B[3]), .C(carry[3]), .YC(carry[4]), .YS(SUM[3]) );
  FAX1 U1_2 ( .A(A[2]), .B(B[2]), .C(carry[2]), .YC(carry[3]), .YS(SUM[2]) );
  FAX1 U1_1 ( .A(A[1]), .B(B[1]), .C(n1), .YC(carry[2]), .YS(SUM[1]) );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module horblur_DW01_add_19 ( A, B, CI, SUM, CO );
  input [9:0] A;
  input [9:0] B;
  output [9:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [9:1] carry;

  FAX1 U1_7 ( .A(A[7]), .B(B[7]), .C(carry[7]), .YC(SUM[8]), .YS(SUM[7]) );
  FAX1 U1_6 ( .A(A[6]), .B(B[6]), .C(carry[6]), .YC(carry[7]), .YS(SUM[6]) );
  FAX1 U1_5 ( .A(A[5]), .B(B[5]), .C(carry[5]), .YC(carry[6]), .YS(SUM[5]) );
  FAX1 U1_4 ( .A(A[4]), .B(B[4]), .C(carry[4]), .YC(carry[5]), .YS(SUM[4]) );
  FAX1 U1_3 ( .A(A[3]), .B(B[3]), .C(carry[3]), .YC(carry[4]), .YS(SUM[3]) );
  FAX1 U1_2 ( .A(A[2]), .B(B[2]), .C(carry[2]), .YC(carry[3]), .YS(SUM[2]) );
  FAX1 U1_1 ( .A(A[1]), .B(B[1]), .C(n1), .YC(carry[2]), .YS(SUM[1]) );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module horblur_DW01_add_20 ( A, B, CI, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [8:1] carry;

  FAX1 U1_7 ( .A(A[7]), .B(B[7]), .C(carry[7]), .YC(SUM[8]), .YS(SUM[7]) );
  FAX1 U1_6 ( .A(A[6]), .B(B[6]), .C(carry[6]), .YC(carry[7]), .YS(SUM[6]) );
  FAX1 U1_5 ( .A(A[5]), .B(B[5]), .C(carry[5]), .YC(carry[6]), .YS(SUM[5]) );
  FAX1 U1_4 ( .A(A[4]), .B(B[4]), .C(carry[4]), .YC(carry[5]), .YS(SUM[4]) );
  FAX1 U1_3 ( .A(A[3]), .B(B[3]), .C(carry[3]), .YC(carry[4]), .YS(SUM[3]) );
  FAX1 U1_2 ( .A(A[2]), .B(B[2]), .C(carry[2]), .YC(carry[3]), .YS(SUM[2]) );
  FAX1 U1_1 ( .A(A[1]), .B(B[1]), .C(n1), .YC(carry[2]), .YS(SUM[1]) );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module horblur ( clk, n_rst, wb_en, mode_wb, data, blur );
  input [2:0] mode_wb;
  input [31:0] data;
  output [31:0] blur;
  input clk, n_rst, wb_en;
  wire   N1, N2, N3, N4, N5, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15, N16,
         N17, N18, N20, N21, N22, N23, N24, N25, N26, N27, N28, N31, N32, N33,
         N34, N35, N36, N37, N38, N39, N42, N43, N44, N45, N46, N47, N48, N49,
         N50, N51, N53, N54, N55, N56, N57, N58, N59, N60, N61, N62, N64, N65,
         N66, N67, N68, N69, N70, N71, N72, N73, N74, N75, N76, N77, N78, N79,
         N80, N81, N83, N84, N85, N86, N87, N88, N89, N90, N91, N94, N95, N96,
         N97, N98, N99, N100, N101, N102, N105, N106, N107, N108, N109, N110,
         N111, N112, N113, N114, N116, N117, N118, N119, N120, N121, N122,
         N123, N124, N125, N127, N128, N129, N130, N131, N132, N133, N134,
         N135, N136, N137, N138, N139, N140, N141, N142, N143, N144, N146,
         N147, N148, N149, N150, N151, N152, N153, N154, N157, N158, N159,
         N160, N161, N162, N163, N164, N165, N168, N169, N170, N171, N172,
         N173, N174, N175, N176, N177, N179, N180, N181, N182, N183, N184,
         N185, N186, N187, N188, n272, n273, n274, n275, n276, n277, n278,
         n279, n280, n281, n282, n283, n284, n285, n286, n287, n288, n289,
         n290, n291, n292, n293, n294, n295, n296, n297, n298, n299, n300,
         n301, n302, n303, n304, n305, n306, n307, n308, n309, n310, n311,
         n312, n313, n314, n315, n316, n317, n318, n319, n320, n321, n322,
         n323, n324, n325, n326, n327, n328, n329, n330, n331, n332, n333,
         n334, n335, n336, n337, n338, n339, n340, n341, n342, n343, n344,
         n345, n346, n347, n348, n349, n350, n351, n352, n353, n354, n355,
         n356, n357, n358, n359, n360, n361, n362, n363, n364, n365, n366,
         n367, n368, n369, n370, n371, n372, n373, n374, n375, n376, n377,
         n378, n379, n380, n381, n382, n383, n384, n385, n386, n387, n388,
         n389, n390, n391, n392, n393, n394, n395, n396, n397, n398, n399,
         n400, n401, n402, n403, n404, n405, n406, n407, n408, n409, n410,
         n411, n412, n413, n414, n415, n416, n417, n418, n419, n420, n421,
         n422, n423, n424, n425, n426, n427, n428, n429, n430, n431, n432,
         n433, n434, n435, n436, n437, n438, n439, n4, n5, n11, n12, n18, n19,
         n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
         n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49,
         n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63,
         n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77,
         n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91,
         n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104,
         n105, n106, n107, n108, n109, n110, n111, n112, n113, n114, n115,
         n116, n117, n118, n119, n120, n121, n122, n123, n124, n125, n126,
         n127, n128, n129, n130, n131, n132, n133, n134, n135, n136, n137,
         n138, n139, n140, n141, n142, n143, n144, n145, n146, n147, n148,
         n149, n150, n151, n152, n153, n154, n155, n156, n157, n158, n159,
         n160, n161, n162, n163, n164, n165, n166, n167, n168, n169, n170,
         n171, n172, n173, n174, n175, n176, n177, n178, n179, n180, n181,
         n182, n183, n184, n185, n186, n187, n188, n189, n190, n191, n192,
         n193, n194, n195, n196, n197, n198, n199, n200, n201, n202, n203,
         n204, n205, n206, n207, n208, n209, n210, n211, n212, n213, n214,
         n215, n216, n217, n218, n219, n220, n221, n222, n223, n224, n225,
         n226, n227, n228, n229, n230, n231, n232, n233, n234, n235, n236,
         n237, n238, n239, n240, n241, n242, n243, n244, n245, n246, n247,
         n248, n249, n250, n251, n252, n253, n254, n255, n256, n257, n258,
         n259, n260, n261, n262, n263, n264, n265, n266, n267, n268, n269,
         n270, n271, n440, n441, n442, n443, n444, n445, n446, n447, n448,
         n449, n450, n451, n452, n453, n454, n455, n456, n457, n458, n459,
         n460, n461, n462, n463, n464, n465, n466, n467, n468, n469, n470,
         n471, n472, n473, n474, n475, n476, n477, n478, n479, n480, n481,
         n482, n483, n484, n485, n486, n487, n488, n489, n490, n491, n492,
         n493, n494, n495, n496, n497, n498, n499, n500, n501, n502, n503,
         n504, n505, n506, n507, n508, n509, n510, n511, n512, n513, n514,
         n515, n516, n517, n518, n519, n520, n521, n522, n523, n524, n525,
         n526, n527, n528, n529, n530, n531, n532, n533, n534, n535, n536,
         n537, n538, n539, n540, n541, n542, n543, n544, n545, n546, n547,
         n548, n549, n550, n551, n552, n553, n554, n555, n556, n557, n558,
         n559, n560, n561, n562, n563, n564, n565, n566, n567, n568, n569,
         n570, n571, n572, n573, n574, n575, n576;
  wire   [7:0] R_1;
  wire   [7:0] R_2;
  wire   [7:0] R_3;
  wire   [7:0] R_4;
  wire   [7:0] R_5;
  wire   [7:0] R_6;
  wire   [7:0] R_7;
  wire   [7:0] G_1;
  wire   [7:0] G_2;
  wire   [7:0] G_3;
  wire   [7:0] G_4;
  wire   [7:0] G_5;
  wire   [7:0] G_6;
  wire   [7:0] G_7;
  wire   [7:0] B_1;
  wire   [7:0] B_2;
  wire   [7:0] B_3;
  wire   [7:0] B_4;
  wire   [7:0] B_5;
  wire   [7:0] B_6;
  wire   [7:0] B_7;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15, 
        SYNOPSYS_UNCONNECTED__16, SYNOPSYS_UNCONNECTED__17;
  assign blur[24] = 1'b1;
  assign blur[25] = 1'b1;
  assign blur[26] = 1'b1;
  assign blur[27] = 1'b1;
  assign blur[28] = 1'b1;
  assign blur[29] = 1'b1;
  assign blur[30] = 1'b1;
  assign blur[31] = 1'b1;

  DFFPOSX1 \R_1_reg[7]  ( .D(n439), .CLK(clk), .Q(R_1[7]) );
  DFFPOSX1 \R_1_reg[6]  ( .D(n438), .CLK(clk), .Q(R_1[6]) );
  DFFPOSX1 \R_1_reg[5]  ( .D(n437), .CLK(clk), .Q(R_1[5]) );
  DFFPOSX1 \R_1_reg[4]  ( .D(n436), .CLK(clk), .Q(R_1[4]) );
  DFFPOSX1 \R_1_reg[3]  ( .D(n435), .CLK(clk), .Q(R_1[3]) );
  DFFPOSX1 \R_1_reg[2]  ( .D(n434), .CLK(clk), .Q(R_1[2]) );
  DFFPOSX1 \R_1_reg[1]  ( .D(n433), .CLK(clk), .Q(R_1[1]) );
  DFFPOSX1 \R_1_reg[0]  ( .D(n432), .CLK(clk), .Q(R_1[0]) );
  DFFPOSX1 \R_2_reg[7]  ( .D(n431), .CLK(clk), .Q(R_2[7]) );
  DFFPOSX1 \R_2_reg[6]  ( .D(n430), .CLK(clk), .Q(R_2[6]) );
  DFFPOSX1 \R_2_reg[5]  ( .D(n429), .CLK(clk), .Q(R_2[5]) );
  DFFPOSX1 \R_2_reg[4]  ( .D(n428), .CLK(clk), .Q(R_2[4]) );
  DFFPOSX1 \R_2_reg[3]  ( .D(n427), .CLK(clk), .Q(R_2[3]) );
  DFFPOSX1 \R_2_reg[2]  ( .D(n426), .CLK(clk), .Q(R_2[2]) );
  DFFPOSX1 \R_2_reg[1]  ( .D(n425), .CLK(clk), .Q(R_2[1]) );
  DFFPOSX1 \R_2_reg[0]  ( .D(n424), .CLK(clk), .Q(R_2[0]) );
  DFFPOSX1 \R_3_reg[7]  ( .D(n423), .CLK(clk), .Q(R_3[7]) );
  DFFPOSX1 \R_3_reg[6]  ( .D(n422), .CLK(clk), .Q(R_3[6]) );
  DFFPOSX1 \R_3_reg[5]  ( .D(n421), .CLK(clk), .Q(R_3[5]) );
  DFFPOSX1 \R_3_reg[4]  ( .D(n420), .CLK(clk), .Q(R_3[4]) );
  DFFPOSX1 \R_3_reg[3]  ( .D(n419), .CLK(clk), .Q(R_3[3]) );
  DFFPOSX1 \R_3_reg[2]  ( .D(n418), .CLK(clk), .Q(R_3[2]) );
  DFFPOSX1 \R_3_reg[1]  ( .D(n417), .CLK(clk), .Q(R_3[1]) );
  DFFPOSX1 \R_3_reg[0]  ( .D(n416), .CLK(clk), .Q(R_3[0]) );
  DFFPOSX1 \R_4_reg[7]  ( .D(n415), .CLK(clk), .Q(R_4[7]) );
  DFFPOSX1 \R_4_reg[6]  ( .D(n414), .CLK(clk), .Q(R_4[6]) );
  DFFPOSX1 \R_4_reg[5]  ( .D(n413), .CLK(clk), .Q(R_4[5]) );
  DFFPOSX1 \R_4_reg[4]  ( .D(n412), .CLK(clk), .Q(R_4[4]) );
  DFFPOSX1 \R_4_reg[3]  ( .D(n411), .CLK(clk), .Q(R_4[3]) );
  DFFPOSX1 \R_4_reg[2]  ( .D(n410), .CLK(clk), .Q(R_4[2]) );
  DFFPOSX1 \R_4_reg[1]  ( .D(n409), .CLK(clk), .Q(R_4[1]) );
  DFFPOSX1 \R_4_reg[0]  ( .D(n408), .CLK(clk), .Q(R_4[0]) );
  DFFPOSX1 \R_5_reg[7]  ( .D(n407), .CLK(clk), .Q(R_5[7]) );
  DFFPOSX1 \R_5_reg[6]  ( .D(n406), .CLK(clk), .Q(R_5[6]) );
  DFFPOSX1 \R_5_reg[5]  ( .D(n405), .CLK(clk), .Q(R_5[5]) );
  DFFPOSX1 \R_5_reg[4]  ( .D(n404), .CLK(clk), .Q(R_5[4]) );
  DFFPOSX1 \R_5_reg[3]  ( .D(n403), .CLK(clk), .Q(R_5[3]) );
  DFFPOSX1 \R_5_reg[2]  ( .D(n402), .CLK(clk), .Q(R_5[2]) );
  DFFPOSX1 \R_5_reg[1]  ( .D(n401), .CLK(clk), .Q(R_5[1]) );
  DFFPOSX1 \R_5_reg[0]  ( .D(n400), .CLK(clk), .Q(R_5[0]) );
  DFFPOSX1 \R_6_reg[7]  ( .D(n399), .CLK(clk), .Q(R_6[7]) );
  DFFPOSX1 \R_6_reg[6]  ( .D(n398), .CLK(clk), .Q(R_6[6]) );
  DFFPOSX1 \R_6_reg[5]  ( .D(n397), .CLK(clk), .Q(R_6[5]) );
  DFFPOSX1 \R_6_reg[4]  ( .D(n396), .CLK(clk), .Q(R_6[4]) );
  DFFPOSX1 \R_6_reg[3]  ( .D(n395), .CLK(clk), .Q(R_6[3]) );
  DFFPOSX1 \R_6_reg[2]  ( .D(n394), .CLK(clk), .Q(R_6[2]) );
  DFFPOSX1 \R_6_reg[1]  ( .D(n393), .CLK(clk), .Q(R_6[1]) );
  DFFPOSX1 \R_6_reg[0]  ( .D(n392), .CLK(clk), .Q(R_6[0]) );
  DFFPOSX1 \R_7_reg[7]  ( .D(n391), .CLK(clk), .Q(R_7[7]) );
  DFFPOSX1 \R_7_reg[6]  ( .D(n390), .CLK(clk), .Q(R_7[6]) );
  DFFPOSX1 \R_7_reg[5]  ( .D(n389), .CLK(clk), .Q(R_7[5]) );
  DFFPOSX1 \R_7_reg[4]  ( .D(n388), .CLK(clk), .Q(R_7[4]) );
  DFFPOSX1 \R_7_reg[3]  ( .D(n387), .CLK(clk), .Q(R_7[3]) );
  DFFPOSX1 \R_7_reg[2]  ( .D(n386), .CLK(clk), .Q(R_7[2]) );
  DFFPOSX1 \R_7_reg[1]  ( .D(n385), .CLK(clk), .Q(R_7[1]) );
  DFFPOSX1 \R_7_reg[0]  ( .D(n384), .CLK(clk), .Q(R_7[0]) );
  DFFPOSX1 \G_1_reg[7]  ( .D(n383), .CLK(clk), .Q(G_1[7]) );
  DFFPOSX1 \G_1_reg[6]  ( .D(n382), .CLK(clk), .Q(G_1[6]) );
  DFFPOSX1 \G_1_reg[5]  ( .D(n381), .CLK(clk), .Q(G_1[5]) );
  DFFPOSX1 \G_1_reg[4]  ( .D(n380), .CLK(clk), .Q(G_1[4]) );
  DFFPOSX1 \G_1_reg[3]  ( .D(n379), .CLK(clk), .Q(G_1[3]) );
  DFFPOSX1 \G_1_reg[2]  ( .D(n378), .CLK(clk), .Q(G_1[2]) );
  DFFPOSX1 \G_1_reg[1]  ( .D(n377), .CLK(clk), .Q(G_1[1]) );
  DFFPOSX1 \G_1_reg[0]  ( .D(n376), .CLK(clk), .Q(G_1[0]) );
  DFFPOSX1 \G_2_reg[7]  ( .D(n375), .CLK(clk), .Q(G_2[7]) );
  DFFPOSX1 \G_2_reg[6]  ( .D(n374), .CLK(clk), .Q(G_2[6]) );
  DFFPOSX1 \G_2_reg[5]  ( .D(n373), .CLK(clk), .Q(G_2[5]) );
  DFFPOSX1 \G_2_reg[4]  ( .D(n372), .CLK(clk), .Q(G_2[4]) );
  DFFPOSX1 \G_2_reg[3]  ( .D(n371), .CLK(clk), .Q(G_2[3]) );
  DFFPOSX1 \G_2_reg[2]  ( .D(n370), .CLK(clk), .Q(G_2[2]) );
  DFFPOSX1 \G_2_reg[1]  ( .D(n369), .CLK(clk), .Q(G_2[1]) );
  DFFPOSX1 \G_2_reg[0]  ( .D(n368), .CLK(clk), .Q(G_2[0]) );
  DFFPOSX1 \G_3_reg[7]  ( .D(n367), .CLK(clk), .Q(G_3[7]) );
  DFFPOSX1 \G_3_reg[6]  ( .D(n366), .CLK(clk), .Q(G_3[6]) );
  DFFPOSX1 \G_3_reg[5]  ( .D(n365), .CLK(clk), .Q(G_3[5]) );
  DFFPOSX1 \G_3_reg[4]  ( .D(n364), .CLK(clk), .Q(G_3[4]) );
  DFFPOSX1 \G_3_reg[3]  ( .D(n363), .CLK(clk), .Q(G_3[3]) );
  DFFPOSX1 \G_3_reg[2]  ( .D(n362), .CLK(clk), .Q(G_3[2]) );
  DFFPOSX1 \G_3_reg[1]  ( .D(n361), .CLK(clk), .Q(G_3[1]) );
  DFFPOSX1 \G_3_reg[0]  ( .D(n360), .CLK(clk), .Q(G_3[0]) );
  DFFPOSX1 \G_4_reg[7]  ( .D(n359), .CLK(clk), .Q(G_4[7]) );
  DFFPOSX1 \G_4_reg[6]  ( .D(n358), .CLK(clk), .Q(G_4[6]) );
  DFFPOSX1 \G_4_reg[5]  ( .D(n357), .CLK(clk), .Q(G_4[5]) );
  DFFPOSX1 \G_4_reg[4]  ( .D(n356), .CLK(clk), .Q(G_4[4]) );
  DFFPOSX1 \G_4_reg[3]  ( .D(n355), .CLK(clk), .Q(G_4[3]) );
  DFFPOSX1 \G_4_reg[2]  ( .D(n354), .CLK(clk), .Q(G_4[2]) );
  DFFPOSX1 \G_4_reg[1]  ( .D(n353), .CLK(clk), .Q(G_4[1]) );
  DFFPOSX1 \G_4_reg[0]  ( .D(n352), .CLK(clk), .Q(G_4[0]) );
  DFFPOSX1 \G_5_reg[7]  ( .D(n351), .CLK(clk), .Q(G_5[7]) );
  DFFPOSX1 \G_5_reg[6]  ( .D(n350), .CLK(clk), .Q(G_5[6]) );
  DFFPOSX1 \G_5_reg[5]  ( .D(n349), .CLK(clk), .Q(G_5[5]) );
  DFFPOSX1 \G_5_reg[4]  ( .D(n348), .CLK(clk), .Q(G_5[4]) );
  DFFPOSX1 \G_5_reg[3]  ( .D(n347), .CLK(clk), .Q(G_5[3]) );
  DFFPOSX1 \G_5_reg[2]  ( .D(n346), .CLK(clk), .Q(G_5[2]) );
  DFFPOSX1 \G_5_reg[1]  ( .D(n345), .CLK(clk), .Q(G_5[1]) );
  DFFPOSX1 \G_5_reg[0]  ( .D(n344), .CLK(clk), .Q(G_5[0]) );
  DFFPOSX1 \G_6_reg[7]  ( .D(n343), .CLK(clk), .Q(G_6[7]) );
  DFFPOSX1 \G_6_reg[6]  ( .D(n342), .CLK(clk), .Q(G_6[6]) );
  DFFPOSX1 \G_6_reg[5]  ( .D(n341), .CLK(clk), .Q(G_6[5]) );
  DFFPOSX1 \G_6_reg[4]  ( .D(n340), .CLK(clk), .Q(G_6[4]) );
  DFFPOSX1 \G_6_reg[3]  ( .D(n339), .CLK(clk), .Q(G_6[3]) );
  DFFPOSX1 \G_6_reg[2]  ( .D(n338), .CLK(clk), .Q(G_6[2]) );
  DFFPOSX1 \G_6_reg[1]  ( .D(n337), .CLK(clk), .Q(G_6[1]) );
  DFFPOSX1 \G_6_reg[0]  ( .D(n336), .CLK(clk), .Q(G_6[0]) );
  DFFPOSX1 \G_7_reg[7]  ( .D(n335), .CLK(clk), .Q(G_7[7]) );
  DFFPOSX1 \G_7_reg[6]  ( .D(n334), .CLK(clk), .Q(G_7[6]) );
  DFFPOSX1 \G_7_reg[5]  ( .D(n333), .CLK(clk), .Q(G_7[5]) );
  DFFPOSX1 \G_7_reg[4]  ( .D(n332), .CLK(clk), .Q(G_7[4]) );
  DFFPOSX1 \G_7_reg[3]  ( .D(n331), .CLK(clk), .Q(G_7[3]) );
  DFFPOSX1 \G_7_reg[2]  ( .D(n330), .CLK(clk), .Q(G_7[2]) );
  DFFPOSX1 \G_7_reg[1]  ( .D(n329), .CLK(clk), .Q(G_7[1]) );
  DFFPOSX1 \G_7_reg[0]  ( .D(n328), .CLK(clk), .Q(G_7[0]) );
  DFFPOSX1 \B_1_reg[7]  ( .D(n327), .CLK(clk), .Q(B_1[7]) );
  DFFPOSX1 \B_1_reg[6]  ( .D(n326), .CLK(clk), .Q(B_1[6]) );
  DFFPOSX1 \B_1_reg[5]  ( .D(n325), .CLK(clk), .Q(B_1[5]) );
  DFFPOSX1 \B_1_reg[4]  ( .D(n324), .CLK(clk), .Q(B_1[4]) );
  DFFPOSX1 \B_1_reg[3]  ( .D(n323), .CLK(clk), .Q(B_1[3]) );
  DFFPOSX1 \B_1_reg[2]  ( .D(n322), .CLK(clk), .Q(B_1[2]) );
  DFFPOSX1 \B_1_reg[1]  ( .D(n321), .CLK(clk), .Q(B_1[1]) );
  DFFPOSX1 \B_1_reg[0]  ( .D(n320), .CLK(clk), .Q(B_1[0]) );
  DFFPOSX1 \B_2_reg[7]  ( .D(n319), .CLK(clk), .Q(B_2[7]) );
  DFFPOSX1 \B_2_reg[6]  ( .D(n318), .CLK(clk), .Q(B_2[6]) );
  DFFPOSX1 \B_2_reg[5]  ( .D(n317), .CLK(clk), .Q(B_2[5]) );
  DFFPOSX1 \B_2_reg[4]  ( .D(n316), .CLK(clk), .Q(B_2[4]) );
  DFFPOSX1 \B_2_reg[3]  ( .D(n315), .CLK(clk), .Q(B_2[3]) );
  DFFPOSX1 \B_2_reg[2]  ( .D(n314), .CLK(clk), .Q(B_2[2]) );
  DFFPOSX1 \B_2_reg[1]  ( .D(n313), .CLK(clk), .Q(B_2[1]) );
  DFFPOSX1 \B_2_reg[0]  ( .D(n312), .CLK(clk), .Q(B_2[0]) );
  DFFPOSX1 \B_3_reg[7]  ( .D(n311), .CLK(clk), .Q(B_3[7]) );
  DFFPOSX1 \B_3_reg[6]  ( .D(n310), .CLK(clk), .Q(B_3[6]) );
  DFFPOSX1 \B_3_reg[5]  ( .D(n309), .CLK(clk), .Q(B_3[5]) );
  DFFPOSX1 \B_3_reg[4]  ( .D(n308), .CLK(clk), .Q(B_3[4]) );
  DFFPOSX1 \B_3_reg[3]  ( .D(n307), .CLK(clk), .Q(B_3[3]) );
  DFFPOSX1 \B_3_reg[2]  ( .D(n306), .CLK(clk), .Q(B_3[2]) );
  DFFPOSX1 \B_3_reg[1]  ( .D(n305), .CLK(clk), .Q(B_3[1]) );
  DFFPOSX1 \B_3_reg[0]  ( .D(n304), .CLK(clk), .Q(B_3[0]) );
  DFFPOSX1 \B_4_reg[7]  ( .D(n303), .CLK(clk), .Q(B_4[7]) );
  DFFPOSX1 \B_4_reg[6]  ( .D(n302), .CLK(clk), .Q(B_4[6]) );
  DFFPOSX1 \B_4_reg[5]  ( .D(n301), .CLK(clk), .Q(B_4[5]) );
  DFFPOSX1 \B_4_reg[4]  ( .D(n300), .CLK(clk), .Q(B_4[4]) );
  DFFPOSX1 \B_4_reg[3]  ( .D(n299), .CLK(clk), .Q(B_4[3]) );
  DFFPOSX1 \B_4_reg[2]  ( .D(n298), .CLK(clk), .Q(B_4[2]) );
  DFFPOSX1 \B_4_reg[1]  ( .D(n297), .CLK(clk), .Q(B_4[1]) );
  DFFPOSX1 \B_4_reg[0]  ( .D(n296), .CLK(clk), .Q(B_4[0]) );
  DFFPOSX1 \B_5_reg[7]  ( .D(n295), .CLK(clk), .Q(B_5[7]) );
  DFFPOSX1 \B_5_reg[6]  ( .D(n294), .CLK(clk), .Q(B_5[6]) );
  DFFPOSX1 \B_5_reg[5]  ( .D(n293), .CLK(clk), .Q(B_5[5]) );
  DFFPOSX1 \B_5_reg[4]  ( .D(n292), .CLK(clk), .Q(B_5[4]) );
  DFFPOSX1 \B_5_reg[3]  ( .D(n291), .CLK(clk), .Q(B_5[3]) );
  DFFPOSX1 \B_5_reg[2]  ( .D(n290), .CLK(clk), .Q(B_5[2]) );
  DFFPOSX1 \B_5_reg[1]  ( .D(n289), .CLK(clk), .Q(B_5[1]) );
  DFFPOSX1 \B_5_reg[0]  ( .D(n288), .CLK(clk), .Q(B_5[0]) );
  DFFPOSX1 \B_6_reg[7]  ( .D(n287), .CLK(clk), .Q(B_6[7]) );
  DFFPOSX1 \B_7_reg[7]  ( .D(n272), .CLK(clk), .Q(B_7[7]) );
  DFFPOSX1 \B_6_reg[6]  ( .D(n286), .CLK(clk), .Q(B_6[6]) );
  DFFPOSX1 \B_7_reg[6]  ( .D(n273), .CLK(clk), .Q(B_7[6]) );
  DFFPOSX1 \B_6_reg[5]  ( .D(n285), .CLK(clk), .Q(B_6[5]) );
  DFFPOSX1 \B_7_reg[5]  ( .D(n274), .CLK(clk), .Q(B_7[5]) );
  DFFPOSX1 \B_6_reg[4]  ( .D(n284), .CLK(clk), .Q(B_6[4]) );
  DFFPOSX1 \B_7_reg[4]  ( .D(n275), .CLK(clk), .Q(B_7[4]) );
  DFFPOSX1 \B_6_reg[3]  ( .D(n283), .CLK(clk), .Q(B_6[3]) );
  DFFPOSX1 \B_7_reg[3]  ( .D(n276), .CLK(clk), .Q(B_7[3]) );
  DFFPOSX1 \B_6_reg[2]  ( .D(n282), .CLK(clk), .Q(B_6[2]) );
  DFFPOSX1 \B_7_reg[2]  ( .D(n277), .CLK(clk), .Q(B_7[2]) );
  DFFPOSX1 \B_6_reg[1]  ( .D(n281), .CLK(clk), .Q(B_6[1]) );
  DFFPOSX1 \B_7_reg[1]  ( .D(n278), .CLK(clk), .Q(B_7[1]) );
  DFFPOSX1 \B_6_reg[0]  ( .D(n280), .CLK(clk), .Q(B_6[0]) );
  DFFPOSX1 \B_7_reg[0]  ( .D(n279), .CLK(clk), .Q(B_7[0]) );
  horblur_DW01_add_0 add_0_root_add_48_7 ( .A({1'b0, N177, N176, N175, N174, 
        N173, N172, N171, N170, N169, N168}), .B({1'b0, N188, N187, N186, N185, 
        N184, N183, N182, N181, N180, N179}), .CI(1'b0), .SUM({blur[7:0], 
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2}) );
  horblur_DW01_add_1 add_1_root_add_48_7 ( .A({1'b0, 1'b0, N154, N153, N152, 
        N151, N150, N149, N148, N147, N146}), .B({1'b0, 1'b0, N165, N164, N163, 
        N162, N161, N160, N159, N158, N157}), .CI(1'b0), .SUM({
        SYNOPSYS_UNCONNECTED__3, N188, N187, N186, N185, N184, N183, N182, 
        N181, N180, N179}) );
  horblur_DW01_add_2 add_2_root_add_48_7 ( .A({1'b0, 1'b0, N135, N134, N133, 
        N132, N131, N130, N129, N128, N127}), .B({1'b0, 1'b0, N144, N143, N142, 
        N141, N140, N139, N138, N137, N136}), .CI(1'b0), .SUM({
        SYNOPSYS_UNCONNECTED__4, N177, N176, N175, N174, N173, N172, N171, 
        N170, N169, N168}) );
  horblur_DW01_add_5 add_5_root_add_48_7 ( .A({1'b0, 1'b0, B_3}), .B({1'b0, 
        1'b0, B_4}), .CI(1'b0), .SUM({SYNOPSYS_UNCONNECTED__5, N144, N143, 
        N142, N141, N140, N139, N138, N137, N136}) );
  horblur_DW01_add_6 add_6_root_add_48_7 ( .A({1'b0, B_1}), .B({1'b0, B_2}), 
        .CI(1'b0), .SUM({N135, N134, N133, N132, N131, N130, N129, N128, N127}) );
  horblur_DW01_add_7 add_0_root_add_47_7 ( .A({1'b0, N114, N113, N112, N111, 
        N110, N109, N108, N107, N106, N105}), .B({1'b0, N125, N124, N123, N122, 
        N121, N120, N119, N118, N117, N116}), .CI(1'b0), .SUM({blur[15:8], 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8}) );
  horblur_DW01_add_8 add_1_root_add_47_7 ( .A({1'b0, 1'b0, N91, N90, N89, N88, 
        N87, N86, N85, N84, N83}), .B({1'b0, 1'b0, N102, N101, N100, N99, N98, 
        N97, N96, N95, N94}), .CI(1'b0), .SUM({SYNOPSYS_UNCONNECTED__9, N125, 
        N124, N123, N122, N121, N120, N119, N118, N117, N116}) );
  horblur_DW01_add_9 add_2_root_add_47_7 ( .A({1'b0, 1'b0, N72, N71, N70, N69, 
        N68, N67, N66, N65, N64}), .B({1'b0, 1'b0, N81, N80, N79, N78, N77, 
        N76, N75, N74, N73}), .CI(1'b0), .SUM({SYNOPSYS_UNCONNECTED__10, N114, 
        N113, N112, N111, N110, N109, N108, N107, N106, N105}) );
  horblur_DW01_add_12 add_5_root_add_47_7 ( .A({1'b0, 1'b0, G_3}), .B({1'b0, 
        1'b0, G_4}), .CI(1'b0), .SUM({SYNOPSYS_UNCONNECTED__11, N81, N80, N79, 
        N78, N77, N76, N75, N74, N73}) );
  horblur_DW01_add_13 add_6_root_add_47_7 ( .A({1'b0, G_1}), .B({1'b0, G_2}), 
        .CI(1'b0), .SUM({N72, N71, N70, N69, N68, N67, N66, N65, N64}) );
  horblur_DW01_add_14 add_0_root_add_46_7 ( .A({1'b0, N51, N50, N49, N48, N47, 
        N46, N45, N44, N43, N42}), .B({1'b0, N62, N61, N60, N59, N58, N57, N56, 
        N55, N54, N53}), .CI(1'b0), .SUM({blur[23:16], 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14}) );
  horblur_DW01_add_15 add_1_root_add_46_7 ( .A({1'b0, 1'b0, N28, N27, N26, N25, 
        N24, N23, N22, N21, N20}), .B({1'b0, 1'b0, N39, N38, N37, N36, N35, 
        N34, N33, N32, N31}), .CI(1'b0), .SUM({SYNOPSYS_UNCONNECTED__15, N62, 
        N61, N60, N59, N58, N57, N56, N55, N54, N53}) );
  horblur_DW01_add_16 add_2_root_add_46_7 ( .A({1'b0, 1'b0, N9, N8, N7, N6, N5, 
        N4, N3, N2, N1}), .B({1'b0, 1'b0, N18, N17, N16, N15, N14, N13, N12, 
        N11, N10}), .CI(1'b0), .SUM({SYNOPSYS_UNCONNECTED__16, N51, N50, N49, 
        N48, N47, N46, N45, N44, N43, N42}) );
  horblur_DW01_add_19 add_5_root_add_46_7 ( .A({1'b0, 1'b0, R_3}), .B({1'b0, 
        1'b0, R_4}), .CI(1'b0), .SUM({SYNOPSYS_UNCONNECTED__17, N18, N17, N16, 
        N15, N14, N13, N12, N11, N10}) );
  horblur_DW01_add_20 add_6_root_add_46_7 ( .A({1'b0, R_1}), .B({1'b0, R_2}), 
        .CI(1'b0), .SUM({N9, N8, N7, N6, N5, N4, N3, N2, N1}) );
  BUFX2 U3 ( .A(n44), .Y(n29) );
  BUFX2 U7 ( .A(n44), .Y(n28) );
  BUFX2 U8 ( .A(n44), .Y(n27) );
  BUFX2 U14 ( .A(n44), .Y(n26) );
  BUFX2 U15 ( .A(n44), .Y(n25) );
  BUFX2 U21 ( .A(n44), .Y(n24) );
  BUFX2 U22 ( .A(n44), .Y(n23) );
  BUFX2 U25 ( .A(n44), .Y(n22) );
  BUFX2 U26 ( .A(n44), .Y(n19) );
  BUFX2 U27 ( .A(n44), .Y(n18) );
  BUFX2 U28 ( .A(n44), .Y(n12) );
  BUFX2 U29 ( .A(n44), .Y(n11) );
  BUFX2 U30 ( .A(n44), .Y(n5) );
  BUFX2 U31 ( .A(n44), .Y(n4) );
  BUFX2 U32 ( .A(n46), .Y(n30) );
  BUFX2 U33 ( .A(n46), .Y(n31) );
  BUFX2 U34 ( .A(n46), .Y(n32) );
  BUFX2 U35 ( .A(n46), .Y(n33) );
  BUFX2 U36 ( .A(n46), .Y(n34) );
  BUFX2 U37 ( .A(n46), .Y(n35) );
  BUFX2 U38 ( .A(n46), .Y(n36) );
  BUFX2 U39 ( .A(n46), .Y(n37) );
  BUFX2 U40 ( .A(n46), .Y(n38) );
  BUFX2 U41 ( .A(n46), .Y(n39) );
  BUFX2 U42 ( .A(n46), .Y(n40) );
  BUFX2 U43 ( .A(n46), .Y(n41) );
  BUFX2 U44 ( .A(n46), .Y(n42) );
  BUFX2 U45 ( .A(n46), .Y(n43) );
  OAI22X1 U46 ( .A(n4), .B(n45), .C(n43), .D(n47), .Y(n439) );
  INVX1 U47 ( .A(data[23]), .Y(n47) );
  OAI22X1 U48 ( .A(n4), .B(n48), .C(n43), .D(n49), .Y(n438) );
  INVX1 U49 ( .A(data[22]), .Y(n49) );
  OAI22X1 U50 ( .A(n4), .B(n50), .C(n43), .D(n51), .Y(n437) );
  INVX1 U51 ( .A(data[21]), .Y(n51) );
  OAI22X1 U52 ( .A(n4), .B(n52), .C(n43), .D(n53), .Y(n436) );
  INVX1 U53 ( .A(data[20]), .Y(n53) );
  OAI22X1 U54 ( .A(n4), .B(n54), .C(n43), .D(n55), .Y(n435) );
  INVX1 U55 ( .A(data[19]), .Y(n55) );
  OAI22X1 U56 ( .A(n4), .B(n56), .C(n43), .D(n57), .Y(n434) );
  OAI22X1 U57 ( .A(n4), .B(n58), .C(n43), .D(n59), .Y(n433) );
  OAI22X1 U58 ( .A(n4), .B(n60), .C(n43), .D(n61), .Y(n432) );
  INVX1 U59 ( .A(data[16]), .Y(n61) );
  OAI22X1 U60 ( .A(n4), .B(n62), .C(n43), .D(n45), .Y(n431) );
  INVX1 U61 ( .A(R_1[7]), .Y(n45) );
  OAI22X1 U62 ( .A(n4), .B(n63), .C(n43), .D(n48), .Y(n430) );
  INVX1 U63 ( .A(R_1[6]), .Y(n48) );
  OAI22X1 U64 ( .A(n4), .B(n64), .C(n43), .D(n50), .Y(n429) );
  INVX1 U65 ( .A(R_1[5]), .Y(n50) );
  OAI22X1 U66 ( .A(n4), .B(n65), .C(n43), .D(n52), .Y(n428) );
  INVX1 U67 ( .A(R_1[4]), .Y(n52) );
  OAI22X1 U68 ( .A(n5), .B(n66), .C(n42), .D(n54), .Y(n427) );
  INVX1 U69 ( .A(R_1[3]), .Y(n54) );
  OAI22X1 U70 ( .A(n5), .B(n67), .C(n42), .D(n56), .Y(n426) );
  INVX1 U71 ( .A(R_1[2]), .Y(n56) );
  OAI22X1 U72 ( .A(n5), .B(n68), .C(n42), .D(n58), .Y(n425) );
  INVX1 U73 ( .A(R_1[1]), .Y(n58) );
  OAI22X1 U74 ( .A(n5), .B(n69), .C(n42), .D(n60), .Y(n424) );
  INVX1 U75 ( .A(R_1[0]), .Y(n60) );
  OAI22X1 U76 ( .A(n5), .B(n70), .C(n42), .D(n62), .Y(n423) );
  INVX1 U77 ( .A(R_2[7]), .Y(n62) );
  OAI22X1 U78 ( .A(n5), .B(n71), .C(n42), .D(n63), .Y(n422) );
  INVX1 U79 ( .A(R_2[6]), .Y(n63) );
  OAI22X1 U80 ( .A(n5), .B(n72), .C(n42), .D(n64), .Y(n421) );
  INVX1 U81 ( .A(R_2[5]), .Y(n64) );
  OAI22X1 U82 ( .A(n5), .B(n73), .C(n42), .D(n65), .Y(n420) );
  INVX1 U83 ( .A(R_2[4]), .Y(n65) );
  OAI22X1 U84 ( .A(n5), .B(n74), .C(n42), .D(n66), .Y(n419) );
  INVX1 U85 ( .A(R_2[3]), .Y(n66) );
  OAI22X1 U86 ( .A(n5), .B(n75), .C(n42), .D(n67), .Y(n418) );
  INVX1 U87 ( .A(R_2[2]), .Y(n67) );
  OAI22X1 U88 ( .A(n5), .B(n76), .C(n42), .D(n68), .Y(n417) );
  INVX1 U89 ( .A(R_2[1]), .Y(n68) );
  OAI22X1 U90 ( .A(n5), .B(n77), .C(n42), .D(n69), .Y(n416) );
  INVX1 U91 ( .A(R_2[0]), .Y(n69) );
  OAI22X1 U92 ( .A(n11), .B(n78), .C(n41), .D(n70), .Y(n415) );
  INVX1 U93 ( .A(R_3[7]), .Y(n70) );
  OAI22X1 U94 ( .A(n11), .B(n79), .C(n41), .D(n71), .Y(n414) );
  INVX1 U95 ( .A(R_3[6]), .Y(n71) );
  OAI22X1 U96 ( .A(n11), .B(n80), .C(n41), .D(n72), .Y(n413) );
  INVX1 U97 ( .A(R_3[5]), .Y(n72) );
  OAI22X1 U98 ( .A(n11), .B(n81), .C(n41), .D(n73), .Y(n412) );
  INVX1 U99 ( .A(R_3[4]), .Y(n73) );
  OAI22X1 U100 ( .A(n11), .B(n82), .C(n41), .D(n74), .Y(n411) );
  INVX1 U101 ( .A(R_3[3]), .Y(n74) );
  OAI22X1 U102 ( .A(n11), .B(n83), .C(n41), .D(n75), .Y(n410) );
  INVX1 U103 ( .A(R_3[2]), .Y(n75) );
  OAI22X1 U104 ( .A(n11), .B(n84), .C(n41), .D(n76), .Y(n409) );
  INVX1 U105 ( .A(R_3[1]), .Y(n76) );
  OAI22X1 U106 ( .A(n11), .B(n85), .C(n41), .D(n77), .Y(n408) );
  INVX1 U107 ( .A(R_3[0]), .Y(n77) );
  OAI22X1 U108 ( .A(n11), .B(n86), .C(n41), .D(n78), .Y(n407) );
  INVX1 U109 ( .A(R_4[7]), .Y(n78) );
  OAI22X1 U110 ( .A(n11), .B(n87), .C(n41), .D(n79), .Y(n406) );
  INVX1 U111 ( .A(R_4[6]), .Y(n79) );
  OAI22X1 U112 ( .A(n11), .B(n88), .C(n41), .D(n80), .Y(n405) );
  INVX1 U113 ( .A(R_4[5]), .Y(n80) );
  OAI22X1 U114 ( .A(n11), .B(n89), .C(n41), .D(n81), .Y(n404) );
  INVX1 U115 ( .A(R_4[4]), .Y(n81) );
  OAI22X1 U116 ( .A(n12), .B(n90), .C(n40), .D(n82), .Y(n403) );
  INVX1 U117 ( .A(R_4[3]), .Y(n82) );
  OAI22X1 U118 ( .A(n12), .B(n91), .C(n40), .D(n83), .Y(n402) );
  INVX1 U119 ( .A(R_4[2]), .Y(n83) );
  OAI22X1 U120 ( .A(n12), .B(n92), .C(n40), .D(n84), .Y(n401) );
  INVX1 U121 ( .A(R_4[1]), .Y(n84) );
  OAI22X1 U122 ( .A(n12), .B(n93), .C(n40), .D(n85), .Y(n400) );
  INVX1 U123 ( .A(R_4[0]), .Y(n85) );
  OAI22X1 U124 ( .A(n12), .B(n94), .C(n40), .D(n86), .Y(n399) );
  OAI22X1 U125 ( .A(n12), .B(n95), .C(n40), .D(n87), .Y(n398) );
  OAI22X1 U126 ( .A(n12), .B(n96), .C(n40), .D(n88), .Y(n397) );
  OAI22X1 U127 ( .A(n12), .B(n97), .C(n40), .D(n89), .Y(n396) );
  OAI22X1 U128 ( .A(n12), .B(n98), .C(n40), .D(n90), .Y(n395) );
  OAI22X1 U129 ( .A(n12), .B(n99), .C(n40), .D(n91), .Y(n394) );
  OAI22X1 U130 ( .A(n12), .B(n100), .C(n40), .D(n92), .Y(n393) );
  OAI22X1 U131 ( .A(n12), .B(n101), .C(n40), .D(n93), .Y(n392) );
  INVX1 U132 ( .A(R_5[0]), .Y(n93) );
  OAI22X1 U133 ( .A(n18), .B(n102), .C(n39), .D(n94), .Y(n391) );
  INVX1 U134 ( .A(R_6[7]), .Y(n94) );
  OAI22X1 U135 ( .A(n18), .B(n103), .C(n39), .D(n95), .Y(n390) );
  INVX1 U136 ( .A(R_6[6]), .Y(n95) );
  OAI22X1 U137 ( .A(n18), .B(n104), .C(n39), .D(n96), .Y(n389) );
  INVX1 U138 ( .A(R_6[5]), .Y(n96) );
  OAI22X1 U139 ( .A(n18), .B(n105), .C(n39), .D(n97), .Y(n388) );
  INVX1 U140 ( .A(R_6[4]), .Y(n97) );
  OAI22X1 U141 ( .A(n18), .B(n106), .C(n39), .D(n98), .Y(n387) );
  INVX1 U142 ( .A(R_6[3]), .Y(n98) );
  OAI22X1 U143 ( .A(n18), .B(n107), .C(n39), .D(n99), .Y(n386) );
  INVX1 U144 ( .A(R_6[2]), .Y(n99) );
  OAI22X1 U145 ( .A(n18), .B(n108), .C(n39), .D(n100), .Y(n385) );
  INVX1 U146 ( .A(R_6[1]), .Y(n100) );
  OAI22X1 U147 ( .A(n18), .B(n109), .C(n39), .D(n101), .Y(n384) );
  INVX1 U148 ( .A(R_6[0]), .Y(n101) );
  INVX1 U149 ( .A(R_7[0]), .Y(n109) );
  OAI22X1 U150 ( .A(n18), .B(n110), .C(n39), .D(n111), .Y(n383) );
  INVX1 U151 ( .A(data[15]), .Y(n111) );
  OAI22X1 U152 ( .A(n18), .B(n112), .C(n39), .D(n113), .Y(n382) );
  INVX1 U153 ( .A(data[14]), .Y(n113) );
  OAI22X1 U154 ( .A(n18), .B(n114), .C(n39), .D(n115), .Y(n381) );
  INVX1 U155 ( .A(data[13]), .Y(n115) );
  OAI22X1 U156 ( .A(n18), .B(n116), .C(n39), .D(n117), .Y(n380) );
  INVX1 U157 ( .A(data[12]), .Y(n117) );
  OAI22X1 U158 ( .A(n19), .B(n118), .C(n38), .D(n119), .Y(n379) );
  INVX1 U159 ( .A(data[11]), .Y(n119) );
  OAI22X1 U160 ( .A(n19), .B(n120), .C(n38), .D(n121), .Y(n378) );
  OAI22X1 U161 ( .A(n19), .B(n122), .C(n38), .D(n123), .Y(n377) );
  OAI22X1 U162 ( .A(n19), .B(n124), .C(n38), .D(n125), .Y(n376) );
  INVX1 U163 ( .A(data[8]), .Y(n125) );
  OAI22X1 U164 ( .A(n19), .B(n126), .C(n38), .D(n110), .Y(n375) );
  INVX1 U165 ( .A(G_1[7]), .Y(n110) );
  OAI22X1 U166 ( .A(n19), .B(n127), .C(n38), .D(n112), .Y(n374) );
  INVX1 U167 ( .A(G_1[6]), .Y(n112) );
  OAI22X1 U168 ( .A(n19), .B(n128), .C(n38), .D(n114), .Y(n373) );
  INVX1 U169 ( .A(G_1[5]), .Y(n114) );
  OAI22X1 U170 ( .A(n19), .B(n129), .C(n38), .D(n116), .Y(n372) );
  INVX1 U171 ( .A(G_1[4]), .Y(n116) );
  OAI22X1 U172 ( .A(n19), .B(n130), .C(n38), .D(n118), .Y(n371) );
  INVX1 U173 ( .A(G_1[3]), .Y(n118) );
  OAI22X1 U174 ( .A(n19), .B(n131), .C(n38), .D(n120), .Y(n370) );
  INVX1 U175 ( .A(G_1[2]), .Y(n120) );
  OAI22X1 U176 ( .A(n19), .B(n132), .C(n38), .D(n122), .Y(n369) );
  INVX1 U177 ( .A(G_1[1]), .Y(n122) );
  OAI22X1 U178 ( .A(n19), .B(n133), .C(n38), .D(n124), .Y(n368) );
  INVX1 U179 ( .A(G_1[0]), .Y(n124) );
  OAI22X1 U180 ( .A(n22), .B(n134), .C(n37), .D(n126), .Y(n367) );
  INVX1 U181 ( .A(G_2[7]), .Y(n126) );
  OAI22X1 U182 ( .A(n22), .B(n135), .C(n37), .D(n127), .Y(n366) );
  INVX1 U183 ( .A(G_2[6]), .Y(n127) );
  OAI22X1 U184 ( .A(n22), .B(n136), .C(n37), .D(n128), .Y(n365) );
  INVX1 U185 ( .A(G_2[5]), .Y(n128) );
  OAI22X1 U186 ( .A(n22), .B(n137), .C(n37), .D(n129), .Y(n364) );
  INVX1 U187 ( .A(G_2[4]), .Y(n129) );
  OAI22X1 U188 ( .A(n22), .B(n138), .C(n37), .D(n130), .Y(n363) );
  INVX1 U189 ( .A(G_2[3]), .Y(n130) );
  OAI22X1 U190 ( .A(n22), .B(n139), .C(n37), .D(n131), .Y(n362) );
  INVX1 U191 ( .A(G_2[2]), .Y(n131) );
  OAI22X1 U192 ( .A(n22), .B(n140), .C(n37), .D(n132), .Y(n361) );
  INVX1 U193 ( .A(G_2[1]), .Y(n132) );
  OAI22X1 U194 ( .A(n22), .B(n141), .C(n37), .D(n133), .Y(n360) );
  INVX1 U195 ( .A(G_2[0]), .Y(n133) );
  OAI22X1 U196 ( .A(n22), .B(n142), .C(n37), .D(n134), .Y(n359) );
  INVX1 U197 ( .A(G_3[7]), .Y(n134) );
  OAI22X1 U198 ( .A(n22), .B(n143), .C(n37), .D(n135), .Y(n358) );
  INVX1 U199 ( .A(G_3[6]), .Y(n135) );
  OAI22X1 U200 ( .A(n22), .B(n144), .C(n37), .D(n136), .Y(n357) );
  INVX1 U201 ( .A(G_3[5]), .Y(n136) );
  OAI22X1 U202 ( .A(n22), .B(n145), .C(n37), .D(n137), .Y(n356) );
  INVX1 U203 ( .A(G_3[4]), .Y(n137) );
  OAI22X1 U204 ( .A(n23), .B(n146), .C(n36), .D(n138), .Y(n355) );
  INVX1 U205 ( .A(G_3[3]), .Y(n138) );
  OAI22X1 U206 ( .A(n23), .B(n147), .C(n36), .D(n139), .Y(n354) );
  INVX1 U207 ( .A(G_3[2]), .Y(n139) );
  OAI22X1 U208 ( .A(n23), .B(n148), .C(n36), .D(n140), .Y(n353) );
  INVX1 U209 ( .A(G_3[1]), .Y(n140) );
  OAI22X1 U210 ( .A(n23), .B(n149), .C(n36), .D(n141), .Y(n352) );
  INVX1 U211 ( .A(G_3[0]), .Y(n141) );
  OAI22X1 U212 ( .A(n23), .B(n150), .C(n36), .D(n142), .Y(n351) );
  INVX1 U213 ( .A(G_4[7]), .Y(n142) );
  OAI22X1 U214 ( .A(n23), .B(n151), .C(n36), .D(n143), .Y(n350) );
  INVX1 U215 ( .A(G_4[6]), .Y(n143) );
  OAI22X1 U216 ( .A(n23), .B(n152), .C(n36), .D(n144), .Y(n349) );
  INVX1 U217 ( .A(G_4[5]), .Y(n144) );
  OAI22X1 U218 ( .A(n23), .B(n153), .C(n36), .D(n145), .Y(n348) );
  INVX1 U219 ( .A(G_4[4]), .Y(n145) );
  OAI22X1 U220 ( .A(n23), .B(n154), .C(n36), .D(n146), .Y(n347) );
  INVX1 U221 ( .A(G_4[3]), .Y(n146) );
  OAI22X1 U222 ( .A(n23), .B(n155), .C(n36), .D(n147), .Y(n346) );
  INVX1 U223 ( .A(G_4[2]), .Y(n147) );
  OAI22X1 U224 ( .A(n23), .B(n156), .C(n36), .D(n148), .Y(n345) );
  INVX1 U225 ( .A(G_4[1]), .Y(n148) );
  OAI22X1 U226 ( .A(n23), .B(n157), .C(n36), .D(n149), .Y(n344) );
  INVX1 U227 ( .A(G_4[0]), .Y(n149) );
  OAI22X1 U228 ( .A(n24), .B(n158), .C(n35), .D(n150), .Y(n343) );
  OAI22X1 U229 ( .A(n24), .B(n159), .C(n35), .D(n151), .Y(n342) );
  OAI22X1 U230 ( .A(n24), .B(n160), .C(n35), .D(n152), .Y(n341) );
  OAI22X1 U231 ( .A(n24), .B(n161), .C(n35), .D(n153), .Y(n340) );
  OAI22X1 U232 ( .A(n24), .B(n162), .C(n35), .D(n154), .Y(n339) );
  OAI22X1 U233 ( .A(n24), .B(n163), .C(n35), .D(n155), .Y(n338) );
  OAI22X1 U234 ( .A(n24), .B(n164), .C(n35), .D(n156), .Y(n337) );
  OAI22X1 U235 ( .A(n24), .B(n165), .C(n35), .D(n157), .Y(n336) );
  INVX1 U236 ( .A(G_5[0]), .Y(n157) );
  OAI22X1 U237 ( .A(n24), .B(n166), .C(n35), .D(n158), .Y(n335) );
  INVX1 U238 ( .A(G_6[7]), .Y(n158) );
  OAI22X1 U239 ( .A(n24), .B(n167), .C(n35), .D(n159), .Y(n334) );
  INVX1 U240 ( .A(G_6[6]), .Y(n159) );
  OAI22X1 U241 ( .A(n24), .B(n168), .C(n35), .D(n160), .Y(n333) );
  INVX1 U242 ( .A(G_6[5]), .Y(n160) );
  OAI22X1 U243 ( .A(n24), .B(n169), .C(n35), .D(n161), .Y(n332) );
  INVX1 U244 ( .A(G_6[4]), .Y(n161) );
  OAI22X1 U245 ( .A(n25), .B(n170), .C(n34), .D(n162), .Y(n331) );
  INVX1 U246 ( .A(G_6[3]), .Y(n162) );
  OAI22X1 U247 ( .A(n25), .B(n171), .C(n34), .D(n163), .Y(n330) );
  INVX1 U248 ( .A(G_6[2]), .Y(n163) );
  OAI22X1 U249 ( .A(n25), .B(n172), .C(n34), .D(n164), .Y(n329) );
  INVX1 U250 ( .A(G_6[1]), .Y(n164) );
  OAI22X1 U251 ( .A(n25), .B(n173), .C(n34), .D(n165), .Y(n328) );
  INVX1 U252 ( .A(G_6[0]), .Y(n165) );
  INVX1 U253 ( .A(G_7[0]), .Y(n173) );
  OAI22X1 U254 ( .A(n25), .B(n174), .C(n34), .D(n175), .Y(n327) );
  INVX1 U255 ( .A(data[7]), .Y(n175) );
  OAI22X1 U256 ( .A(n25), .B(n176), .C(n34), .D(n177), .Y(n326) );
  INVX1 U257 ( .A(data[6]), .Y(n177) );
  OAI22X1 U258 ( .A(n25), .B(n178), .C(n34), .D(n179), .Y(n325) );
  INVX1 U259 ( .A(data[5]), .Y(n179) );
  OAI22X1 U260 ( .A(n25), .B(n180), .C(n34), .D(n181), .Y(n324) );
  INVX1 U261 ( .A(data[4]), .Y(n181) );
  OAI22X1 U262 ( .A(n25), .B(n182), .C(n34), .D(n183), .Y(n323) );
  INVX1 U263 ( .A(data[3]), .Y(n183) );
  OAI22X1 U264 ( .A(n25), .B(n184), .C(n34), .D(n185), .Y(n322) );
  OAI22X1 U265 ( .A(n25), .B(n186), .C(n34), .D(n187), .Y(n321) );
  OAI22X1 U266 ( .A(n25), .B(n188), .C(n34), .D(n189), .Y(n320) );
  INVX1 U267 ( .A(data[0]), .Y(n189) );
  OAI22X1 U268 ( .A(n26), .B(n190), .C(n33), .D(n174), .Y(n319) );
  INVX1 U269 ( .A(B_1[7]), .Y(n174) );
  OAI22X1 U270 ( .A(n26), .B(n191), .C(n33), .D(n176), .Y(n318) );
  INVX1 U271 ( .A(B_1[6]), .Y(n176) );
  OAI22X1 U272 ( .A(n26), .B(n192), .C(n33), .D(n178), .Y(n317) );
  INVX1 U273 ( .A(B_1[5]), .Y(n178) );
  OAI22X1 U274 ( .A(n26), .B(n193), .C(n33), .D(n180), .Y(n316) );
  INVX1 U275 ( .A(B_1[4]), .Y(n180) );
  OAI22X1 U276 ( .A(n26), .B(n194), .C(n33), .D(n182), .Y(n315) );
  INVX1 U277 ( .A(B_1[3]), .Y(n182) );
  OAI22X1 U278 ( .A(n26), .B(n195), .C(n33), .D(n184), .Y(n314) );
  INVX1 U279 ( .A(B_1[2]), .Y(n184) );
  OAI22X1 U280 ( .A(n26), .B(n196), .C(n33), .D(n186), .Y(n313) );
  INVX1 U281 ( .A(B_1[1]), .Y(n186) );
  OAI22X1 U282 ( .A(n26), .B(n197), .C(n33), .D(n188), .Y(n312) );
  INVX1 U283 ( .A(B_1[0]), .Y(n188) );
  OAI22X1 U284 ( .A(n26), .B(n198), .C(n33), .D(n190), .Y(n311) );
  INVX1 U285 ( .A(B_2[7]), .Y(n190) );
  OAI22X1 U286 ( .A(n26), .B(n199), .C(n33), .D(n191), .Y(n310) );
  INVX1 U287 ( .A(B_2[6]), .Y(n191) );
  OAI22X1 U288 ( .A(n26), .B(n200), .C(n33), .D(n192), .Y(n309) );
  INVX1 U289 ( .A(B_2[5]), .Y(n192) );
  OAI22X1 U290 ( .A(n26), .B(n201), .C(n33), .D(n193), .Y(n308) );
  INVX1 U291 ( .A(B_2[4]), .Y(n193) );
  OAI22X1 U292 ( .A(n27), .B(n202), .C(n32), .D(n194), .Y(n307) );
  INVX1 U293 ( .A(B_2[3]), .Y(n194) );
  OAI22X1 U294 ( .A(n27), .B(n203), .C(n32), .D(n195), .Y(n306) );
  INVX1 U295 ( .A(B_2[2]), .Y(n195) );
  OAI22X1 U296 ( .A(n27), .B(n204), .C(n32), .D(n196), .Y(n305) );
  INVX1 U297 ( .A(B_2[1]), .Y(n196) );
  OAI22X1 U298 ( .A(n27), .B(n205), .C(n32), .D(n197), .Y(n304) );
  INVX1 U299 ( .A(B_2[0]), .Y(n197) );
  OAI22X1 U300 ( .A(n27), .B(n206), .C(n32), .D(n198), .Y(n303) );
  INVX1 U301 ( .A(B_3[7]), .Y(n198) );
  OAI22X1 U302 ( .A(n27), .B(n207), .C(n32), .D(n199), .Y(n302) );
  INVX1 U303 ( .A(B_3[6]), .Y(n199) );
  OAI22X1 U304 ( .A(n27), .B(n208), .C(n32), .D(n200), .Y(n301) );
  INVX1 U305 ( .A(B_3[5]), .Y(n200) );
  OAI22X1 U306 ( .A(n27), .B(n209), .C(n32), .D(n201), .Y(n300) );
  INVX1 U307 ( .A(B_3[4]), .Y(n201) );
  OAI22X1 U308 ( .A(n27), .B(n210), .C(n32), .D(n202), .Y(n299) );
  INVX1 U309 ( .A(B_3[3]), .Y(n202) );
  OAI22X1 U310 ( .A(n27), .B(n211), .C(n32), .D(n203), .Y(n298) );
  INVX1 U311 ( .A(B_3[2]), .Y(n203) );
  OAI22X1 U312 ( .A(n27), .B(n212), .C(n32), .D(n204), .Y(n297) );
  INVX1 U313 ( .A(B_3[1]), .Y(n204) );
  OAI22X1 U314 ( .A(n27), .B(n213), .C(n32), .D(n205), .Y(n296) );
  INVX1 U315 ( .A(B_3[0]), .Y(n205) );
  OAI22X1 U316 ( .A(n28), .B(n214), .C(n31), .D(n206), .Y(n295) );
  INVX1 U317 ( .A(B_4[7]), .Y(n206) );
  OAI22X1 U318 ( .A(n28), .B(n215), .C(n31), .D(n207), .Y(n294) );
  INVX1 U319 ( .A(B_4[6]), .Y(n207) );
  OAI22X1 U320 ( .A(n28), .B(n216), .C(n31), .D(n208), .Y(n293) );
  INVX1 U321 ( .A(B_4[5]), .Y(n208) );
  OAI22X1 U322 ( .A(n28), .B(n217), .C(n31), .D(n209), .Y(n292) );
  INVX1 U323 ( .A(B_4[4]), .Y(n209) );
  OAI22X1 U324 ( .A(n28), .B(n218), .C(n31), .D(n210), .Y(n291) );
  INVX1 U325 ( .A(B_4[3]), .Y(n210) );
  OAI22X1 U326 ( .A(n28), .B(n219), .C(n31), .D(n211), .Y(n290) );
  INVX1 U327 ( .A(B_4[2]), .Y(n211) );
  OAI22X1 U328 ( .A(n28), .B(n220), .C(n31), .D(n212), .Y(n289) );
  INVX1 U329 ( .A(B_4[1]), .Y(n212) );
  OAI22X1 U330 ( .A(n28), .B(n221), .C(n31), .D(n213), .Y(n288) );
  INVX1 U331 ( .A(B_4[0]), .Y(n213) );
  OAI22X1 U332 ( .A(n28), .B(n222), .C(n31), .D(n214), .Y(n287) );
  OAI22X1 U333 ( .A(n28), .B(n223), .C(n31), .D(n215), .Y(n286) );
  OAI22X1 U334 ( .A(n28), .B(n224), .C(n31), .D(n216), .Y(n285) );
  OAI22X1 U335 ( .A(n28), .B(n225), .C(n31), .D(n217), .Y(n284) );
  OAI22X1 U336 ( .A(n29), .B(n226), .C(n30), .D(n218), .Y(n283) );
  OAI22X1 U337 ( .A(n29), .B(n227), .C(n30), .D(n219), .Y(n282) );
  OAI22X1 U338 ( .A(n29), .B(n228), .C(n30), .D(n220), .Y(n281) );
  OAI22X1 U339 ( .A(n29), .B(n229), .C(n30), .D(n221), .Y(n280) );
  INVX1 U340 ( .A(B_5[0]), .Y(n221) );
  OAI22X1 U341 ( .A(n29), .B(n230), .C(n30), .D(n229), .Y(n279) );
  INVX1 U342 ( .A(B_6[0]), .Y(n229) );
  INVX1 U343 ( .A(B_7[0]), .Y(n230) );
  OAI22X1 U344 ( .A(n29), .B(n231), .C(n30), .D(n228), .Y(n278) );
  INVX1 U345 ( .A(B_6[1]), .Y(n228) );
  OAI22X1 U346 ( .A(n29), .B(n232), .C(n30), .D(n227), .Y(n277) );
  INVX1 U347 ( .A(B_6[2]), .Y(n227) );
  OAI22X1 U348 ( .A(n29), .B(n233), .C(n30), .D(n226), .Y(n276) );
  INVX1 U349 ( .A(B_6[3]), .Y(n226) );
  OAI22X1 U350 ( .A(n29), .B(n234), .C(n30), .D(n225), .Y(n275) );
  INVX1 U351 ( .A(B_6[4]), .Y(n225) );
  OAI22X1 U352 ( .A(n29), .B(n235), .C(n30), .D(n224), .Y(n274) );
  INVX1 U353 ( .A(B_6[5]), .Y(n224) );
  OAI22X1 U354 ( .A(n29), .B(n236), .C(n30), .D(n223), .Y(n273) );
  INVX1 U355 ( .A(B_6[6]), .Y(n223) );
  OAI22X1 U356 ( .A(n29), .B(n237), .C(n30), .D(n222), .Y(n272) );
  INVX1 U357 ( .A(B_6[7]), .Y(n222) );
  NAND2X1 U358 ( .A(n_rst), .B(n44), .Y(n46) );
  OAI21X1 U359 ( .A(n238), .B(n239), .C(n_rst), .Y(n44) );
  NAND2X1 U360 ( .A(wb_en), .B(mode_wb[2]), .Y(n239) );
  NAND2X1 U361 ( .A(mode_wb[0]), .B(n240), .Y(n238) );
  INVX1 U362 ( .A(mode_wb[1]), .Y(n240) );
  XOR2X1 U363 ( .A(n241), .B(n242), .Y(N99) );
  XOR2X1 U364 ( .A(data[13]), .B(G_7[5]), .Y(n242) );
  XOR2X1 U365 ( .A(n243), .B(n244), .Y(N98) );
  XOR2X1 U366 ( .A(data[12]), .B(G_7[4]), .Y(n244) );
  XOR2X1 U367 ( .A(n245), .B(n246), .Y(N97) );
  XOR2X1 U368 ( .A(data[11]), .B(G_7[3]), .Y(n246) );
  XOR2X1 U369 ( .A(n247), .B(n248), .Y(N96) );
  XOR2X1 U370 ( .A(n121), .B(G_7[2]), .Y(n247) );
  INVX1 U371 ( .A(data[10]), .Y(n121) );
  XOR2X1 U372 ( .A(n249), .B(n250), .Y(N95) );
  XOR2X1 U373 ( .A(n123), .B(G_7[1]), .Y(n250) );
  INVX1 U374 ( .A(data[9]), .Y(n123) );
  XOR2X1 U375 ( .A(data[8]), .B(G_7[0]), .Y(N94) );
  OAI21X1 U376 ( .A(n251), .B(n150), .C(n252), .Y(N91) );
  OAI21X1 U377 ( .A(G_5[7]), .B(n253), .C(G_6[7]), .Y(n252) );
  INVX1 U378 ( .A(G_5[7]), .Y(n150) );
  INVX1 U379 ( .A(n253), .Y(n251) );
  XOR2X1 U380 ( .A(n253), .B(n254), .Y(N90) );
  XOR2X1 U381 ( .A(G_6[7]), .B(G_5[7]), .Y(n254) );
  OAI21X1 U382 ( .A(n255), .B(n151), .C(n256), .Y(n253) );
  OAI21X1 U383 ( .A(G_5[6]), .B(n257), .C(G_6[6]), .Y(n256) );
  INVX1 U384 ( .A(G_5[6]), .Y(n151) );
  INVX1 U385 ( .A(n257), .Y(n255) );
  XOR2X1 U386 ( .A(n257), .B(n258), .Y(N89) );
  XOR2X1 U387 ( .A(G_6[6]), .B(G_5[6]), .Y(n258) );
  OAI21X1 U388 ( .A(n259), .B(n152), .C(n260), .Y(n257) );
  OAI21X1 U389 ( .A(G_5[5]), .B(n261), .C(G_6[5]), .Y(n260) );
  INVX1 U390 ( .A(G_5[5]), .Y(n152) );
  INVX1 U391 ( .A(n261), .Y(n259) );
  XOR2X1 U392 ( .A(n261), .B(n262), .Y(N88) );
  XOR2X1 U393 ( .A(G_6[5]), .B(G_5[5]), .Y(n262) );
  OAI21X1 U394 ( .A(n263), .B(n153), .C(n264), .Y(n261) );
  OAI21X1 U395 ( .A(G_5[4]), .B(n265), .C(G_6[4]), .Y(n264) );
  INVX1 U396 ( .A(G_5[4]), .Y(n153) );
  INVX1 U397 ( .A(n265), .Y(n263) );
  XOR2X1 U398 ( .A(n265), .B(n266), .Y(N87) );
  XOR2X1 U399 ( .A(G_6[4]), .B(G_5[4]), .Y(n266) );
  OAI21X1 U400 ( .A(n267), .B(n154), .C(n268), .Y(n265) );
  OAI21X1 U401 ( .A(G_5[3]), .B(n269), .C(G_6[3]), .Y(n268) );
  XOR2X1 U402 ( .A(n270), .B(n267), .Y(N86) );
  INVX1 U403 ( .A(n269), .Y(n267) );
  OAI21X1 U404 ( .A(n271), .B(n155), .C(n440), .Y(n269) );
  OAI21X1 U405 ( .A(G_5[2]), .B(n441), .C(G_6[2]), .Y(n440) );
  XOR2X1 U406 ( .A(n154), .B(G_6[3]), .Y(n270) );
  INVX1 U407 ( .A(G_5[3]), .Y(n154) );
  XOR2X1 U408 ( .A(n442), .B(n271), .Y(N85) );
  INVX1 U409 ( .A(n441), .Y(n271) );
  OAI21X1 U410 ( .A(n156), .B(n443), .C(n444), .Y(n441) );
  OAI21X1 U411 ( .A(n445), .B(G_5[1]), .C(G_6[1]), .Y(n444) );
  INVX1 U412 ( .A(n443), .Y(n445) );
  XOR2X1 U413 ( .A(n155), .B(G_6[2]), .Y(n442) );
  INVX1 U414 ( .A(G_5[2]), .Y(n155) );
  XOR2X1 U415 ( .A(n443), .B(n446), .Y(N84) );
  XOR2X1 U416 ( .A(n156), .B(G_6[1]), .Y(n446) );
  INVX1 U417 ( .A(G_5[1]), .Y(n156) );
  NAND2X1 U418 ( .A(G_6[0]), .B(G_5[0]), .Y(n443) );
  XOR2X1 U419 ( .A(G_6[0]), .B(G_5[0]), .Y(N83) );
  OAI21X1 U420 ( .A(n447), .B(n102), .C(n448), .Y(N39) );
  OAI21X1 U421 ( .A(R_7[7]), .B(n449), .C(data[23]), .Y(n448) );
  INVX1 U422 ( .A(R_7[7]), .Y(n102) );
  INVX1 U423 ( .A(n449), .Y(n447) );
  XOR2X1 U424 ( .A(n449), .B(n450), .Y(N38) );
  XOR2X1 U425 ( .A(data[23]), .B(R_7[7]), .Y(n450) );
  OAI21X1 U426 ( .A(n451), .B(n103), .C(n452), .Y(n449) );
  OAI21X1 U427 ( .A(R_7[6]), .B(n453), .C(data[22]), .Y(n452) );
  INVX1 U428 ( .A(R_7[6]), .Y(n103) );
  INVX1 U429 ( .A(n453), .Y(n451) );
  XOR2X1 U430 ( .A(n453), .B(n454), .Y(N37) );
  XOR2X1 U431 ( .A(data[22]), .B(R_7[6]), .Y(n454) );
  OAI21X1 U432 ( .A(n455), .B(n104), .C(n456), .Y(n453) );
  OAI21X1 U433 ( .A(R_7[5]), .B(n457), .C(data[21]), .Y(n456) );
  INVX1 U434 ( .A(R_7[5]), .Y(n104) );
  INVX1 U435 ( .A(n457), .Y(n455) );
  XOR2X1 U436 ( .A(n457), .B(n458), .Y(N36) );
  XOR2X1 U437 ( .A(data[21]), .B(R_7[5]), .Y(n458) );
  OAI21X1 U438 ( .A(n459), .B(n105), .C(n460), .Y(n457) );
  OAI21X1 U439 ( .A(R_7[4]), .B(n461), .C(data[20]), .Y(n460) );
  INVX1 U440 ( .A(R_7[4]), .Y(n105) );
  INVX1 U441 ( .A(n461), .Y(n459) );
  XOR2X1 U442 ( .A(n461), .B(n462), .Y(N35) );
  XOR2X1 U443 ( .A(data[20]), .B(R_7[4]), .Y(n462) );
  OAI21X1 U444 ( .A(n463), .B(n106), .C(n464), .Y(n461) );
  OAI21X1 U445 ( .A(R_7[3]), .B(n465), .C(data[19]), .Y(n464) );
  INVX1 U446 ( .A(R_7[3]), .Y(n106) );
  INVX1 U447 ( .A(n465), .Y(n463) );
  XOR2X1 U448 ( .A(n465), .B(n466), .Y(N34) );
  XOR2X1 U449 ( .A(data[19]), .B(R_7[3]), .Y(n466) );
  OAI21X1 U450 ( .A(n467), .B(n107), .C(n468), .Y(n465) );
  OAI21X1 U451 ( .A(R_7[2]), .B(n469), .C(data[18]), .Y(n468) );
  INVX1 U452 ( .A(R_7[2]), .Y(n107) );
  XOR2X1 U453 ( .A(n470), .B(n467), .Y(N33) );
  INVX1 U454 ( .A(n469), .Y(n467) );
  OAI21X1 U455 ( .A(n108), .B(n471), .C(n472), .Y(n469) );
  OAI21X1 U456 ( .A(n473), .B(R_7[1]), .C(data[17]), .Y(n472) );
  INVX1 U457 ( .A(n471), .Y(n473) );
  INVX1 U458 ( .A(R_7[1]), .Y(n108) );
  XOR2X1 U459 ( .A(n57), .B(R_7[2]), .Y(n470) );
  INVX1 U460 ( .A(data[18]), .Y(n57) );
  XOR2X1 U461 ( .A(n471), .B(n474), .Y(N32) );
  XOR2X1 U462 ( .A(n59), .B(R_7[1]), .Y(n474) );
  INVX1 U463 ( .A(data[17]), .Y(n59) );
  NAND2X1 U464 ( .A(R_7[0]), .B(data[16]), .Y(n471) );
  XOR2X1 U465 ( .A(data[16]), .B(R_7[0]), .Y(N31) );
  OAI21X1 U466 ( .A(n475), .B(n86), .C(n476), .Y(N28) );
  OAI21X1 U467 ( .A(R_5[7]), .B(n477), .C(R_6[7]), .Y(n476) );
  INVX1 U468 ( .A(R_5[7]), .Y(n86) );
  INVX1 U469 ( .A(n477), .Y(n475) );
  XOR2X1 U470 ( .A(n477), .B(n478), .Y(N27) );
  XOR2X1 U471 ( .A(R_6[7]), .B(R_5[7]), .Y(n478) );
  OAI21X1 U472 ( .A(n479), .B(n87), .C(n480), .Y(n477) );
  OAI21X1 U473 ( .A(R_5[6]), .B(n481), .C(R_6[6]), .Y(n480) );
  INVX1 U474 ( .A(R_5[6]), .Y(n87) );
  INVX1 U475 ( .A(n481), .Y(n479) );
  XOR2X1 U476 ( .A(n481), .B(n482), .Y(N26) );
  XOR2X1 U477 ( .A(R_6[6]), .B(R_5[6]), .Y(n482) );
  OAI21X1 U478 ( .A(n483), .B(n88), .C(n484), .Y(n481) );
  OAI21X1 U479 ( .A(R_5[5]), .B(n485), .C(R_6[5]), .Y(n484) );
  INVX1 U480 ( .A(R_5[5]), .Y(n88) );
  INVX1 U481 ( .A(n485), .Y(n483) );
  XOR2X1 U482 ( .A(n485), .B(n486), .Y(N25) );
  XOR2X1 U483 ( .A(R_6[5]), .B(R_5[5]), .Y(n486) );
  OAI21X1 U484 ( .A(n487), .B(n89), .C(n488), .Y(n485) );
  OAI21X1 U485 ( .A(R_5[4]), .B(n489), .C(R_6[4]), .Y(n488) );
  INVX1 U486 ( .A(R_5[4]), .Y(n89) );
  INVX1 U487 ( .A(n489), .Y(n487) );
  XOR2X1 U488 ( .A(n489), .B(n490), .Y(N24) );
  XOR2X1 U489 ( .A(R_6[4]), .B(R_5[4]), .Y(n490) );
  OAI21X1 U490 ( .A(n491), .B(n90), .C(n492), .Y(n489) );
  OAI21X1 U491 ( .A(R_5[3]), .B(n493), .C(R_6[3]), .Y(n492) );
  XOR2X1 U492 ( .A(n494), .B(n491), .Y(N23) );
  INVX1 U493 ( .A(n493), .Y(n491) );
  OAI21X1 U494 ( .A(n495), .B(n91), .C(n496), .Y(n493) );
  OAI21X1 U495 ( .A(R_5[2]), .B(n497), .C(R_6[2]), .Y(n496) );
  XOR2X1 U496 ( .A(n90), .B(R_6[3]), .Y(n494) );
  INVX1 U497 ( .A(R_5[3]), .Y(n90) );
  XOR2X1 U498 ( .A(n498), .B(n495), .Y(N22) );
  INVX1 U499 ( .A(n497), .Y(n495) );
  OAI21X1 U500 ( .A(n92), .B(n499), .C(n500), .Y(n497) );
  OAI21X1 U501 ( .A(n501), .B(R_5[1]), .C(R_6[1]), .Y(n500) );
  INVX1 U502 ( .A(n499), .Y(n501) );
  XOR2X1 U503 ( .A(n91), .B(R_6[2]), .Y(n498) );
  INVX1 U504 ( .A(R_5[2]), .Y(n91) );
  XOR2X1 U505 ( .A(n499), .B(n502), .Y(N21) );
  XOR2X1 U506 ( .A(n92), .B(R_6[1]), .Y(n502) );
  INVX1 U507 ( .A(R_5[1]), .Y(n92) );
  NAND2X1 U508 ( .A(R_6[0]), .B(R_5[0]), .Y(n499) );
  XOR2X1 U509 ( .A(R_6[0]), .B(R_5[0]), .Y(N20) );
  OAI21X1 U510 ( .A(n503), .B(n237), .C(n504), .Y(N165) );
  OAI21X1 U511 ( .A(B_7[7]), .B(n505), .C(data[7]), .Y(n504) );
  INVX1 U512 ( .A(B_7[7]), .Y(n237) );
  INVX1 U513 ( .A(n505), .Y(n503) );
  XOR2X1 U514 ( .A(n505), .B(n506), .Y(N164) );
  XOR2X1 U515 ( .A(data[7]), .B(B_7[7]), .Y(n506) );
  OAI21X1 U516 ( .A(n507), .B(n236), .C(n508), .Y(n505) );
  OAI21X1 U517 ( .A(B_7[6]), .B(n509), .C(data[6]), .Y(n508) );
  INVX1 U518 ( .A(B_7[6]), .Y(n236) );
  INVX1 U519 ( .A(n509), .Y(n507) );
  XOR2X1 U520 ( .A(n509), .B(n510), .Y(N163) );
  XOR2X1 U521 ( .A(data[6]), .B(B_7[6]), .Y(n510) );
  OAI21X1 U522 ( .A(n511), .B(n235), .C(n512), .Y(n509) );
  OAI21X1 U523 ( .A(B_7[5]), .B(n513), .C(data[5]), .Y(n512) );
  INVX1 U524 ( .A(B_7[5]), .Y(n235) );
  INVX1 U525 ( .A(n513), .Y(n511) );
  XOR2X1 U526 ( .A(n513), .B(n514), .Y(N162) );
  XOR2X1 U527 ( .A(data[5]), .B(B_7[5]), .Y(n514) );
  OAI21X1 U528 ( .A(n515), .B(n234), .C(n516), .Y(n513) );
  OAI21X1 U529 ( .A(B_7[4]), .B(n517), .C(data[4]), .Y(n516) );
  INVX1 U530 ( .A(B_7[4]), .Y(n234) );
  INVX1 U531 ( .A(n517), .Y(n515) );
  XOR2X1 U532 ( .A(n517), .B(n518), .Y(N161) );
  XOR2X1 U533 ( .A(data[4]), .B(B_7[4]), .Y(n518) );
  OAI21X1 U534 ( .A(n519), .B(n233), .C(n520), .Y(n517) );
  OAI21X1 U535 ( .A(B_7[3]), .B(n521), .C(data[3]), .Y(n520) );
  INVX1 U536 ( .A(B_7[3]), .Y(n233) );
  INVX1 U537 ( .A(n521), .Y(n519) );
  XOR2X1 U538 ( .A(n521), .B(n522), .Y(N160) );
  XOR2X1 U539 ( .A(data[3]), .B(B_7[3]), .Y(n522) );
  OAI21X1 U540 ( .A(n523), .B(n232), .C(n524), .Y(n521) );
  OAI21X1 U541 ( .A(B_7[2]), .B(n525), .C(data[2]), .Y(n524) );
  INVX1 U542 ( .A(B_7[2]), .Y(n232) );
  XOR2X1 U543 ( .A(n526), .B(n523), .Y(N159) );
  INVX1 U544 ( .A(n525), .Y(n523) );
  OAI21X1 U545 ( .A(n231), .B(n527), .C(n528), .Y(n525) );
  OAI21X1 U546 ( .A(n529), .B(B_7[1]), .C(data[1]), .Y(n528) );
  INVX1 U547 ( .A(n527), .Y(n529) );
  INVX1 U548 ( .A(B_7[1]), .Y(n231) );
  XOR2X1 U549 ( .A(n185), .B(B_7[2]), .Y(n526) );
  INVX1 U550 ( .A(data[2]), .Y(n185) );
  XOR2X1 U551 ( .A(n527), .B(n530), .Y(N158) );
  XOR2X1 U552 ( .A(n187), .B(B_7[1]), .Y(n530) );
  INVX1 U553 ( .A(data[1]), .Y(n187) );
  NAND2X1 U554 ( .A(B_7[0]), .B(data[0]), .Y(n527) );
  XOR2X1 U555 ( .A(data[0]), .B(B_7[0]), .Y(N157) );
  OAI21X1 U556 ( .A(n531), .B(n214), .C(n532), .Y(N154) );
  OAI21X1 U557 ( .A(B_5[7]), .B(n533), .C(B_6[7]), .Y(n532) );
  INVX1 U558 ( .A(B_5[7]), .Y(n214) );
  INVX1 U559 ( .A(n533), .Y(n531) );
  XOR2X1 U560 ( .A(n533), .B(n534), .Y(N153) );
  XOR2X1 U561 ( .A(B_6[7]), .B(B_5[7]), .Y(n534) );
  OAI21X1 U562 ( .A(n535), .B(n215), .C(n536), .Y(n533) );
  OAI21X1 U563 ( .A(B_5[6]), .B(n537), .C(B_6[6]), .Y(n536) );
  INVX1 U564 ( .A(B_5[6]), .Y(n215) );
  INVX1 U565 ( .A(n537), .Y(n535) );
  XOR2X1 U566 ( .A(n537), .B(n538), .Y(N152) );
  XOR2X1 U567 ( .A(B_6[6]), .B(B_5[6]), .Y(n538) );
  OAI21X1 U568 ( .A(n539), .B(n216), .C(n540), .Y(n537) );
  OAI21X1 U569 ( .A(B_5[5]), .B(n541), .C(B_6[5]), .Y(n540) );
  INVX1 U570 ( .A(B_5[5]), .Y(n216) );
  INVX1 U571 ( .A(n541), .Y(n539) );
  XOR2X1 U572 ( .A(n541), .B(n542), .Y(N151) );
  XOR2X1 U573 ( .A(B_6[5]), .B(B_5[5]), .Y(n542) );
  OAI21X1 U574 ( .A(n543), .B(n217), .C(n544), .Y(n541) );
  OAI21X1 U575 ( .A(B_5[4]), .B(n545), .C(B_6[4]), .Y(n544) );
  INVX1 U576 ( .A(B_5[4]), .Y(n217) );
  INVX1 U577 ( .A(n545), .Y(n543) );
  XOR2X1 U578 ( .A(n545), .B(n546), .Y(N150) );
  XOR2X1 U579 ( .A(B_6[4]), .B(B_5[4]), .Y(n546) );
  OAI21X1 U580 ( .A(n547), .B(n218), .C(n548), .Y(n545) );
  OAI21X1 U581 ( .A(B_5[3]), .B(n549), .C(B_6[3]), .Y(n548) );
  XOR2X1 U582 ( .A(n550), .B(n547), .Y(N149) );
  INVX1 U583 ( .A(n549), .Y(n547) );
  OAI21X1 U584 ( .A(n551), .B(n219), .C(n552), .Y(n549) );
  OAI21X1 U585 ( .A(B_5[2]), .B(n553), .C(B_6[2]), .Y(n552) );
  XOR2X1 U586 ( .A(n218), .B(B_6[3]), .Y(n550) );
  INVX1 U587 ( .A(B_5[3]), .Y(n218) );
  XOR2X1 U588 ( .A(n554), .B(n551), .Y(N148) );
  INVX1 U589 ( .A(n553), .Y(n551) );
  OAI21X1 U590 ( .A(n220), .B(n555), .C(n556), .Y(n553) );
  OAI21X1 U591 ( .A(n557), .B(B_5[1]), .C(B_6[1]), .Y(n556) );
  INVX1 U592 ( .A(n555), .Y(n557) );
  XOR2X1 U593 ( .A(n219), .B(B_6[2]), .Y(n554) );
  INVX1 U594 ( .A(B_5[2]), .Y(n219) );
  XOR2X1 U595 ( .A(n555), .B(n558), .Y(N147) );
  XOR2X1 U596 ( .A(n220), .B(B_6[1]), .Y(n558) );
  INVX1 U597 ( .A(B_5[1]), .Y(n220) );
  NAND2X1 U598 ( .A(B_6[0]), .B(B_5[0]), .Y(n555) );
  XOR2X1 U599 ( .A(B_6[0]), .B(B_5[0]), .Y(N146) );
  OAI21X1 U600 ( .A(n559), .B(n166), .C(n560), .Y(N102) );
  OAI21X1 U601 ( .A(G_7[7]), .B(n561), .C(data[15]), .Y(n560) );
  INVX1 U602 ( .A(G_7[7]), .Y(n166) );
  INVX1 U603 ( .A(n561), .Y(n559) );
  XOR2X1 U604 ( .A(n561), .B(n562), .Y(N101) );
  XOR2X1 U605 ( .A(data[15]), .B(G_7[7]), .Y(n562) );
  OAI21X1 U606 ( .A(n563), .B(n167), .C(n564), .Y(n561) );
  OAI21X1 U607 ( .A(G_7[6]), .B(n565), .C(data[14]), .Y(n564) );
  INVX1 U608 ( .A(G_7[6]), .Y(n167) );
  INVX1 U609 ( .A(n565), .Y(n563) );
  XOR2X1 U610 ( .A(n565), .B(n566), .Y(N100) );
  XOR2X1 U611 ( .A(data[14]), .B(G_7[6]), .Y(n566) );
  OAI21X1 U612 ( .A(n567), .B(n168), .C(n568), .Y(n565) );
  OAI21X1 U613 ( .A(G_7[5]), .B(n241), .C(data[13]), .Y(n568) );
  INVX1 U614 ( .A(G_7[5]), .Y(n168) );
  INVX1 U615 ( .A(n241), .Y(n567) );
  OAI21X1 U616 ( .A(n569), .B(n169), .C(n570), .Y(n241) );
  OAI21X1 U617 ( .A(G_7[4]), .B(n243), .C(data[12]), .Y(n570) );
  INVX1 U618 ( .A(G_7[4]), .Y(n169) );
  INVX1 U619 ( .A(n243), .Y(n569) );
  OAI21X1 U620 ( .A(n571), .B(n170), .C(n572), .Y(n243) );
  OAI21X1 U621 ( .A(G_7[3]), .B(n245), .C(data[11]), .Y(n572) );
  INVX1 U622 ( .A(G_7[3]), .Y(n170) );
  INVX1 U623 ( .A(n245), .Y(n571) );
  OAI21X1 U624 ( .A(n248), .B(n171), .C(n573), .Y(n245) );
  OAI21X1 U625 ( .A(G_7[2]), .B(n574), .C(data[10]), .Y(n573) );
  INVX1 U626 ( .A(G_7[2]), .Y(n171) );
  INVX1 U627 ( .A(n574), .Y(n248) );
  OAI21X1 U628 ( .A(n172), .B(n249), .C(n575), .Y(n574) );
  OAI21X1 U629 ( .A(n576), .B(G_7[1]), .C(data[9]), .Y(n575) );
  INVX1 U630 ( .A(n249), .Y(n576) );
  NAND2X1 U631 ( .A(G_7[0]), .B(data[8]), .Y(n249) );
  INVX1 U632 ( .A(G_7[1]), .Y(n172) );
endmodule


module whiteBalance_DW_mult_uns_3 ( a, b, product );
  input [7:0] a;
  input [7:0] b;
  output [15:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n51, n52, n54, n55, n56, n58, n59, n60, n61,
         n63, n64, n65, n66, n67, n69, n70, n71, n72, n73, n74, n76, n77, n78,
         n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92,
         n93, n94, n95, n96, \a[0] ;
  assign product[0] = \a[0] ;
  assign \a[0]  = a[0];

  XOR2X1 U1 ( .A(n2), .B(n1), .Y(product[7]) );
  XOR2X1 U2 ( .A(n19), .B(n9), .Y(n1) );
  FAX1 U3 ( .A(n29), .B(n20), .C(n3), .YC(n2), .YS(product[6]) );
  FAX1 U4 ( .A(n37), .B(n30), .C(n4), .YC(n3), .YS(product[5]) );
  FAX1 U5 ( .A(n43), .B(n38), .C(n5), .YC(n4), .YS(product[4]) );
  FAX1 U6 ( .A(n46), .B(n44), .C(n6), .YC(n5), .YS(product[3]) );
  FAX1 U7 ( .A(n74), .B(n7), .C(n48), .YC(n6), .YS(product[2]) );
  HAX1 U8 ( .A(a[1]), .B(n82), .YC(n7), .YS(product[1]) );
  XOR2X1 U9 ( .A(n23), .B(n8), .Y(n9) );
  XOR2X1 U10 ( .A(n21), .B(n11), .Y(n8) );
  XOR2X1 U11 ( .A(n18), .B(n10), .Y(n11) );
  XOR2X1 U12 ( .A(n25), .B(n13), .Y(n10) );
  XOR2X1 U13 ( .A(n15), .B(n12), .Y(n13) );
  XOR2X1 U14 ( .A(n27), .B(n17), .Y(n12) );
  XOR2X1 U15 ( .A(n54), .B(n14), .Y(n15) );
  XOR2X1 U16 ( .A(n58), .B(n63), .Y(n14) );
  XOR2X1 U17 ( .A(n76), .B(n16), .Y(n17) );
  XOR2X1 U18 ( .A(n69), .B(n49), .Y(n16) );
  XOR2X1 U19 ( .A(n51), .B(a[7]), .Y(n18) );
  FAX1 U20 ( .A(n24), .B(n31), .C(n22), .YC(n19), .YS(n20) );
  FAX1 U21 ( .A(n28), .B(n33), .C(n26), .YC(n21), .YS(n22) );
  FAX1 U22 ( .A(n64), .B(n59), .C(n35), .YC(n23), .YS(n24) );
  FAX1 U23 ( .A(n77), .B(n52), .C(n70), .YC(n25), .YS(n26) );
  HAX1 U24 ( .A(a[6]), .B(n55), .YC(n27), .YS(n28) );
  FAX1 U25 ( .A(n39), .B(n34), .C(n32), .YC(n29), .YS(n30) );
  FAX1 U26 ( .A(n71), .B(n41), .C(n36), .YC(n31), .YS(n32) );
  FAX1 U27 ( .A(n78), .B(n56), .C(n65), .YC(n33), .YS(n34) );
  HAX1 U28 ( .A(a[5]), .B(n60), .YC(n35), .YS(n36) );
  FAX1 U29 ( .A(n45), .B(n42), .C(n40), .YC(n37), .YS(n38) );
  FAX1 U30 ( .A(n79), .B(n61), .C(n72), .YC(n39), .YS(n40) );
  HAX1 U31 ( .A(a[4]), .B(n66), .YC(n41), .YS(n42) );
  FAX1 U32 ( .A(n73), .B(n67), .C(n47), .YC(n43), .YS(n44) );
  HAX1 U33 ( .A(a[3]), .B(n80), .YC(n45), .YS(n46) );
  HAX1 U34 ( .A(a[2]), .B(n81), .YC(n47), .YS(n48) );
  NOR2X1 U35 ( .A(n90), .B(n89), .Y(n49) );
  NOR2X1 U37 ( .A(n91), .B(n88), .Y(n51) );
  NOR2X1 U38 ( .A(n91), .B(n89), .Y(n52) );
  NOR2X1 U40 ( .A(n92), .B(n87), .Y(n54) );
  NOR2X1 U41 ( .A(n92), .B(n88), .Y(n55) );
  NOR2X1 U42 ( .A(n92), .B(n89), .Y(n56) );
  NOR2X1 U44 ( .A(n93), .B(n86), .Y(n58) );
  NOR2X1 U45 ( .A(n93), .B(n87), .Y(n59) );
  NOR2X1 U46 ( .A(n93), .B(n88), .Y(n60) );
  NOR2X1 U47 ( .A(n93), .B(n89), .Y(n61) );
  NOR2X1 U49 ( .A(n94), .B(n85), .Y(n63) );
  NOR2X1 U50 ( .A(n94), .B(n86), .Y(n64) );
  NOR2X1 U51 ( .A(n94), .B(n87), .Y(n65) );
  NOR2X1 U52 ( .A(n94), .B(n88), .Y(n66) );
  NOR2X1 U53 ( .A(n94), .B(n89), .Y(n67) );
  NOR2X1 U55 ( .A(n95), .B(n84), .Y(n69) );
  NOR2X1 U56 ( .A(n95), .B(n85), .Y(n70) );
  NOR2X1 U57 ( .A(n95), .B(n86), .Y(n71) );
  NOR2X1 U58 ( .A(n95), .B(n87), .Y(n72) );
  NOR2X1 U59 ( .A(n95), .B(n88), .Y(n73) );
  NOR2X1 U60 ( .A(n95), .B(n89), .Y(n74) );
  NOR2X1 U62 ( .A(n96), .B(n83), .Y(n76) );
  NOR2X1 U63 ( .A(n96), .B(n84), .Y(n77) );
  NOR2X1 U64 ( .A(n96), .B(n85), .Y(n78) );
  NOR2X1 U65 ( .A(n96), .B(n86), .Y(n79) );
  NOR2X1 U66 ( .A(n96), .B(n87), .Y(n80) );
  NOR2X1 U67 ( .A(n96), .B(n88), .Y(n81) );
  NOR2X1 U68 ( .A(n96), .B(n89), .Y(n82) );
  INVX2 U87 ( .A(\a[0] ), .Y(n96) );
  INVX2 U88 ( .A(a[1]), .Y(n95) );
  INVX2 U89 ( .A(a[3]), .Y(n93) );
  INVX2 U90 ( .A(a[2]), .Y(n94) );
  INVX2 U91 ( .A(a[4]), .Y(n92) );
  INVX2 U92 ( .A(a[5]), .Y(n91) );
  INVX2 U93 ( .A(a[6]), .Y(n90) );
  INVX2 U94 ( .A(b[3]), .Y(n87) );
  INVX2 U95 ( .A(b[1]), .Y(n89) );
  INVX2 U96 ( .A(b[4]), .Y(n86) );
  INVX2 U97 ( .A(b[5]), .Y(n85) );
  INVX2 U98 ( .A(b[2]), .Y(n88) );
  INVX2 U99 ( .A(b[6]), .Y(n84) );
  INVX2 U100 ( .A(b[7]), .Y(n83) );
endmodule


module whiteBalance_DW_mult_uns_4 ( a, b, product );
  input [7:0] a;
  input [7:0] b;
  output [15:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n51, n52, n54, n55, n56, n58, n59, n60, n61,
         n63, n64, n65, n66, n67, n69, n70, n71, n72, n73, n74, n76, n77, n78,
         n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92,
         n93, n94, n95, n96, \a[0] ;
  assign product[0] = \a[0] ;
  assign \a[0]  = a[0];

  XOR2X1 U1 ( .A(n2), .B(n1), .Y(product[7]) );
  XOR2X1 U2 ( .A(n19), .B(n9), .Y(n1) );
  FAX1 U3 ( .A(n29), .B(n20), .C(n3), .YC(n2), .YS(product[6]) );
  FAX1 U4 ( .A(n37), .B(n30), .C(n4), .YC(n3), .YS(product[5]) );
  FAX1 U5 ( .A(n43), .B(n38), .C(n5), .YC(n4), .YS(product[4]) );
  FAX1 U6 ( .A(n46), .B(n44), .C(n6), .YC(n5), .YS(product[3]) );
  FAX1 U7 ( .A(n74), .B(n7), .C(n48), .YC(n6), .YS(product[2]) );
  HAX1 U8 ( .A(a[1]), .B(n82), .YC(n7), .YS(product[1]) );
  XOR2X1 U9 ( .A(n23), .B(n8), .Y(n9) );
  XOR2X1 U10 ( .A(n21), .B(n11), .Y(n8) );
  XOR2X1 U11 ( .A(n18), .B(n10), .Y(n11) );
  XOR2X1 U12 ( .A(n25), .B(n13), .Y(n10) );
  XOR2X1 U13 ( .A(n15), .B(n12), .Y(n13) );
  XOR2X1 U14 ( .A(n27), .B(n17), .Y(n12) );
  XOR2X1 U15 ( .A(n54), .B(n14), .Y(n15) );
  XOR2X1 U16 ( .A(n58), .B(n63), .Y(n14) );
  XOR2X1 U17 ( .A(n76), .B(n16), .Y(n17) );
  XOR2X1 U18 ( .A(n69), .B(n49), .Y(n16) );
  XOR2X1 U19 ( .A(n51), .B(a[7]), .Y(n18) );
  FAX1 U20 ( .A(n24), .B(n31), .C(n22), .YC(n19), .YS(n20) );
  FAX1 U21 ( .A(n28), .B(n33), .C(n26), .YC(n21), .YS(n22) );
  FAX1 U22 ( .A(n64), .B(n59), .C(n35), .YC(n23), .YS(n24) );
  FAX1 U23 ( .A(n77), .B(n52), .C(n70), .YC(n25), .YS(n26) );
  HAX1 U24 ( .A(a[6]), .B(n55), .YC(n27), .YS(n28) );
  FAX1 U25 ( .A(n39), .B(n34), .C(n32), .YC(n29), .YS(n30) );
  FAX1 U26 ( .A(n71), .B(n41), .C(n36), .YC(n31), .YS(n32) );
  FAX1 U27 ( .A(n78), .B(n56), .C(n65), .YC(n33), .YS(n34) );
  HAX1 U28 ( .A(a[5]), .B(n60), .YC(n35), .YS(n36) );
  FAX1 U29 ( .A(n45), .B(n42), .C(n40), .YC(n37), .YS(n38) );
  FAX1 U30 ( .A(n79), .B(n61), .C(n72), .YC(n39), .YS(n40) );
  HAX1 U31 ( .A(a[4]), .B(n66), .YC(n41), .YS(n42) );
  FAX1 U32 ( .A(n73), .B(n67), .C(n47), .YC(n43), .YS(n44) );
  HAX1 U33 ( .A(a[3]), .B(n80), .YC(n45), .YS(n46) );
  HAX1 U34 ( .A(a[2]), .B(n81), .YC(n47), .YS(n48) );
  NOR2X1 U35 ( .A(n90), .B(n89), .Y(n49) );
  NOR2X1 U37 ( .A(n91), .B(n88), .Y(n51) );
  NOR2X1 U38 ( .A(n91), .B(n89), .Y(n52) );
  NOR2X1 U40 ( .A(n92), .B(n87), .Y(n54) );
  NOR2X1 U41 ( .A(n92), .B(n88), .Y(n55) );
  NOR2X1 U42 ( .A(n92), .B(n89), .Y(n56) );
  NOR2X1 U44 ( .A(n93), .B(n86), .Y(n58) );
  NOR2X1 U45 ( .A(n93), .B(n87), .Y(n59) );
  NOR2X1 U46 ( .A(n93), .B(n88), .Y(n60) );
  NOR2X1 U47 ( .A(n93), .B(n89), .Y(n61) );
  NOR2X1 U49 ( .A(n94), .B(n85), .Y(n63) );
  NOR2X1 U50 ( .A(n94), .B(n86), .Y(n64) );
  NOR2X1 U51 ( .A(n94), .B(n87), .Y(n65) );
  NOR2X1 U52 ( .A(n94), .B(n88), .Y(n66) );
  NOR2X1 U53 ( .A(n94), .B(n89), .Y(n67) );
  NOR2X1 U55 ( .A(n95), .B(n84), .Y(n69) );
  NOR2X1 U56 ( .A(n95), .B(n85), .Y(n70) );
  NOR2X1 U57 ( .A(n95), .B(n86), .Y(n71) );
  NOR2X1 U58 ( .A(n95), .B(n87), .Y(n72) );
  NOR2X1 U59 ( .A(n95), .B(n88), .Y(n73) );
  NOR2X1 U60 ( .A(n95), .B(n89), .Y(n74) );
  NOR2X1 U62 ( .A(n96), .B(n83), .Y(n76) );
  NOR2X1 U63 ( .A(n96), .B(n84), .Y(n77) );
  NOR2X1 U64 ( .A(n96), .B(n85), .Y(n78) );
  NOR2X1 U65 ( .A(n96), .B(n86), .Y(n79) );
  NOR2X1 U66 ( .A(n96), .B(n87), .Y(n80) );
  NOR2X1 U67 ( .A(n96), .B(n88), .Y(n81) );
  NOR2X1 U68 ( .A(n96), .B(n89), .Y(n82) );
  INVX2 U87 ( .A(\a[0] ), .Y(n96) );
  INVX2 U88 ( .A(a[1]), .Y(n95) );
  INVX2 U89 ( .A(a[3]), .Y(n93) );
  INVX2 U90 ( .A(a[2]), .Y(n94) );
  INVX2 U91 ( .A(a[4]), .Y(n92) );
  INVX2 U92 ( .A(a[5]), .Y(n91) );
  INVX2 U93 ( .A(a[6]), .Y(n90) );
  INVX2 U94 ( .A(b[3]), .Y(n87) );
  INVX2 U95 ( .A(b[1]), .Y(n89) );
  INVX2 U96 ( .A(b[4]), .Y(n86) );
  INVX2 U97 ( .A(b[5]), .Y(n85) );
  INVX2 U98 ( .A(b[2]), .Y(n88) );
  INVX2 U99 ( .A(b[6]), .Y(n84) );
  INVX2 U100 ( .A(b[7]), .Y(n83) );
endmodule


module whiteBalance_DW_mult_uns_5 ( a, b, product );
  input [7:0] a;
  input [7:0] b;
  output [15:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n51, n52, n54, n55, n56, n58, n59, n60, n61,
         n63, n64, n65, n66, n67, n69, n70, n71, n72, n73, n74, n76, n77, n78,
         n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92,
         n93, n94, n95, n96, \a[0] ;
  assign product[0] = \a[0] ;
  assign \a[0]  = a[0];

  XOR2X1 U1 ( .A(n2), .B(n1), .Y(product[7]) );
  XOR2X1 U2 ( .A(n19), .B(n9), .Y(n1) );
  FAX1 U3 ( .A(n29), .B(n20), .C(n3), .YC(n2), .YS(product[6]) );
  FAX1 U4 ( .A(n37), .B(n30), .C(n4), .YC(n3), .YS(product[5]) );
  FAX1 U5 ( .A(n43), .B(n38), .C(n5), .YC(n4), .YS(product[4]) );
  FAX1 U6 ( .A(n46), .B(n44), .C(n6), .YC(n5), .YS(product[3]) );
  FAX1 U7 ( .A(n74), .B(n7), .C(n48), .YC(n6), .YS(product[2]) );
  HAX1 U8 ( .A(a[1]), .B(n82), .YC(n7), .YS(product[1]) );
  XOR2X1 U9 ( .A(n23), .B(n8), .Y(n9) );
  XOR2X1 U10 ( .A(n21), .B(n11), .Y(n8) );
  XOR2X1 U11 ( .A(n18), .B(n10), .Y(n11) );
  XOR2X1 U12 ( .A(n25), .B(n13), .Y(n10) );
  XOR2X1 U13 ( .A(n15), .B(n12), .Y(n13) );
  XOR2X1 U14 ( .A(n27), .B(n17), .Y(n12) );
  XOR2X1 U15 ( .A(n54), .B(n14), .Y(n15) );
  XOR2X1 U16 ( .A(n58), .B(n63), .Y(n14) );
  XOR2X1 U17 ( .A(n76), .B(n16), .Y(n17) );
  XOR2X1 U18 ( .A(n69), .B(n49), .Y(n16) );
  XOR2X1 U19 ( .A(n51), .B(a[7]), .Y(n18) );
  FAX1 U20 ( .A(n24), .B(n31), .C(n22), .YC(n19), .YS(n20) );
  FAX1 U21 ( .A(n28), .B(n33), .C(n26), .YC(n21), .YS(n22) );
  FAX1 U22 ( .A(n64), .B(n59), .C(n35), .YC(n23), .YS(n24) );
  FAX1 U23 ( .A(n77), .B(n52), .C(n70), .YC(n25), .YS(n26) );
  HAX1 U24 ( .A(a[6]), .B(n55), .YC(n27), .YS(n28) );
  FAX1 U25 ( .A(n39), .B(n34), .C(n32), .YC(n29), .YS(n30) );
  FAX1 U26 ( .A(n71), .B(n41), .C(n36), .YC(n31), .YS(n32) );
  FAX1 U27 ( .A(n78), .B(n56), .C(n65), .YC(n33), .YS(n34) );
  HAX1 U28 ( .A(a[5]), .B(n60), .YC(n35), .YS(n36) );
  FAX1 U29 ( .A(n45), .B(n42), .C(n40), .YC(n37), .YS(n38) );
  FAX1 U30 ( .A(n79), .B(n61), .C(n72), .YC(n39), .YS(n40) );
  HAX1 U31 ( .A(a[4]), .B(n66), .YC(n41), .YS(n42) );
  FAX1 U32 ( .A(n73), .B(n67), .C(n47), .YC(n43), .YS(n44) );
  HAX1 U33 ( .A(a[3]), .B(n80), .YC(n45), .YS(n46) );
  HAX1 U34 ( .A(a[2]), .B(n81), .YC(n47), .YS(n48) );
  NOR2X1 U35 ( .A(n90), .B(n89), .Y(n49) );
  NOR2X1 U37 ( .A(n91), .B(n88), .Y(n51) );
  NOR2X1 U38 ( .A(n91), .B(n89), .Y(n52) );
  NOR2X1 U40 ( .A(n92), .B(n87), .Y(n54) );
  NOR2X1 U41 ( .A(n92), .B(n88), .Y(n55) );
  NOR2X1 U42 ( .A(n92), .B(n89), .Y(n56) );
  NOR2X1 U44 ( .A(n93), .B(n86), .Y(n58) );
  NOR2X1 U45 ( .A(n93), .B(n87), .Y(n59) );
  NOR2X1 U46 ( .A(n93), .B(n88), .Y(n60) );
  NOR2X1 U47 ( .A(n93), .B(n89), .Y(n61) );
  NOR2X1 U49 ( .A(n94), .B(n85), .Y(n63) );
  NOR2X1 U50 ( .A(n94), .B(n86), .Y(n64) );
  NOR2X1 U51 ( .A(n94), .B(n87), .Y(n65) );
  NOR2X1 U52 ( .A(n94), .B(n88), .Y(n66) );
  NOR2X1 U53 ( .A(n94), .B(n89), .Y(n67) );
  NOR2X1 U55 ( .A(n95), .B(n84), .Y(n69) );
  NOR2X1 U56 ( .A(n95), .B(n85), .Y(n70) );
  NOR2X1 U57 ( .A(n95), .B(n86), .Y(n71) );
  NOR2X1 U58 ( .A(n95), .B(n87), .Y(n72) );
  NOR2X1 U59 ( .A(n95), .B(n88), .Y(n73) );
  NOR2X1 U60 ( .A(n95), .B(n89), .Y(n74) );
  NOR2X1 U62 ( .A(n96), .B(n83), .Y(n76) );
  NOR2X1 U63 ( .A(n96), .B(n84), .Y(n77) );
  NOR2X1 U64 ( .A(n96), .B(n85), .Y(n78) );
  NOR2X1 U65 ( .A(n96), .B(n86), .Y(n79) );
  NOR2X1 U66 ( .A(n96), .B(n87), .Y(n80) );
  NOR2X1 U67 ( .A(n96), .B(n88), .Y(n81) );
  NOR2X1 U68 ( .A(n96), .B(n89), .Y(n82) );
  INVX2 U87 ( .A(\a[0] ), .Y(n96) );
  INVX2 U88 ( .A(a[1]), .Y(n95) );
  INVX2 U89 ( .A(a[3]), .Y(n93) );
  INVX2 U90 ( .A(a[2]), .Y(n94) );
  INVX2 U91 ( .A(a[4]), .Y(n92) );
  INVX2 U92 ( .A(a[5]), .Y(n91) );
  INVX2 U93 ( .A(a[6]), .Y(n90) );
  INVX2 U94 ( .A(b[3]), .Y(n87) );
  INVX2 U95 ( .A(b[1]), .Y(n89) );
  INVX2 U96 ( .A(b[4]), .Y(n86) );
  INVX2 U97 ( .A(b[5]), .Y(n85) );
  INVX2 U98 ( .A(b[2]), .Y(n88) );
  INVX2 U99 ( .A(b[6]), .Y(n84) );
  INVX2 U100 ( .A(b[7]), .Y(n83) );
endmodule


module whiteBalance ( in, white, out );
  input [31:0] in;
  input [31:0] white;
  output [31:0] out;
  wire   \in[31] , \in[30] , \in[29] , \in[28] , \in[27] , \in[26] , \in[25] ,
         \in[24] , N195, N196, N197, N198, N199, N200, N201, N202, N203, N204,
         N205, N206, N207, N208, N209, n2, n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66,
         n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80,
         n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94,
         n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106,
         n107, n108, n109, n110, n111, n112, n113, n114, n115, n116, n117,
         n118, n119, n120, n121, n122, n123, n124, n125, n126, n127, n128,
         n129, n130, n131, n132, n133, n134, n135, n136, n137, n138, n139,
         n140, n141, n142, n143, n144, n145, n146, n147, n148, n149, n150,
         n151, n152, n153, n154, n155, n156, n157, n158, n159, n160, n161,
         n162, n163, n164, n165, n166, n167, n168, n169, n170, n171, n172,
         n173, n174, n175, n176, n177, n178, n179, n180, n181;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15, 
        SYNOPSYS_UNCONNECTED__16, SYNOPSYS_UNCONNECTED__17, 
        SYNOPSYS_UNCONNECTED__18, SYNOPSYS_UNCONNECTED__19, 
        SYNOPSYS_UNCONNECTED__20, SYNOPSYS_UNCONNECTED__21, 
        SYNOPSYS_UNCONNECTED__22, SYNOPSYS_UNCONNECTED__23;
  assign out[31] = \in[31] ;
  assign \in[31]  = in[31];
  assign out[30] = \in[30] ;
  assign \in[30]  = in[30];
  assign out[29] = \in[29] ;
  assign \in[29]  = in[29];
  assign out[28] = \in[28] ;
  assign \in[28]  = in[28];
  assign out[27] = \in[27] ;
  assign \in[27]  = in[27];
  assign out[26] = \in[26] ;
  assign \in[26]  = in[26];
  assign out[25] = \in[25] ;
  assign \in[25]  = in[25];
  assign out[24] = \in[24] ;
  assign \in[24]  = in[24];

  whiteBalance_DW_mult_uns_3 mult_283 ( .a(in[23:16]), .b({N195, N196, N197, 
        N198, N199, white[18:17], 1'b1}), .product({SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3, SYNOPSYS_UNCONNECTED__4, 
        SYNOPSYS_UNCONNECTED__5, SYNOPSYS_UNCONNECTED__6, 
        SYNOPSYS_UNCONNECTED__7, out[23:16]}) );
  whiteBalance_DW_mult_uns_4 mult_284 ( .a(in[15:8]), .b({N200, N201, N202, 
        N203, N204, white[10:9], 1'b1}), .product({SYNOPSYS_UNCONNECTED__8, 
        SYNOPSYS_UNCONNECTED__9, SYNOPSYS_UNCONNECTED__10, 
        SYNOPSYS_UNCONNECTED__11, SYNOPSYS_UNCONNECTED__12, 
        SYNOPSYS_UNCONNECTED__13, SYNOPSYS_UNCONNECTED__14, 
        SYNOPSYS_UNCONNECTED__15, out[15:8]}) );
  whiteBalance_DW_mult_uns_5 mult_285 ( .a(in[7:0]), .b({N205, N206, N207, 
        N208, N209, white[2:1], 1'b1}), .product({SYNOPSYS_UNCONNECTED__16, 
        SYNOPSYS_UNCONNECTED__17, SYNOPSYS_UNCONNECTED__18, 
        SYNOPSYS_UNCONNECTED__19, SYNOPSYS_UNCONNECTED__20, 
        SYNOPSYS_UNCONNECTED__21, SYNOPSYS_UNCONNECTED__22, 
        SYNOPSYS_UNCONNECTED__23, out[7:0]}) );
  OAI21X1 U3 ( .A(white[3]), .B(n2), .C(n3), .Y(N209) );
  MUX2X1 U4 ( .B(n4), .A(n5), .S(white[4]), .Y(N208) );
  XOR2X1 U5 ( .A(n6), .B(n7), .Y(n5) );
  NAND2X1 U6 ( .A(n2), .B(n8), .Y(n4) );
  XOR2X1 U7 ( .A(n9), .B(n10), .Y(n8) );
  OAI21X1 U8 ( .A(n11), .B(n12), .C(n13), .Y(N207) );
  MUX2X1 U9 ( .B(n14), .A(n15), .S(white[5]), .Y(n13) );
  NOR2X1 U10 ( .A(n16), .B(n17), .Y(n15) );
  INVX1 U11 ( .A(n18), .Y(n17) );
  XOR2X1 U12 ( .A(white[4]), .B(white[1]), .Y(n16) );
  OAI21X1 U13 ( .A(n19), .B(n20), .C(n18), .Y(n14) );
  MUX2X1 U14 ( .B(n21), .A(n22), .S(white[3]), .Y(n18) );
  NOR2X1 U15 ( .A(white[2]), .B(n19), .Y(n22) );
  NOR2X1 U16 ( .A(n23), .B(n24), .Y(n21) );
  OAI21X1 U17 ( .A(n25), .B(n26), .C(n27), .Y(N206) );
  MUX2X1 U18 ( .B(n28), .A(n29), .S(white[6]), .Y(n27) );
  AND2X1 U19 ( .A(n26), .B(n30), .Y(n29) );
  OAI21X1 U20 ( .A(white[3]), .B(n11), .C(n31), .Y(n30) );
  AOI22X1 U21 ( .A(n32), .B(n23), .C(n33), .D(n12), .Y(n31) );
  OAI21X1 U22 ( .A(n34), .B(n35), .C(n36), .Y(n28) );
  NAND3X1 U23 ( .A(n19), .B(n23), .C(white[5]), .Y(n36) );
  AOI21X1 U24 ( .A(n6), .B(white[3]), .C(n37), .Y(n35) );
  OAI22X1 U25 ( .A(n12), .B(n38), .C(n32), .D(n39), .Y(n37) );
  MUX2X1 U26 ( .B(n40), .A(n41), .S(white[6]), .Y(n25) );
  OAI21X1 U27 ( .A(white[1]), .B(n9), .C(n23), .Y(n41) );
  NOR2X1 U28 ( .A(white[3]), .B(white[2]), .Y(n40) );
  MUX2X1 U29 ( .B(n42), .A(n43), .S(white[7]), .Y(N205) );
  MUX2X1 U30 ( .B(n44), .A(n45), .S(white[6]), .Y(n43) );
  OAI21X1 U31 ( .A(white[4]), .B(n46), .C(n47), .Y(n45) );
  OAI21X1 U32 ( .A(n34), .B(n9), .C(n6), .Y(n47) );
  INVX1 U33 ( .A(n10), .Y(n6) );
  INVX1 U34 ( .A(n26), .Y(n34) );
  NAND2X1 U35 ( .A(white[5]), .B(white[4]), .Y(n26) );
  AOI22X1 U36 ( .A(white[5]), .B(n48), .C(white[1]), .D(n23), .Y(n46) );
  OAI22X1 U37 ( .A(n49), .B(n39), .C(n20), .D(n50), .Y(n44) );
  OAI21X1 U38 ( .A(n33), .B(n51), .C(n48), .Y(n50) );
  INVX1 U39 ( .A(n38), .Y(n33) );
  INVX1 U40 ( .A(n32), .Y(n49) );
  NAND2X1 U41 ( .A(n9), .B(n12), .Y(n32) );
  NAND2X1 U42 ( .A(n51), .B(n20), .Y(n12) );
  INVX1 U43 ( .A(white[4]), .Y(n20) );
  MUX2X1 U44 ( .B(n52), .A(n53), .S(white[6]), .Y(n42) );
  NAND2X1 U45 ( .A(n54), .B(n55), .Y(n53) );
  MUX2X1 U46 ( .B(n7), .A(n10), .S(white[4]), .Y(n55) );
  NAND2X1 U47 ( .A(white[1]), .B(white[2]), .Y(n10) );
  INVX1 U48 ( .A(n3), .Y(n7) );
  NAND2X1 U49 ( .A(white[3]), .B(n2), .Y(n3) );
  INVX1 U50 ( .A(n48), .Y(n2) );
  AOI21X1 U51 ( .A(n56), .B(n51), .C(n57), .Y(n54) );
  INVX1 U52 ( .A(n39), .Y(n57) );
  INVX1 U53 ( .A(white[5]), .Y(n51) );
  OAI21X1 U54 ( .A(n23), .B(n9), .C(white[1]), .Y(n56) );
  INVX1 U55 ( .A(white[3]), .Y(n9) );
  NAND2X1 U56 ( .A(n58), .B(n59), .Y(n52) );
  MUX2X1 U57 ( .B(n39), .A(n60), .S(white[4]), .Y(n59) );
  NOR2X1 U58 ( .A(white[3]), .B(n48), .Y(n60) );
  OAI21X1 U59 ( .A(white[2]), .B(n11), .C(n38), .Y(n48) );
  NAND2X1 U60 ( .A(white[2]), .B(n11), .Y(n38) );
  NAND2X1 U61 ( .A(n11), .B(n23), .Y(n39) );
  INVX1 U62 ( .A(white[2]), .Y(n23) );
  INVX1 U63 ( .A(white[1]), .Y(n11) );
  AOI22X1 U64 ( .A(white[5]), .B(n61), .C(n19), .D(white[2]), .Y(n58) );
  INVX1 U65 ( .A(n24), .Y(n19) );
  OAI21X1 U66 ( .A(white[3]), .B(white[2]), .C(n24), .Y(n61) );
  NAND2X1 U67 ( .A(white[4]), .B(white[1]), .Y(n24) );
  OAI21X1 U68 ( .A(white[11]), .B(n62), .C(n63), .Y(N204) );
  MUX2X1 U69 ( .B(n64), .A(n65), .S(white[12]), .Y(N203) );
  XOR2X1 U70 ( .A(n66), .B(n67), .Y(n65) );
  NAND2X1 U71 ( .A(n62), .B(n68), .Y(n64) );
  XOR2X1 U72 ( .A(n69), .B(n70), .Y(n68) );
  OAI21X1 U73 ( .A(n71), .B(n72), .C(n73), .Y(N202) );
  MUX2X1 U74 ( .B(n74), .A(n75), .S(white[13]), .Y(n73) );
  NOR2X1 U75 ( .A(n76), .B(n77), .Y(n75) );
  INVX1 U76 ( .A(n78), .Y(n77) );
  XOR2X1 U77 ( .A(white[9]), .B(white[12]), .Y(n76) );
  OAI21X1 U78 ( .A(n79), .B(n80), .C(n78), .Y(n74) );
  MUX2X1 U79 ( .B(n81), .A(n82), .S(white[11]), .Y(n78) );
  NOR2X1 U80 ( .A(white[10]), .B(n79), .Y(n82) );
  NOR2X1 U81 ( .A(n83), .B(n84), .Y(n81) );
  OAI21X1 U82 ( .A(n85), .B(n86), .C(n87), .Y(N201) );
  MUX2X1 U83 ( .B(n88), .A(n89), .S(white[14]), .Y(n87) );
  AND2X1 U84 ( .A(n86), .B(n90), .Y(n89) );
  OAI21X1 U85 ( .A(white[11]), .B(n71), .C(n91), .Y(n90) );
  AOI22X1 U86 ( .A(n92), .B(n83), .C(n93), .D(n72), .Y(n91) );
  OAI21X1 U87 ( .A(n94), .B(n95), .C(n96), .Y(n88) );
  NAND3X1 U88 ( .A(n79), .B(n83), .C(white[13]), .Y(n96) );
  AOI21X1 U89 ( .A(n66), .B(white[11]), .C(n97), .Y(n95) );
  OAI22X1 U90 ( .A(n72), .B(n98), .C(n92), .D(n99), .Y(n97) );
  MUX2X1 U91 ( .B(n100), .A(n101), .S(white[14]), .Y(n85) );
  OAI21X1 U92 ( .A(white[9]), .B(n69), .C(n83), .Y(n101) );
  NOR2X1 U93 ( .A(white[11]), .B(white[10]), .Y(n100) );
  MUX2X1 U94 ( .B(n102), .A(n103), .S(white[15]), .Y(N200) );
  MUX2X1 U95 ( .B(n104), .A(n105), .S(white[14]), .Y(n103) );
  OAI21X1 U96 ( .A(white[12]), .B(n106), .C(n107), .Y(n105) );
  OAI21X1 U97 ( .A(n94), .B(n69), .C(n66), .Y(n107) );
  INVX1 U98 ( .A(n70), .Y(n66) );
  INVX1 U99 ( .A(n86), .Y(n94) );
  NAND2X1 U100 ( .A(white[13]), .B(white[12]), .Y(n86) );
  AOI22X1 U101 ( .A(white[13]), .B(n108), .C(white[9]), .D(n83), .Y(n106) );
  OAI22X1 U102 ( .A(n109), .B(n99), .C(n80), .D(n110), .Y(n104) );
  OAI21X1 U103 ( .A(n93), .B(n111), .C(n108), .Y(n110) );
  INVX1 U104 ( .A(n98), .Y(n93) );
  INVX1 U105 ( .A(n92), .Y(n109) );
  NAND2X1 U106 ( .A(n69), .B(n72), .Y(n92) );
  NAND2X1 U107 ( .A(n111), .B(n80), .Y(n72) );
  INVX1 U108 ( .A(white[12]), .Y(n80) );
  MUX2X1 U109 ( .B(n112), .A(n113), .S(white[14]), .Y(n102) );
  NAND2X1 U110 ( .A(n114), .B(n115), .Y(n113) );
  MUX2X1 U111 ( .B(n67), .A(n70), .S(white[12]), .Y(n115) );
  NAND2X1 U112 ( .A(white[9]), .B(white[10]), .Y(n70) );
  INVX1 U113 ( .A(n63), .Y(n67) );
  NAND2X1 U114 ( .A(white[11]), .B(n62), .Y(n63) );
  INVX1 U115 ( .A(n108), .Y(n62) );
  AOI21X1 U116 ( .A(n116), .B(n111), .C(n117), .Y(n114) );
  INVX1 U117 ( .A(n99), .Y(n117) );
  INVX1 U118 ( .A(white[13]), .Y(n111) );
  OAI21X1 U119 ( .A(n83), .B(n69), .C(white[9]), .Y(n116) );
  INVX1 U120 ( .A(white[11]), .Y(n69) );
  NAND2X1 U121 ( .A(n118), .B(n119), .Y(n112) );
  MUX2X1 U122 ( .B(n99), .A(n120), .S(white[12]), .Y(n119) );
  NOR2X1 U123 ( .A(white[11]), .B(n108), .Y(n120) );
  OAI21X1 U124 ( .A(white[10]), .B(n71), .C(n98), .Y(n108) );
  NAND2X1 U125 ( .A(white[10]), .B(n71), .Y(n98) );
  NAND2X1 U126 ( .A(n83), .B(n71), .Y(n99) );
  INVX1 U127 ( .A(white[9]), .Y(n71) );
  INVX1 U128 ( .A(white[10]), .Y(n83) );
  AOI22X1 U129 ( .A(white[13]), .B(n121), .C(n79), .D(white[10]), .Y(n118) );
  INVX1 U130 ( .A(n84), .Y(n79) );
  OAI21X1 U131 ( .A(white[11]), .B(white[10]), .C(n84), .Y(n121) );
  NAND2X1 U132 ( .A(white[12]), .B(white[9]), .Y(n84) );
  OAI21X1 U133 ( .A(white[19]), .B(n122), .C(n123), .Y(N199) );
  MUX2X1 U134 ( .B(n124), .A(n125), .S(white[20]), .Y(N198) );
  XOR2X1 U135 ( .A(n126), .B(n127), .Y(n125) );
  NAND2X1 U136 ( .A(n122), .B(n128), .Y(n124) );
  XOR2X1 U137 ( .A(n129), .B(n130), .Y(n128) );
  OAI21X1 U138 ( .A(n131), .B(n132), .C(n133), .Y(N197) );
  MUX2X1 U139 ( .B(n134), .A(n135), .S(white[21]), .Y(n133) );
  NOR2X1 U140 ( .A(n136), .B(n137), .Y(n135) );
  INVX1 U141 ( .A(n138), .Y(n137) );
  XOR2X1 U142 ( .A(white[20]), .B(white[17]), .Y(n136) );
  OAI21X1 U143 ( .A(n139), .B(n140), .C(n138), .Y(n134) );
  MUX2X1 U144 ( .B(n141), .A(n142), .S(white[19]), .Y(n138) );
  NOR2X1 U145 ( .A(white[18]), .B(n139), .Y(n142) );
  NOR2X1 U146 ( .A(n143), .B(n144), .Y(n141) );
  OAI21X1 U147 ( .A(n145), .B(n146), .C(n147), .Y(N196) );
  MUX2X1 U148 ( .B(n148), .A(n149), .S(white[22]), .Y(n147) );
  AND2X1 U149 ( .A(n146), .B(n150), .Y(n149) );
  OAI21X1 U150 ( .A(white[19]), .B(n131), .C(n151), .Y(n150) );
  AOI22X1 U151 ( .A(n152), .B(n143), .C(n153), .D(n132), .Y(n151) );
  OAI21X1 U152 ( .A(n154), .B(n155), .C(n156), .Y(n148) );
  NAND3X1 U153 ( .A(n139), .B(n143), .C(white[21]), .Y(n156) );
  AOI21X1 U154 ( .A(n126), .B(white[19]), .C(n157), .Y(n155) );
  OAI22X1 U155 ( .A(n132), .B(n158), .C(n152), .D(n159), .Y(n157) );
  MUX2X1 U156 ( .B(n160), .A(n161), .S(white[22]), .Y(n145) );
  OAI21X1 U157 ( .A(white[17]), .B(n129), .C(n143), .Y(n161) );
  NOR2X1 U158 ( .A(white[19]), .B(white[18]), .Y(n160) );
  MUX2X1 U159 ( .B(n162), .A(n163), .S(white[23]), .Y(N195) );
  MUX2X1 U160 ( .B(n164), .A(n165), .S(white[22]), .Y(n163) );
  OAI21X1 U161 ( .A(white[20]), .B(n166), .C(n167), .Y(n165) );
  OAI21X1 U162 ( .A(n154), .B(n129), .C(n126), .Y(n167) );
  INVX1 U163 ( .A(n130), .Y(n126) );
  INVX1 U164 ( .A(n146), .Y(n154) );
  NAND2X1 U165 ( .A(white[21]), .B(white[20]), .Y(n146) );
  AOI22X1 U166 ( .A(white[21]), .B(n168), .C(white[17]), .D(n143), .Y(n166) );
  OAI22X1 U167 ( .A(n169), .B(n159), .C(n140), .D(n170), .Y(n164) );
  OAI21X1 U168 ( .A(n153), .B(n171), .C(n168), .Y(n170) );
  INVX1 U169 ( .A(n158), .Y(n153) );
  INVX1 U170 ( .A(n152), .Y(n169) );
  NAND2X1 U171 ( .A(n129), .B(n132), .Y(n152) );
  NAND2X1 U172 ( .A(n171), .B(n140), .Y(n132) );
  INVX1 U173 ( .A(white[20]), .Y(n140) );
  MUX2X1 U174 ( .B(n172), .A(n173), .S(white[22]), .Y(n162) );
  NAND2X1 U175 ( .A(n174), .B(n175), .Y(n173) );
  MUX2X1 U176 ( .B(n127), .A(n130), .S(white[20]), .Y(n175) );
  NAND2X1 U177 ( .A(white[17]), .B(white[18]), .Y(n130) );
  INVX1 U178 ( .A(n123), .Y(n127) );
  NAND2X1 U179 ( .A(white[19]), .B(n122), .Y(n123) );
  INVX1 U180 ( .A(n168), .Y(n122) );
  AOI21X1 U181 ( .A(n176), .B(n171), .C(n177), .Y(n174) );
  INVX1 U182 ( .A(n159), .Y(n177) );
  INVX1 U183 ( .A(white[21]), .Y(n171) );
  OAI21X1 U184 ( .A(n143), .B(n129), .C(white[17]), .Y(n176) );
  INVX1 U185 ( .A(white[19]), .Y(n129) );
  NAND2X1 U186 ( .A(n178), .B(n179), .Y(n172) );
  MUX2X1 U187 ( .B(n159), .A(n180), .S(white[20]), .Y(n179) );
  NOR2X1 U188 ( .A(white[19]), .B(n168), .Y(n180) );
  OAI21X1 U189 ( .A(white[18]), .B(n131), .C(n158), .Y(n168) );
  NAND2X1 U190 ( .A(white[18]), .B(n131), .Y(n158) );
  NAND2X1 U191 ( .A(n131), .B(n143), .Y(n159) );
  INVX1 U192 ( .A(white[18]), .Y(n143) );
  INVX1 U193 ( .A(white[17]), .Y(n131) );
  AOI22X1 U194 ( .A(white[21]), .B(n181), .C(n139), .D(white[18]), .Y(n178) );
  INVX1 U195 ( .A(n144), .Y(n139) );
  OAI21X1 U196 ( .A(white[19]), .B(white[18]), .C(n144), .Y(n181) );
  NAND2X1 U197 ( .A(white[20]), .B(white[17]), .Y(n144) );
endmodule


module filterTopLevel ( clk, n_rst, in, filterMode, brightnessCoeff, wb_mode, 
        wb_en, white, result );
  input [31:0] in;
  input [1:0] filterMode;
  input [7:0] brightnessCoeff;
  input [2:0] wb_mode;
  input [31:0] white;
  output [31:0] result;
  input clk, n_rst, wb_en;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59;
  wire   [31:0] debayerResult;
  wire   [31:0] brightnessResult;
  wire   [31:0] horBlurResult;
  wire   [31:0] whiteBalanceResult;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15, 
        SYNOPSYS_UNCONNECTED__16, SYNOPSYS_UNCONNECTED__17, 
        SYNOPSYS_UNCONNECTED__18, SYNOPSYS_UNCONNECTED__19, 
        SYNOPSYS_UNCONNECTED__20, SYNOPSYS_UNCONNECTED__21, 
        SYNOPSYS_UNCONNECTED__22, SYNOPSYS_UNCONNECTED__23;

  brightnessFilter brighter ( .in({debayerResult[23:8], debayerResult[15:0]}), 
        .beta(brightnessCoeff), .result({SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3, SYNOPSYS_UNCONNECTED__4, 
        SYNOPSYS_UNCONNECTED__5, SYNOPSYS_UNCONNECTED__6, 
        SYNOPSYS_UNCONNECTED__7, brightnessResult[23:0]}) );
  debayer debayerModule ( .in(in), .out({SYNOPSYS_UNCONNECTED__8, 
        SYNOPSYS_UNCONNECTED__9, SYNOPSYS_UNCONNECTED__10, 
        SYNOPSYS_UNCONNECTED__11, SYNOPSYS_UNCONNECTED__12, 
        SYNOPSYS_UNCONNECTED__13, SYNOPSYS_UNCONNECTED__14, 
        SYNOPSYS_UNCONNECTED__15, debayerResult[23:0]}) );
  horblur horizontalBlur ( .clk(clk), .n_rst(n_rst), .wb_en(wb_en), .mode_wb(
        wb_mode), .data({1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 
        debayerResult[23:0]}), .blur({SYNOPSYS_UNCONNECTED__16, 
        SYNOPSYS_UNCONNECTED__17, SYNOPSYS_UNCONNECTED__18, 
        SYNOPSYS_UNCONNECTED__19, SYNOPSYS_UNCONNECTED__20, 
        SYNOPSYS_UNCONNECTED__21, SYNOPSYS_UNCONNECTED__22, 
        SYNOPSYS_UNCONNECTED__23, horBlurResult[23:0]}) );
  whiteBalance ennodaWhiteBalance ( .in({1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 
        1'b1, 1'b1, debayerResult[23:0]}), .white(white), .out(
        whiteBalanceResult) );
  INVX2 U1 ( .A(n26), .Y(n5) );
  AND2X2 U2 ( .A(filterMode[0]), .B(filterMode[1]), .Y(n6) );
  INVX2 U3 ( .A(n24), .Y(n1) );
  INVX2 U4 ( .A(n25), .Y(n2) );
  NAND2X1 U5 ( .A(n3), .B(n4), .Y(result[9]) );
  AOI22X1 U6 ( .A(horBlurResult[9]), .B(n5), .C(whiteBalanceResult[9]), .D(n6), 
        .Y(n4) );
  AOI22X1 U7 ( .A(debayerResult[9]), .B(n1), .C(brightnessResult[9]), .D(n2), 
        .Y(n3) );
  NAND2X1 U8 ( .A(n9), .B(n10), .Y(result[8]) );
  AOI22X1 U9 ( .A(horBlurResult[8]), .B(n5), .C(whiteBalanceResult[8]), .D(n6), 
        .Y(n10) );
  AOI22X1 U10 ( .A(debayerResult[8]), .B(n1), .C(brightnessResult[8]), .D(n2), 
        .Y(n9) );
  NAND2X1 U11 ( .A(n11), .B(n12), .Y(result[7]) );
  AOI22X1 U12 ( .A(horBlurResult[7]), .B(n5), .C(whiteBalanceResult[7]), .D(n6), .Y(n12) );
  AOI22X1 U13 ( .A(debayerResult[7]), .B(n1), .C(brightnessResult[7]), .D(n2), 
        .Y(n11) );
  NAND2X1 U14 ( .A(n13), .B(n14), .Y(result[6]) );
  AOI22X1 U15 ( .A(horBlurResult[6]), .B(n5), .C(whiteBalanceResult[6]), .D(n6), .Y(n14) );
  AOI22X1 U16 ( .A(debayerResult[6]), .B(n1), .C(brightnessResult[6]), .D(n2), 
        .Y(n13) );
  NAND2X1 U17 ( .A(n15), .B(n16), .Y(result[5]) );
  AOI22X1 U18 ( .A(horBlurResult[5]), .B(n5), .C(whiteBalanceResult[5]), .D(n6), .Y(n16) );
  AOI22X1 U19 ( .A(debayerResult[5]), .B(n1), .C(brightnessResult[5]), .D(n2), 
        .Y(n15) );
  NAND2X1 U20 ( .A(n17), .B(n18), .Y(result[4]) );
  AOI22X1 U21 ( .A(horBlurResult[4]), .B(n5), .C(whiteBalanceResult[4]), .D(n6), .Y(n18) );
  AOI22X1 U22 ( .A(debayerResult[4]), .B(n1), .C(brightnessResult[4]), .D(n2), 
        .Y(n17) );
  NAND2X1 U23 ( .A(n19), .B(n20), .Y(result[3]) );
  AOI22X1 U24 ( .A(horBlurResult[3]), .B(n5), .C(whiteBalanceResult[3]), .D(n6), .Y(n20) );
  AOI22X1 U25 ( .A(debayerResult[3]), .B(n1), .C(brightnessResult[3]), .D(n2), 
        .Y(n19) );
  OR2X1 U26 ( .A(whiteBalanceResult[31]), .B(n21), .Y(result[31]) );
  OR2X1 U27 ( .A(whiteBalanceResult[30]), .B(n21), .Y(result[30]) );
  NAND2X1 U28 ( .A(n22), .B(n23), .Y(result[2]) );
  AOI22X1 U29 ( .A(horBlurResult[2]), .B(n5), .C(whiteBalanceResult[2]), .D(n6), .Y(n23) );
  AOI22X1 U30 ( .A(debayerResult[2]), .B(n1), .C(brightnessResult[2]), .D(n2), 
        .Y(n22) );
  OR2X1 U31 ( .A(whiteBalanceResult[29]), .B(n21), .Y(result[29]) );
  OR2X1 U32 ( .A(whiteBalanceResult[28]), .B(n21), .Y(result[28]) );
  OR2X1 U33 ( .A(whiteBalanceResult[27]), .B(n21), .Y(result[27]) );
  OR2X1 U34 ( .A(whiteBalanceResult[26]), .B(n21), .Y(result[26]) );
  OR2X1 U35 ( .A(whiteBalanceResult[25]), .B(n21), .Y(result[25]) );
  OR2X1 U36 ( .A(whiteBalanceResult[24]), .B(n21), .Y(result[24]) );
  NAND3X1 U37 ( .A(n24), .B(n25), .C(n26), .Y(n21) );
  INVX1 U38 ( .A(n8), .Y(n25) );
  INVX1 U39 ( .A(n7), .Y(n24) );
  NAND2X1 U40 ( .A(n27), .B(n28), .Y(result[23]) );
  AOI22X1 U41 ( .A(horBlurResult[23]), .B(n5), .C(whiteBalanceResult[23]), .D(
        n6), .Y(n28) );
  AOI22X1 U42 ( .A(debayerResult[23]), .B(n1), .C(brightnessResult[23]), .D(n2), .Y(n27) );
  NAND2X1 U43 ( .A(n29), .B(n30), .Y(result[22]) );
  AOI22X1 U44 ( .A(horBlurResult[22]), .B(n5), .C(whiteBalanceResult[22]), .D(
        n6), .Y(n30) );
  AOI22X1 U45 ( .A(debayerResult[22]), .B(n1), .C(brightnessResult[22]), .D(n2), .Y(n29) );
  NAND2X1 U46 ( .A(n31), .B(n32), .Y(result[21]) );
  AOI22X1 U47 ( .A(horBlurResult[21]), .B(n5), .C(whiteBalanceResult[21]), .D(
        n6), .Y(n32) );
  AOI22X1 U48 ( .A(debayerResult[21]), .B(n1), .C(brightnessResult[21]), .D(n2), .Y(n31) );
  NAND2X1 U49 ( .A(n33), .B(n34), .Y(result[20]) );
  AOI22X1 U50 ( .A(horBlurResult[20]), .B(n5), .C(whiteBalanceResult[20]), .D(
        n6), .Y(n34) );
  AOI22X1 U51 ( .A(debayerResult[20]), .B(n1), .C(brightnessResult[20]), .D(n2), .Y(n33) );
  NAND2X1 U52 ( .A(n35), .B(n36), .Y(result[1]) );
  AOI22X1 U53 ( .A(horBlurResult[1]), .B(n5), .C(whiteBalanceResult[1]), .D(n6), .Y(n36) );
  AOI22X1 U54 ( .A(debayerResult[1]), .B(n1), .C(brightnessResult[1]), .D(n2), 
        .Y(n35) );
  NAND2X1 U55 ( .A(n37), .B(n38), .Y(result[19]) );
  AOI22X1 U56 ( .A(horBlurResult[19]), .B(n5), .C(whiteBalanceResult[19]), .D(
        n6), .Y(n38) );
  AOI22X1 U57 ( .A(debayerResult[19]), .B(n1), .C(brightnessResult[19]), .D(n2), .Y(n37) );
  NAND2X1 U58 ( .A(n39), .B(n40), .Y(result[18]) );
  AOI22X1 U59 ( .A(horBlurResult[18]), .B(n5), .C(whiteBalanceResult[18]), .D(
        n6), .Y(n40) );
  AOI22X1 U60 ( .A(debayerResult[18]), .B(n1), .C(brightnessResult[18]), .D(n2), .Y(n39) );
  NAND2X1 U61 ( .A(n41), .B(n42), .Y(result[17]) );
  AOI22X1 U62 ( .A(horBlurResult[17]), .B(n5), .C(whiteBalanceResult[17]), .D(
        n6), .Y(n42) );
  AOI22X1 U63 ( .A(debayerResult[17]), .B(n7), .C(brightnessResult[17]), .D(n8), .Y(n41) );
  NAND2X1 U64 ( .A(n43), .B(n44), .Y(result[16]) );
  AOI22X1 U65 ( .A(horBlurResult[16]), .B(n5), .C(whiteBalanceResult[16]), .D(
        n6), .Y(n44) );
  AOI22X1 U66 ( .A(debayerResult[16]), .B(n7), .C(brightnessResult[16]), .D(n8), .Y(n43) );
  NAND2X1 U67 ( .A(n45), .B(n46), .Y(result[15]) );
  AOI22X1 U68 ( .A(horBlurResult[15]), .B(n5), .C(whiteBalanceResult[15]), .D(
        n6), .Y(n46) );
  AOI22X1 U69 ( .A(debayerResult[15]), .B(n7), .C(brightnessResult[15]), .D(n8), .Y(n45) );
  NAND2X1 U70 ( .A(n47), .B(n48), .Y(result[14]) );
  AOI22X1 U71 ( .A(horBlurResult[14]), .B(n5), .C(whiteBalanceResult[14]), .D(
        n6), .Y(n48) );
  AOI22X1 U72 ( .A(debayerResult[14]), .B(n7), .C(brightnessResult[14]), .D(n8), .Y(n47) );
  NAND2X1 U73 ( .A(n49), .B(n50), .Y(result[13]) );
  AOI22X1 U74 ( .A(horBlurResult[13]), .B(n5), .C(whiteBalanceResult[13]), .D(
        n6), .Y(n50) );
  AOI22X1 U75 ( .A(debayerResult[13]), .B(n7), .C(brightnessResult[13]), .D(n8), .Y(n49) );
  NAND2X1 U76 ( .A(n51), .B(n52), .Y(result[12]) );
  AOI22X1 U77 ( .A(horBlurResult[12]), .B(n5), .C(whiteBalanceResult[12]), .D(
        n6), .Y(n52) );
  AOI22X1 U78 ( .A(debayerResult[12]), .B(n7), .C(brightnessResult[12]), .D(n8), .Y(n51) );
  NAND2X1 U79 ( .A(n53), .B(n54), .Y(result[11]) );
  AOI22X1 U80 ( .A(horBlurResult[11]), .B(n5), .C(whiteBalanceResult[11]), .D(
        n6), .Y(n54) );
  AOI22X1 U81 ( .A(debayerResult[11]), .B(n7), .C(brightnessResult[11]), .D(n8), .Y(n53) );
  NAND2X1 U82 ( .A(n55), .B(n56), .Y(result[10]) );
  AOI22X1 U83 ( .A(horBlurResult[10]), .B(n5), .C(whiteBalanceResult[10]), .D(
        n6), .Y(n56) );
  AOI22X1 U84 ( .A(debayerResult[10]), .B(n7), .C(brightnessResult[10]), .D(n8), .Y(n55) );
  NAND2X1 U85 ( .A(n57), .B(n58), .Y(result[0]) );
  AOI22X1 U86 ( .A(horBlurResult[0]), .B(n5), .C(whiteBalanceResult[0]), .D(n6), .Y(n58) );
  NAND2X1 U87 ( .A(filterMode[1]), .B(n59), .Y(n26) );
  AOI22X1 U88 ( .A(debayerResult[0]), .B(n7), .C(brightnessResult[0]), .D(n8), 
        .Y(n57) );
  NOR2X1 U89 ( .A(n59), .B(filterMode[1]), .Y(n8) );
  INVX1 U90 ( .A(filterMode[0]), .Y(n59) );
  NOR2X1 U91 ( .A(filterMode[0]), .B(filterMode[1]), .Y(n7) );
endmodule


module customLogicTLD ( clk, n_rst, startControlRegister, imageWidth, 
        imageHeight, start_addr_sdram, finish_addr_sdram, filterMode, 
        betaValue, white, sdram_datareadvalid, data_sdram, sdram_read_en, 
        sdram_write_en, address_sdram, writeData_sdram, finish_flag, 
        sram_dataFromSDRAM, postFilterData, address_sram, mode_sram, 
        addrCalc_mode_sram, sram_en, data_sram, sram_datareadvalid );
  input [12:0] imageWidth;
  input [12:0] imageHeight;
  input [25:0] start_addr_sdram;
  input [25:0] finish_addr_sdram;
  input [1:0] filterMode;
  input [7:0] betaValue;
  input [31:0] white;
  input [31:0] data_sdram;
  output [25:0] address_sdram;
  output [31:0] writeData_sdram;
  output [31:0] sram_dataFromSDRAM;
  output [31:0] postFilterData;
  output [25:0] address_sram;
  input [31:0] data_sram;
  input clk, n_rst, startControlRegister, sdram_datareadvalid,
         sram_datareadvalid;
  output sdram_read_en, sdram_write_en, finish_flag, mode_sram,
         addrCalc_mode_sram, sram_en;
  wire   start_flag, i_wr_en, rollover_i_wr, i_en, rollover_i, \i_value[0] ,
         j_en, rollover_j, \j_value[0] , addrCalc_sdram_mode, addrCalc_sram_en,
         addrCalc_sdram_en, WB_en;
  wire   [2:0] mode_WB;
  wire   [7:0] wb1;
  wire   [7:0] wb2;
  wire   [7:0] wb3;
  wire   [7:0] wb4;
  wire   [31:0] reorderedWire;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15, 
        SYNOPSYS_UNCONNECTED__16, SYNOPSYS_UNCONNECTED__17, 
        SYNOPSYS_UNCONNECTED__18, SYNOPSYS_UNCONNECTED__19, 
        SYNOPSYS_UNCONNECTED__20, SYNOPSYS_UNCONNECTED__21, 
        SYNOPSYS_UNCONNECTED__22, SYNOPSYS_UNCONNECTED__23;
  assign writeData_sdram[31] = data_sram[31];
  assign writeData_sdram[30] = data_sram[30];
  assign writeData_sdram[29] = data_sram[29];
  assign writeData_sdram[28] = data_sram[28];
  assign writeData_sdram[27] = data_sram[27];
  assign writeData_sdram[26] = data_sram[26];
  assign writeData_sdram[25] = data_sram[25];
  assign writeData_sdram[24] = data_sram[24];
  assign writeData_sdram[23] = data_sram[23];
  assign writeData_sdram[22] = data_sram[22];
  assign writeData_sdram[21] = data_sram[21];
  assign writeData_sdram[20] = data_sram[20];
  assign writeData_sdram[19] = data_sram[19];
  assign writeData_sdram[18] = data_sram[18];
  assign writeData_sdram[17] = data_sram[17];
  assign writeData_sdram[16] = data_sram[16];
  assign writeData_sdram[15] = data_sram[15];
  assign writeData_sdram[14] = data_sram[14];
  assign writeData_sdram[13] = data_sram[13];
  assign writeData_sdram[12] = data_sram[12];
  assign writeData_sdram[11] = data_sram[11];
  assign writeData_sdram[10] = data_sram[10];
  assign writeData_sdram[9] = data_sram[9];
  assign writeData_sdram[8] = data_sram[8];
  assign writeData_sdram[7] = data_sram[7];
  assign writeData_sdram[6] = data_sram[6];
  assign writeData_sdram[5] = data_sram[5];
  assign writeData_sdram[4] = data_sram[4];
  assign writeData_sdram[3] = data_sram[3];
  assign writeData_sdram[2] = data_sram[2];
  assign writeData_sdram[1] = data_sram[1];
  assign writeData_sdram[0] = data_sram[0];

  risingEdgeDetector edgeDetector ( .clk(clk), .startData(startControlRegister), .start_flag(start_flag) );
  delaySingleClock dataFromSDRAM ( .clk(clk), .n_rst(n_rst), .in(data_sdram), 
        .out(sram_dataFromSDRAM) );
  i_wr_counter outputColCounter ( .clk(clk), .clear(start_flag), 
        .rollover_val(imageWidth), .count_enable(i_wr_en), .rollover_flag(
        rollover_i_wr) );
  i_col_counter colCounter ( .clk(clk), .clear(start_flag), .rollover_val(
        imageWidth), .count_enable(i_en), .rollover_flag(rollover_i), .value({
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, \i_value[0] }) );
  j_row_counter rowCounter ( .clk(clk), .clear(start_flag), .rollover_val(
        imageHeight), .count_enable(j_en), .rollover_flag(rollover_j), .value(
        {SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15, 
        SYNOPSYS_UNCONNECTED__16, SYNOPSYS_UNCONNECTED__17, 
        SYNOPSYS_UNCONNECTED__18, SYNOPSYS_UNCONNECTED__19, 
        SYNOPSYS_UNCONNECTED__20, SYNOPSYS_UNCONNECTED__21, 
        SYNOPSYS_UNCONNECTED__22, SYNOPSYS_UNCONNECTED__23, \j_value[0] }) );
  address_calc addressCalculator ( .clk(clk), .n_rst(n_rst), .sram_mode(
        addrCalc_mode_sram), .sdram_mode(addrCalc_sdram_mode), .sram_update(
        addrCalc_sram_en), .sdram_update(addrCalc_sdram_en), .start_flag(
        start_flag), .image_width(imageWidth), .start_address_sdram(
        start_addr_sdram), .finish_address_sdram(finish_addr_sdram), 
        .rowCache_address_sram({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .output_address_sram({1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .sdram_address(address_sdram), .sram_address(address_sram) );
  controlUnit thalai ( .clk(clk), .n_rst(n_rst), .start_flag(start_flag), 
        .dataRead_sram(sram_datareadvalid), .dataRead_sdram(
        sdram_datareadvalid), .rollover_i(rollover_i), .rollover_j(rollover_j), 
        .rollover_i_wr(rollover_i_wr), .enable_i(i_en), .enable_j(j_en), 
        .enable_i_wr(i_wr_en), .enable_addr_calc_sram(addrCalc_sram_en), 
        .enable_addr_calc_sdram(addrCalc_sdram_en), .enable_WB(WB_en), 
        .enable_sram(sram_en), .read_en_sdram(sdram_read_en), .write_en_sdram(
        sdram_write_en), .mode_addr_calc_sram(addrCalc_mode_sram), 
        .mode_addr_calc_sdram(addrCalc_sdram_mode), .mode_WB(mode_WB), 
        .mode_sram(mode_sram), .finish_flag(finish_flag) );
  wbuffer windowBuffer ( .clk(clk), .nrst(n_rst), .enable_CU(WB_en), .mode(
        mode_WB), .data_read(sram_dataFromSDRAM[7:0]), .data(
        writeData_sdram[7:0]), .w_1(wb1), .w_2(wb2), .w_3(wb3), .w_4(wb4) );
  rggb reorderingModule ( .wb_1(wb1), .wb_2(wb2), .wb_3(wb3), .wb_4(wb4), 
        .row(\j_value[0] ), .col(\i_value[0] ), .out(reorderedWire) );
  filterTopLevel topLevelFilterBlock ( .clk(clk), .n_rst(n_rst), .in(
        reorderedWire), .filterMode(filterMode), .brightnessCoeff(betaValue), 
        .wb_mode(mode_WB), .wb_en(WB_en), .white(white), .result(
        postFilterData) );
endmodule

