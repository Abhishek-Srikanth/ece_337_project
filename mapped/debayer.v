/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06-SP1
// Date      : Wed Dec 16 19:57:45 2015
/////////////////////////////////////////////////////////////


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
  wire   \out[23] , \out[22] , \out[21] , \out[20] , \out[19] , \out[18] ,
         \out[17] , \out[16] , \out[7] , \out[6] , \out[5] , \out[4] ,
         \out[3] , \out[2] , \out[1] , \out[0] ;
  wire   SYNOPSYS_UNCONNECTED__0;
  assign out[24] = 1'b1;
  assign out[25] = 1'b1;
  assign out[26] = 1'b1;
  assign out[27] = 1'b1;
  assign out[28] = 1'b1;
  assign out[29] = 1'b1;
  assign out[30] = 1'b1;
  assign out[31] = 1'b1;
  assign out[23] = \out[23] ;
  assign \out[23]  = in[31];
  assign out[22] = \out[22] ;
  assign \out[22]  = in[30];
  assign out[21] = \out[21] ;
  assign \out[21]  = in[29];
  assign out[20] = \out[20] ;
  assign \out[20]  = in[28];
  assign out[19] = \out[19] ;
  assign \out[19]  = in[27];
  assign out[18] = \out[18] ;
  assign \out[18]  = in[26];
  assign out[17] = \out[17] ;
  assign \out[17]  = in[25];
  assign out[16] = \out[16] ;
  assign \out[16]  = in[24];
  assign out[7] = \out[7] ;
  assign \out[7]  = in[7];
  assign out[6] = \out[6] ;
  assign \out[6]  = in[6];
  assign out[5] = \out[5] ;
  assign \out[5]  = in[5];
  assign out[4] = \out[4] ;
  assign \out[4]  = in[4];
  assign out[3] = \out[3] ;
  assign \out[3]  = in[3];
  assign out[2] = \out[2] ;
  assign \out[2]  = in[2];
  assign out[1] = \out[1] ;
  assign \out[1]  = in[1];
  assign out[0] = \out[0] ;
  assign \out[0]  = in[0];

  debayer_DW01_add_0 add_20 ( .A({1'b0, in[23:16]}), .B({1'b0, in[15:8]}), 
        .CI(1'b0), .SUM({out[15:8], SYNOPSYS_UNCONNECTED__0}) );
endmodule

