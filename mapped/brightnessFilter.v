/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06-SP1
// Date      : Wed Dec 16 21:33:59 2015
/////////////////////////////////////////////////////////////


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
  OR2X1 U32 ( .A(green[1]), .B(green[8]), .Y(result[9]) );
  OR2X1 U33 ( .A(green[0]), .B(green[8]), .Y(result[8]) );
  OR2X1 U34 ( .A(blue[7]), .B(blue[8]), .Y(result[7]) );
  OR2X1 U35 ( .A(blue[6]), .B(blue[8]), .Y(result[6]) );
  OR2X1 U36 ( .A(blue[5]), .B(blue[8]), .Y(result[5]) );
  OR2X1 U37 ( .A(blue[4]), .B(blue[8]), .Y(result[4]) );
  OR2X1 U38 ( .A(blue[3]), .B(blue[8]), .Y(result[3]) );
  OR2X1 U39 ( .A(blue[2]), .B(blue[8]), .Y(result[2]) );
  OR2X1 U40 ( .A(red[7]), .B(red[8]), .Y(result[23]) );
  OR2X1 U41 ( .A(red[6]), .B(red[8]), .Y(result[22]) );
  OR2X1 U42 ( .A(red[5]), .B(red[8]), .Y(result[21]) );
  OR2X1 U43 ( .A(red[4]), .B(red[8]), .Y(result[20]) );
  OR2X1 U44 ( .A(blue[1]), .B(blue[8]), .Y(result[1]) );
  OR2X1 U45 ( .A(red[3]), .B(red[8]), .Y(result[19]) );
  OR2X1 U46 ( .A(red[2]), .B(red[8]), .Y(result[18]) );
  OR2X1 U47 ( .A(red[1]), .B(red[8]), .Y(result[17]) );
  OR2X1 U48 ( .A(red[0]), .B(red[8]), .Y(result[16]) );
  OR2X1 U49 ( .A(green[7]), .B(green[8]), .Y(result[15]) );
  OR2X1 U50 ( .A(green[6]), .B(green[8]), .Y(result[14]) );
  OR2X1 U51 ( .A(green[5]), .B(green[8]), .Y(result[13]) );
  OR2X1 U52 ( .A(green[4]), .B(green[8]), .Y(result[12]) );
  OR2X1 U53 ( .A(green[3]), .B(green[8]), .Y(result[11]) );
  OR2X1 U54 ( .A(green[2]), .B(green[8]), .Y(result[10]) );
  OR2X1 U55 ( .A(blue[0]), .B(blue[8]), .Y(result[0]) );
endmodule

