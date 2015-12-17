// $Id: $
// File name:   whiteBalance.sv
// Created:     12/15/2015
// Author:      Abhishek Srikanth
// Lab Section: 337-02
// Version:     1.0  Initial Design Entry
// Description: Module to carry out white balancing

module whiteBalance
(
	input wire [31:0] in,
	input wire [31:0] white,

	output wire [31:0] out
);

// White is the most white color that the image has
// this is to be scaled to 255
// hence, multiply with 255, then divide white pixel

// but isn't a divide in 2^8 same as multiplication with its inv?
// Finite Field math on GF(2^8)
// Also, multiplication with 2^8 in GF(2^8) returns same number
// hence can avoid a multiplication with 2^8 (2^8 ~= 2^8 - 1)
reg [7:0] loopUp [0:255];
assign loopUp[0] = 8'd1;
assign loopUp[1] = 8'd1;
assign loopUp[2] = 8'd171;
assign loopUp[3] = 8'd171;
assign loopUp[4] = 8'd205;
assign loopUp[5] = 8'd205;
assign loopUp[6] = 8'd183;
assign loopUp[7] = 8'd183;
assign loopUp[8] = 8'd57;
assign loopUp[9] = 8'd57;
assign loopUp[10] = 8'd163;
assign loopUp[11] = 8'd163;
assign loopUp[12] = 8'd197;
assign loopUp[13] = 8'd197;
assign loopUp[14] = 8'd239;
assign loopUp[15] = 8'd239;
assign loopUp[16] = 8'd241;
assign loopUp[17] = 8'd241;
assign loopUp[18] = 8'd27;
assign loopUp[19] = 8'd27;
assign loopUp[20] = 8'd61;
assign loopUp[21] = 8'd61;
assign loopUp[22] = 8'd167;
assign loopUp[23] = 8'd167;
assign loopUp[24] = 8'd41;
assign loopUp[25] = 8'd41;
assign loopUp[26] = 8'd19;
assign loopUp[27] = 8'd19;
assign loopUp[28] = 8'd53;
assign loopUp[29] = 8'd53;
assign loopUp[30] = 8'd223;
assign loopUp[31] = 8'd223;
assign loopUp[32] = 8'd225;
assign loopUp[33] = 8'd225;
assign loopUp[34] = 8'd139;
assign loopUp[35] = 8'd139;
assign loopUp[36] = 8'd173;
assign loopUp[37] = 8'd173;
assign loopUp[38] = 8'd151;
assign loopUp[39] = 8'd151;
assign loopUp[40] = 8'd25;
assign loopUp[41] = 8'd25;
assign loopUp[42] = 8'd131;
assign loopUp[43] = 8'd131;
assign loopUp[44] = 8'd165;
assign loopUp[45] = 8'd165;
assign loopUp[46] = 8'd207;
assign loopUp[47] = 8'd207;
assign loopUp[48] = 8'd209;
assign loopUp[49] = 8'd209;
assign loopUp[50] = 8'd251;
assign loopUp[51] = 8'd251;
assign loopUp[52] = 8'd29;
assign loopUp[53] = 8'd29;
assign loopUp[54] = 8'd135;
assign loopUp[55] = 8'd135;
assign loopUp[56] = 8'd9;
assign loopUp[57] = 8'd9;
assign loopUp[58] = 8'd243;
assign loopUp[59] = 8'd243;
assign loopUp[60] = 8'd21;
assign loopUp[61] = 8'd21;
assign loopUp[62] = 8'd191;
assign loopUp[63] = 8'd191;
assign loopUp[64] = 8'd193;
assign loopUp[65] = 8'd193;
assign loopUp[66] = 8'd107;
assign loopUp[67] = 8'd107;
assign loopUp[68] = 8'd141;
assign loopUp[69] = 8'd141;
assign loopUp[70] = 8'd119;
assign loopUp[71] = 8'd119;
assign loopUp[72] = 8'd249;
assign loopUp[73] = 8'd249;
assign loopUp[74] = 8'd99;
assign loopUp[75] = 8'd99;
assign loopUp[76] = 8'd133;
assign loopUp[77] = 8'd133;
assign loopUp[78] = 8'd175;
assign loopUp[79] = 8'd175;
assign loopUp[80] = 8'd177;
assign loopUp[81] = 8'd177;
assign loopUp[82] = 8'd219;
assign loopUp[83] = 8'd219;
assign loopUp[84] = 8'd253;
assign loopUp[85] = 8'd253;
assign loopUp[86] = 8'd103;
assign loopUp[87] = 8'd103;
assign loopUp[88] = 8'd233;
assign loopUp[89] = 8'd233;
assign loopUp[90] = 8'd211;
assign loopUp[91] = 8'd211;
assign loopUp[92] = 8'd245;
assign loopUp[93] = 8'd245;
assign loopUp[94] = 8'd159;
assign loopUp[95] = 8'd159;
assign loopUp[96] = 8'd161;
assign loopUp[97] = 8'd161;
assign loopUp[98] = 8'd75;
assign loopUp[99] = 8'd75;
assign loopUp[100] = 8'd109;
assign loopUp[101] = 8'd109;
assign loopUp[102] = 8'd87;
assign loopUp[103] = 8'd87;
assign loopUp[104] = 8'd217;
assign loopUp[105] = 8'd217;
assign loopUp[106] = 8'd67;
assign loopUp[107] = 8'd67;
assign loopUp[108] = 8'd101;
assign loopUp[109] = 8'd101;
assign loopUp[110] = 8'd143;
assign loopUp[111] = 8'd143;
assign loopUp[112] = 8'd145;
assign loopUp[113] = 8'd145;
assign loopUp[114] = 8'd187;
assign loopUp[115] = 8'd187;
assign loopUp[116] = 8'd221;
assign loopUp[117] = 8'd221;
assign loopUp[118] = 8'd71;
assign loopUp[119] = 8'd71;
assign loopUp[120] = 8'd201;
assign loopUp[121] = 8'd201;
assign loopUp[122] = 8'd179;
assign loopUp[123] = 8'd179;
assign loopUp[124] = 8'd213;
assign loopUp[125] = 8'd213;
assign loopUp[126] = 8'd127;
assign loopUp[127] = 8'd127;
assign loopUp[128] = 8'd129;
assign loopUp[129] = 8'd129;
assign loopUp[130] = 8'd43;
assign loopUp[131] = 8'd43;
assign loopUp[132] = 8'd77;
assign loopUp[133] = 8'd77;
assign loopUp[134] = 8'd55;
assign loopUp[135] = 8'd55;
assign loopUp[136] = 8'd185;
assign loopUp[137] = 8'd185;
assign loopUp[138] = 8'd35;
assign loopUp[139] = 8'd35;
assign loopUp[140] = 8'd69;
assign loopUp[141] = 8'd69;
assign loopUp[142] = 8'd111;
assign loopUp[143] = 8'd111;
assign loopUp[144] = 8'd113;
assign loopUp[145] = 8'd113;
assign loopUp[146] = 8'd155;
assign loopUp[147] = 8'd155;
assign loopUp[148] = 8'd189;
assign loopUp[149] = 8'd189;
assign loopUp[150] = 8'd39;
assign loopUp[151] = 8'd39;
assign loopUp[152] = 8'd169;
assign loopUp[153] = 8'd169;
assign loopUp[154] = 8'd147;
assign loopUp[155] = 8'd147;
assign loopUp[156] = 8'd181;
assign loopUp[157] = 8'd181;
assign loopUp[158] = 8'd95;
assign loopUp[159] = 8'd95;
assign loopUp[160] = 8'd97;
assign loopUp[161] = 8'd97;
assign loopUp[162] = 8'd11;
assign loopUp[163] = 8'd11;
assign loopUp[164] = 8'd45;
assign loopUp[165] = 8'd45;
assign loopUp[166] = 8'd23;
assign loopUp[167] = 8'd23;
assign loopUp[168] = 8'd153;
assign loopUp[169] = 8'd153;
assign loopUp[170] = 8'd3;
assign loopUp[171] = 8'd3;
assign loopUp[172] = 8'd37;
assign loopUp[173] = 8'd37;
assign loopUp[174] = 8'd79;
assign loopUp[175] = 8'd79;
assign loopUp[176] = 8'd81;
assign loopUp[177] = 8'd81;
assign loopUp[178] = 8'd123;
assign loopUp[179] = 8'd123;
assign loopUp[180] = 8'd157;
assign loopUp[181] = 8'd157;
assign loopUp[182] = 8'd7;
assign loopUp[183] = 8'd7;
assign loopUp[184] = 8'd137;
assign loopUp[185] = 8'd137;
assign loopUp[186] = 8'd115;
assign loopUp[187] = 8'd115;
assign loopUp[188] = 8'd149;
assign loopUp[189] = 8'd149;
assign loopUp[190] = 8'd63;
assign loopUp[191] = 8'd63;
assign loopUp[192] = 8'd65;
assign loopUp[193] = 8'd65;
assign loopUp[194] = 8'd235;
assign loopUp[195] = 8'd235;
assign loopUp[196] = 8'd13;
assign loopUp[197] = 8'd13;
assign loopUp[198] = 8'd247;
assign loopUp[199] = 8'd247;
assign loopUp[200] = 8'd121;
assign loopUp[201] = 8'd121;
assign loopUp[202] = 8'd227;
assign loopUp[203] = 8'd227;
assign loopUp[204] = 8'd5;
assign loopUp[205] = 8'd5;
assign loopUp[206] = 8'd47;
assign loopUp[207] = 8'd47;
assign loopUp[208] = 8'd49;
assign loopUp[209] = 8'd49;
assign loopUp[210] = 8'd91;
assign loopUp[211] = 8'd91;
assign loopUp[212] = 8'd125;
assign loopUp[213] = 8'd125;
assign loopUp[214] = 8'd231;
assign loopUp[215] = 8'd231;
assign loopUp[216] = 8'd105;
assign loopUp[217] = 8'd105;
assign loopUp[218] = 8'd83;
assign loopUp[219] = 8'd83;
assign loopUp[220] = 8'd117;
assign loopUp[221] = 8'd117;
assign loopUp[222] = 8'd31;
assign loopUp[223] = 8'd31;
assign loopUp[224] = 8'd33;
assign loopUp[225] = 8'd33;
assign loopUp[226] = 8'd203;
assign loopUp[227] = 8'd203;
assign loopUp[228] = 8'd237;
assign loopUp[229] = 8'd237;
assign loopUp[230] = 8'd215;
assign loopUp[231] = 8'd215;
assign loopUp[232] = 8'd89;
assign loopUp[233] = 8'd89;
assign loopUp[234] = 8'd195;
assign loopUp[235] = 8'd195;
assign loopUp[236] = 8'd229;
assign loopUp[237] = 8'd229;
assign loopUp[238] = 8'd15;
assign loopUp[239] = 8'd15;
assign loopUp[240] = 8'd17;
assign loopUp[241] = 8'd17;
assign loopUp[242] = 8'd59;
assign loopUp[243] = 8'd59;
assign loopUp[244] = 8'd93;
assign loopUp[245] = 8'd93;
assign loopUp[246] = 8'd199;
assign loopUp[247] = 8'd199;
assign loopUp[248] = 8'd73;
assign loopUp[249] = 8'd73;
assign loopUp[250] = 8'd51;
assign loopUp[251] = 8'd51;
assign loopUp[252] = 8'd85;
assign loopUp[253] = 8'd85;
assign loopUp[254] = 8'd255;
assign loopUp[255] = 8'd255;

wire [7:0] R_out = in[23:16] * loopUp[white[23:16]];
wire [7:0] G_out = in[15:8] * loopUp[white[15:8]];
wire [7:0] B_out = in[7:0] * loopUp[white[7:0]];

assign out = { in[31:24], R_out, G_out, B_out };

endmodule