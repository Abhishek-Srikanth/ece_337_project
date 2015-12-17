/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06-SP1
// Date      : Wed Dec 16 21:39:59 2015
/////////////////////////////////////////////////////////////


module rggb ( wb_1, wb_2, wb_3, wb_4, row, col, out );
  input [7:0] wb_1;
  input [7:0] wb_2;
  input [7:0] wb_3;
  input [7:0] wb_4;
  output [31:0] out;
  input row, col;
  wire   n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85,
         n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99,
         n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130;

  BUFX2 U89 ( .A(n81), .Y(n72) );
  BUFX2 U90 ( .A(n83), .Y(n73) );
  INVX2 U91 ( .A(n77), .Y(n74) );
  AND2X2 U92 ( .A(row), .B(col), .Y(n84) );
  BUFX2 U93 ( .A(n82), .Y(n75) );
  INVX1 U94 ( .A(n76), .Y(out[9]) );
  MUX2X1 U95 ( .B(wb_3[1]), .A(wb_4[1]), .S(n77), .Y(n76) );
  INVX1 U96 ( .A(n78), .Y(out[8]) );
  MUX2X1 U97 ( .B(wb_3[0]), .A(wb_4[0]), .S(n77), .Y(n78) );
  NAND2X1 U98 ( .A(n79), .B(n80), .Y(out[7]) );
  AOI22X1 U99 ( .A(wb_4[7]), .B(n72), .C(wb_1[7]), .D(n75), .Y(n80) );
  AOI22X1 U100 ( .A(wb_2[7]), .B(n73), .C(wb_3[7]), .D(n84), .Y(n79) );
  NAND2X1 U101 ( .A(n85), .B(n86), .Y(out[6]) );
  AOI22X1 U102 ( .A(wb_4[6]), .B(n72), .C(wb_1[6]), .D(n75), .Y(n86) );
  AOI22X1 U103 ( .A(wb_2[6]), .B(n73), .C(wb_3[6]), .D(n84), .Y(n85) );
  NAND2X1 U104 ( .A(n87), .B(n88), .Y(out[5]) );
  AOI22X1 U105 ( .A(wb_4[5]), .B(n72), .C(wb_1[5]), .D(n75), .Y(n88) );
  AOI22X1 U106 ( .A(wb_2[5]), .B(n73), .C(wb_3[5]), .D(n84), .Y(n87) );
  NAND2X1 U107 ( .A(n89), .B(n90), .Y(out[4]) );
  AOI22X1 U108 ( .A(wb_4[4]), .B(n72), .C(wb_1[4]), .D(n75), .Y(n90) );
  AOI22X1 U109 ( .A(wb_2[4]), .B(n73), .C(wb_3[4]), .D(n84), .Y(n89) );
  NAND2X1 U110 ( .A(n91), .B(n92), .Y(out[3]) );
  AOI22X1 U111 ( .A(wb_4[3]), .B(n72), .C(wb_1[3]), .D(n75), .Y(n92) );
  AOI22X1 U112 ( .A(wb_2[3]), .B(n73), .C(wb_3[3]), .D(n84), .Y(n91) );
  NAND2X1 U113 ( .A(n93), .B(n94), .Y(out[31]) );
  AOI22X1 U114 ( .A(wb_1[7]), .B(n72), .C(n75), .D(wb_4[7]), .Y(n94) );
  AOI22X1 U115 ( .A(wb_3[7]), .B(n73), .C(n84), .D(wb_2[7]), .Y(n93) );
  NAND2X1 U116 ( .A(n95), .B(n96), .Y(out[30]) );
  AOI22X1 U117 ( .A(wb_1[6]), .B(n72), .C(wb_4[6]), .D(n75), .Y(n96) );
  AOI22X1 U118 ( .A(wb_3[6]), .B(n73), .C(wb_2[6]), .D(n84), .Y(n95) );
  NAND2X1 U119 ( .A(n97), .B(n98), .Y(out[2]) );
  AOI22X1 U120 ( .A(wb_4[2]), .B(n72), .C(wb_1[2]), .D(n75), .Y(n98) );
  AOI22X1 U121 ( .A(wb_2[2]), .B(n73), .C(wb_3[2]), .D(n84), .Y(n97) );
  NAND2X1 U122 ( .A(n99), .B(n100), .Y(out[29]) );
  AOI22X1 U123 ( .A(wb_1[5]), .B(n72), .C(wb_4[5]), .D(n75), .Y(n100) );
  AOI22X1 U124 ( .A(wb_3[5]), .B(n73), .C(wb_2[5]), .D(n84), .Y(n99) );
  NAND2X1 U125 ( .A(n101), .B(n102), .Y(out[28]) );
  AOI22X1 U126 ( .A(wb_1[4]), .B(n72), .C(wb_4[4]), .D(n75), .Y(n102) );
  AOI22X1 U127 ( .A(wb_3[4]), .B(n73), .C(wb_2[4]), .D(n84), .Y(n101) );
  NAND2X1 U128 ( .A(n103), .B(n104), .Y(out[27]) );
  AOI22X1 U129 ( .A(wb_1[3]), .B(n72), .C(wb_4[3]), .D(n75), .Y(n104) );
  AOI22X1 U130 ( .A(wb_3[3]), .B(n73), .C(wb_2[3]), .D(n84), .Y(n103) );
  NAND2X1 U131 ( .A(n105), .B(n106), .Y(out[26]) );
  AOI22X1 U132 ( .A(wb_1[2]), .B(n72), .C(wb_4[2]), .D(n75), .Y(n106) );
  AOI22X1 U133 ( .A(wb_3[2]), .B(n73), .C(wb_2[2]), .D(n84), .Y(n105) );
  NAND2X1 U134 ( .A(n107), .B(n108), .Y(out[25]) );
  AOI22X1 U135 ( .A(wb_1[1]), .B(n72), .C(n75), .D(wb_4[1]), .Y(n108) );
  AOI22X1 U136 ( .A(n73), .B(wb_3[1]), .C(wb_2[1]), .D(n84), .Y(n107) );
  NAND2X1 U137 ( .A(n109), .B(n110), .Y(out[24]) );
  AOI22X1 U138 ( .A(wb_1[0]), .B(n72), .C(n75), .D(wb_4[0]), .Y(n110) );
  AOI22X1 U139 ( .A(n73), .B(wb_3[0]), .C(wb_2[0]), .D(n84), .Y(n109) );
  INVX1 U140 ( .A(n111), .Y(out[23]) );
  MUX2X1 U141 ( .B(wb_1[7]), .A(wb_2[7]), .S(n74), .Y(n111) );
  INVX1 U142 ( .A(n113), .Y(out[22]) );
  MUX2X1 U143 ( .B(wb_1[6]), .A(wb_2[6]), .S(n74), .Y(n113) );
  INVX1 U144 ( .A(n114), .Y(out[21]) );
  MUX2X1 U145 ( .B(wb_1[5]), .A(wb_2[5]), .S(n74), .Y(n114) );
  INVX1 U146 ( .A(n115), .Y(out[20]) );
  MUX2X1 U147 ( .B(wb_1[4]), .A(wb_2[4]), .S(n74), .Y(n115) );
  NAND2X1 U148 ( .A(n116), .B(n117), .Y(out[1]) );
  AOI22X1 U149 ( .A(n72), .B(wb_4[1]), .C(wb_1[1]), .D(n75), .Y(n117) );
  AOI22X1 U150 ( .A(wb_2[1]), .B(n73), .C(n84), .D(wb_3[1]), .Y(n116) );
  INVX1 U151 ( .A(n118), .Y(out[19]) );
  MUX2X1 U152 ( .B(wb_1[3]), .A(wb_2[3]), .S(n112), .Y(n118) );
  INVX1 U153 ( .A(n119), .Y(out[18]) );
  MUX2X1 U154 ( .B(wb_1[2]), .A(wb_2[2]), .S(n112), .Y(n119) );
  INVX1 U155 ( .A(n120), .Y(out[17]) );
  MUX2X1 U156 ( .B(wb_1[1]), .A(wb_2[1]), .S(n112), .Y(n120) );
  INVX1 U157 ( .A(n121), .Y(out[16]) );
  MUX2X1 U158 ( .B(wb_1[0]), .A(wb_2[0]), .S(n112), .Y(n121) );
  INVX1 U159 ( .A(n122), .Y(out[15]) );
  MUX2X1 U160 ( .B(wb_4[7]), .A(wb_3[7]), .S(n112), .Y(n122) );
  INVX1 U161 ( .A(n123), .Y(out[14]) );
  MUX2X1 U162 ( .B(wb_4[6]), .A(wb_3[6]), .S(n112), .Y(n123) );
  INVX1 U163 ( .A(n124), .Y(out[13]) );
  MUX2X1 U164 ( .B(wb_4[5]), .A(wb_3[5]), .S(n112), .Y(n124) );
  INVX1 U165 ( .A(n125), .Y(out[12]) );
  MUX2X1 U166 ( .B(wb_4[4]), .A(wb_3[4]), .S(n112), .Y(n125) );
  INVX1 U167 ( .A(n126), .Y(out[11]) );
  MUX2X1 U168 ( .B(wb_4[3]), .A(wb_3[3]), .S(n112), .Y(n126) );
  INVX1 U169 ( .A(n127), .Y(out[10]) );
  MUX2X1 U170 ( .B(wb_4[2]), .A(wb_3[2]), .S(n112), .Y(n127) );
  NAND2X1 U171 ( .A(n128), .B(n129), .Y(out[0]) );
  AOI22X1 U172 ( .A(n72), .B(wb_4[0]), .C(wb_1[0]), .D(n75), .Y(n129) );
  NOR2X1 U173 ( .A(n77), .B(n75), .Y(n81) );
  NOR2X1 U174 ( .A(n130), .B(row), .Y(n82) );
  INVX1 U175 ( .A(col), .Y(n130) );
  INVX1 U176 ( .A(n112), .Y(n77) );
  NOR2X1 U177 ( .A(n73), .B(n84), .Y(n112) );
  AOI22X1 U178 ( .A(wb_2[0]), .B(n73), .C(n84), .D(wb_3[0]), .Y(n128) );
  NOR2X1 U179 ( .A(col), .B(row), .Y(n83) );
endmodule

