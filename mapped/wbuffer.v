/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06-SP1
// Date      : Wed Dec 16 21:56:21 2015
/////////////////////////////////////////////////////////////


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
  wire   n33, n34, n35, n36, n37, n38, n39, n40, n49, n50, n51, n52, n53, n54,
         n55, n56, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179, n180, n181, n182, n183, n184, n185, n186, n187, n188, n189,
         n190, n191;

  DFFSR \wb_4_curr_reg[7]  ( .D(n33), .CLK(clk), .R(nrst), .S(1'b1), .Q(w_4[7]) );
  DFFSR \wb_4_curr_reg[6]  ( .D(n34), .CLK(clk), .R(nrst), .S(1'b1), .Q(w_4[6]) );
  DFFSR \wb_4_curr_reg[5]  ( .D(n35), .CLK(clk), .R(nrst), .S(1'b1), .Q(w_4[5]) );
  DFFSR \wb_4_curr_reg[4]  ( .D(n36), .CLK(clk), .R(nrst), .S(1'b1), .Q(w_4[4]) );
  DFFSR \wb_4_curr_reg[3]  ( .D(n37), .CLK(clk), .R(nrst), .S(1'b1), .Q(w_4[3]) );
  DFFSR \wb_4_curr_reg[2]  ( .D(n38), .CLK(clk), .R(nrst), .S(1'b1), .Q(w_4[2]) );
  DFFSR \wb_4_curr_reg[1]  ( .D(n39), .CLK(clk), .R(nrst), .S(1'b1), .Q(w_4[1]) );
  DFFSR \wb_4_curr_reg[0]  ( .D(n40), .CLK(clk), .R(nrst), .S(1'b1), .Q(w_4[0]) );
  DFFSR \wb_2_curr_reg[7]  ( .D(n49), .CLK(clk), .R(nrst), .S(1'b1), .Q(w_2[7]) );
  DFFSR \wb_1_curr_reg[7]  ( .D(n122), .CLK(clk), .R(nrst), .S(1'b1), .Q(
        w_1[7]) );
  DFFSR \wb_2_curr_reg[6]  ( .D(n50), .CLK(clk), .R(nrst), .S(1'b1), .Q(w_2[6]) );
  DFFSR \wb_1_curr_reg[6]  ( .D(n123), .CLK(clk), .R(nrst), .S(1'b1), .Q(
        w_1[6]) );
  DFFSR \wb_2_curr_reg[5]  ( .D(n51), .CLK(clk), .R(nrst), .S(1'b1), .Q(w_2[5]) );
  DFFSR \wb_1_curr_reg[5]  ( .D(n124), .CLK(clk), .R(nrst), .S(1'b1), .Q(
        w_1[5]) );
  DFFSR \wb_2_curr_reg[4]  ( .D(n52), .CLK(clk), .R(nrst), .S(1'b1), .Q(w_2[4]) );
  DFFSR \wb_1_curr_reg[4]  ( .D(n125), .CLK(clk), .R(nrst), .S(1'b1), .Q(
        w_1[4]) );
  DFFSR \wb_2_curr_reg[3]  ( .D(n53), .CLK(clk), .R(nrst), .S(1'b1), .Q(w_2[3]) );
  DFFSR \wb_1_curr_reg[3]  ( .D(n126), .CLK(clk), .R(nrst), .S(1'b1), .Q(
        w_1[3]) );
  DFFSR \wb_2_curr_reg[2]  ( .D(n54), .CLK(clk), .R(nrst), .S(1'b1), .Q(w_2[2]) );
  DFFSR \wb_1_curr_reg[2]  ( .D(n127), .CLK(clk), .R(nrst), .S(1'b1), .Q(
        w_1[2]) );
  DFFSR \wb_2_curr_reg[1]  ( .D(n55), .CLK(clk), .R(nrst), .S(1'b1), .Q(w_2[1]) );
  DFFSR \wb_1_curr_reg[1]  ( .D(n128), .CLK(clk), .R(nrst), .S(1'b1), .Q(
        w_1[1]) );
  DFFSR \wb_2_curr_reg[0]  ( .D(n56), .CLK(clk), .R(nrst), .S(1'b1), .Q(w_2[0]) );
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
  OR2X2 U131 ( .A(n140), .B(n150), .Y(n152) );
  INVX1 U132 ( .A(n130), .Y(n56) );
  MUX2X1 U133 ( .B(data[0]), .A(w_2[0]), .S(n131), .Y(n130) );
  INVX1 U134 ( .A(n132), .Y(n55) );
  MUX2X1 U135 ( .B(data[1]), .A(w_2[1]), .S(n131), .Y(n132) );
  INVX1 U136 ( .A(n133), .Y(n54) );
  MUX2X1 U137 ( .B(data[2]), .A(w_2[2]), .S(n131), .Y(n133) );
  INVX1 U138 ( .A(n134), .Y(n53) );
  MUX2X1 U139 ( .B(data[3]), .A(w_2[3]), .S(n131), .Y(n134) );
  INVX1 U140 ( .A(n135), .Y(n52) );
  MUX2X1 U141 ( .B(data[4]), .A(w_2[4]), .S(n131), .Y(n135) );
  INVX1 U142 ( .A(n136), .Y(n51) );
  MUX2X1 U143 ( .B(data[5]), .A(w_2[5]), .S(n131), .Y(n136) );
  INVX1 U144 ( .A(n137), .Y(n50) );
  MUX2X1 U145 ( .B(data[6]), .A(w_2[6]), .S(n131), .Y(n137) );
  INVX1 U146 ( .A(n138), .Y(n49) );
  MUX2X1 U147 ( .B(data[7]), .A(w_2[7]), .S(n131), .Y(n138) );
  NAND3X1 U148 ( .A(n139), .B(n140), .C(mode[1]), .Y(n131) );
  INVX1 U149 ( .A(n141), .Y(n40) );
  MUX2X1 U150 ( .B(w_4[0]), .A(data_read[0]), .S(n142), .Y(n141) );
  INVX1 U151 ( .A(n143), .Y(n39) );
  MUX2X1 U152 ( .B(w_4[1]), .A(data_read[1]), .S(n142), .Y(n143) );
  INVX1 U153 ( .A(n144), .Y(n38) );
  MUX2X1 U154 ( .B(w_4[2]), .A(data_read[2]), .S(n142), .Y(n144) );
  INVX1 U155 ( .A(n145), .Y(n37) );
  MUX2X1 U156 ( .B(w_4[3]), .A(data_read[3]), .S(n142), .Y(n145) );
  INVX1 U157 ( .A(n146), .Y(n36) );
  MUX2X1 U158 ( .B(w_4[4]), .A(data_read[4]), .S(n142), .Y(n146) );
  INVX1 U159 ( .A(n147), .Y(n35) );
  MUX2X1 U160 ( .B(w_4[5]), .A(data_read[5]), .S(n142), .Y(n147) );
  INVX1 U161 ( .A(n148), .Y(n34) );
  MUX2X1 U162 ( .B(w_4[6]), .A(data_read[6]), .S(n142), .Y(n148) );
  INVX1 U163 ( .A(n149), .Y(n33) );
  MUX2X1 U164 ( .B(w_4[7]), .A(data_read[7]), .S(n142), .Y(n149) );
  NOR2X1 U165 ( .A(n150), .B(mode[0]), .Y(n142) );
  OAI21X1 U166 ( .A(n151), .B(n152), .C(n153), .Y(n129) );
  AOI22X1 U167 ( .A(w_1[0]), .B(n154), .C(n155), .D(data[0]), .Y(n153) );
  INVX1 U168 ( .A(w_2[0]), .Y(n151) );
  OAI21X1 U169 ( .A(n156), .B(n152), .C(n157), .Y(n128) );
  AOI22X1 U170 ( .A(w_1[1]), .B(n154), .C(n155), .D(data[1]), .Y(n157) );
  INVX1 U171 ( .A(w_2[1]), .Y(n156) );
  OAI21X1 U172 ( .A(n158), .B(n152), .C(n159), .Y(n127) );
  AOI22X1 U173 ( .A(w_1[2]), .B(n154), .C(n155), .D(data[2]), .Y(n159) );
  INVX1 U174 ( .A(w_2[2]), .Y(n158) );
  OAI21X1 U175 ( .A(n160), .B(n152), .C(n161), .Y(n126) );
  AOI22X1 U176 ( .A(w_1[3]), .B(n154), .C(n155), .D(data[3]), .Y(n161) );
  INVX1 U177 ( .A(w_2[3]), .Y(n160) );
  OAI21X1 U178 ( .A(n162), .B(n152), .C(n163), .Y(n125) );
  AOI22X1 U179 ( .A(w_1[4]), .B(n154), .C(n155), .D(data[4]), .Y(n163) );
  INVX1 U180 ( .A(w_2[4]), .Y(n162) );
  OAI21X1 U181 ( .A(n164), .B(n152), .C(n165), .Y(n124) );
  AOI22X1 U182 ( .A(w_1[5]), .B(n154), .C(n155), .D(data[5]), .Y(n165) );
  INVX1 U183 ( .A(w_2[5]), .Y(n164) );
  OAI21X1 U184 ( .A(n166), .B(n152), .C(n167), .Y(n123) );
  AOI22X1 U185 ( .A(w_1[6]), .B(n154), .C(n155), .D(data[6]), .Y(n167) );
  INVX1 U186 ( .A(w_2[6]), .Y(n166) );
  OAI21X1 U187 ( .A(n168), .B(n152), .C(n169), .Y(n122) );
  AOI22X1 U188 ( .A(w_1[7]), .B(n154), .C(n155), .D(data[7]), .Y(n169) );
  INVX1 U189 ( .A(n170), .Y(n155) );
  AND2X1 U190 ( .A(n152), .B(n170), .Y(n154) );
  NAND3X1 U191 ( .A(n139), .B(n171), .C(mode[0]), .Y(n170) );
  INVX1 U192 ( .A(w_2[7]), .Y(n168) );
  OAI21X1 U193 ( .A(n172), .B(n152), .C(n173), .Y(n121) );
  AOI22X1 U194 ( .A(w_3[0]), .B(n174), .C(n175), .D(data_read[0]), .Y(n173) );
  INVX1 U195 ( .A(w_4[0]), .Y(n172) );
  OAI21X1 U196 ( .A(n176), .B(n152), .C(n177), .Y(n120) );
  AOI22X1 U197 ( .A(w_3[1]), .B(n174), .C(n175), .D(data_read[1]), .Y(n177) );
  INVX1 U198 ( .A(w_4[1]), .Y(n176) );
  OAI21X1 U199 ( .A(n178), .B(n152), .C(n179), .Y(n119) );
  AOI22X1 U200 ( .A(w_3[2]), .B(n174), .C(n175), .D(data_read[2]), .Y(n179) );
  INVX1 U201 ( .A(w_4[2]), .Y(n178) );
  OAI21X1 U202 ( .A(n180), .B(n152), .C(n181), .Y(n118) );
  AOI22X1 U203 ( .A(w_3[3]), .B(n174), .C(n175), .D(data_read[3]), .Y(n181) );
  INVX1 U204 ( .A(w_4[3]), .Y(n180) );
  OAI21X1 U205 ( .A(n182), .B(n152), .C(n183), .Y(n117) );
  AOI22X1 U206 ( .A(w_3[4]), .B(n174), .C(n175), .D(data_read[4]), .Y(n183) );
  INVX1 U207 ( .A(w_4[4]), .Y(n182) );
  OAI21X1 U208 ( .A(n184), .B(n152), .C(n185), .Y(n116) );
  AOI22X1 U209 ( .A(w_3[5]), .B(n174), .C(n175), .D(data_read[5]), .Y(n185) );
  INVX1 U210 ( .A(w_4[5]), .Y(n184) );
  OAI21X1 U211 ( .A(n186), .B(n152), .C(n187), .Y(n115) );
  AOI22X1 U212 ( .A(w_3[6]), .B(n174), .C(n175), .D(data_read[6]), .Y(n187) );
  INVX1 U213 ( .A(w_4[6]), .Y(n186) );
  OAI21X1 U214 ( .A(n188), .B(n152), .C(n189), .Y(n114) );
  AOI22X1 U215 ( .A(w_3[7]), .B(n174), .C(n175), .D(data_read[7]), .Y(n189) );
  INVX1 U216 ( .A(n190), .Y(n175) );
  AND2X1 U217 ( .A(n152), .B(n190), .Y(n174) );
  NAND3X1 U218 ( .A(mode[1]), .B(n139), .C(mode[0]), .Y(n190) );
  NOR2X1 U219 ( .A(n191), .B(mode[2]), .Y(n139) );
  INVX1 U220 ( .A(enable_CU), .Y(n191) );
  NAND3X1 U221 ( .A(enable_CU), .B(n171), .C(mode[2]), .Y(n150) );
  INVX1 U222 ( .A(mode[1]), .Y(n171) );
  INVX1 U223 ( .A(mode[0]), .Y(n140) );
  INVX1 U224 ( .A(w_4[7]), .Y(n188) );
endmodule

