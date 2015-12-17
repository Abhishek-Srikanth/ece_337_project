/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06-SP1
// Date      : Wed Dec 16 19:09:48 2015
/////////////////////////////////////////////////////////////


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
  INVX4 U3 ( .A(load), .Y(n84) );
  INVX8 U4 ( .A(n_rst), .Y(n31) );
  BUFX2 U5 ( .A(n114), .Y(n1) );
  BUFX2 U6 ( .A(n86), .Y(n2) );
  BUFX2 U7 ( .A(n87), .Y(n3) );
  BUFX2 U8 ( .A(n115), .Y(n4) );
  INVX1 U9 ( .A(n5), .Y(sdram_address[9]) );
  MUX2X1 U10 ( .B(finish_address_reg[9]), .A(start_address_reg[9]), .S(mode), 
        .Y(n5) );
  INVX1 U11 ( .A(n6), .Y(sdram_address[8]) );
  MUX2X1 U12 ( .B(finish_address_reg[8]), .A(start_address_reg[8]), .S(mode), 
        .Y(n6) );
  INVX1 U13 ( .A(n7), .Y(sdram_address[7]) );
  MUX2X1 U14 ( .B(finish_address_reg[7]), .A(start_address_reg[7]), .S(mode), 
        .Y(n7) );
  INVX1 U15 ( .A(n8), .Y(sdram_address[6]) );
  MUX2X1 U16 ( .B(finish_address_reg[6]), .A(start_address_reg[6]), .S(mode), 
        .Y(n8) );
  INVX1 U17 ( .A(n9), .Y(sdram_address[5]) );
  MUX2X1 U18 ( .B(finish_address_reg[5]), .A(start_address_reg[5]), .S(mode), 
        .Y(n9) );
  INVX1 U19 ( .A(n10), .Y(sdram_address[4]) );
  MUX2X1 U20 ( .B(finish_address_reg[4]), .A(start_address_reg[4]), .S(mode), 
        .Y(n10) );
  INVX1 U21 ( .A(n11), .Y(sdram_address[3]) );
  MUX2X1 U22 ( .B(finish_address_reg[3]), .A(start_address_reg[3]), .S(mode), 
        .Y(n11) );
  INVX1 U23 ( .A(n12), .Y(sdram_address[2]) );
  MUX2X1 U24 ( .B(finish_address_reg[2]), .A(start_address_reg[2]), .S(mode), 
        .Y(n12) );
  INVX1 U25 ( .A(n13), .Y(sdram_address[25]) );
  MUX2X1 U26 ( .B(finish_address_reg[25]), .A(start_address_reg[25]), .S(mode), 
        .Y(n13) );
  INVX1 U27 ( .A(n14), .Y(sdram_address[24]) );
  MUX2X1 U28 ( .B(finish_address_reg[24]), .A(start_address_reg[24]), .S(mode), 
        .Y(n14) );
  INVX1 U29 ( .A(n15), .Y(sdram_address[23]) );
  MUX2X1 U30 ( .B(finish_address_reg[23]), .A(start_address_reg[23]), .S(mode), 
        .Y(n15) );
  INVX1 U31 ( .A(n16), .Y(sdram_address[22]) );
  MUX2X1 U32 ( .B(finish_address_reg[22]), .A(start_address_reg[22]), .S(mode), 
        .Y(n16) );
  INVX1 U33 ( .A(n17), .Y(sdram_address[21]) );
  MUX2X1 U34 ( .B(finish_address_reg[21]), .A(start_address_reg[21]), .S(mode), 
        .Y(n17) );
  INVX1 U35 ( .A(n18), .Y(sdram_address[20]) );
  MUX2X1 U36 ( .B(finish_address_reg[20]), .A(start_address_reg[20]), .S(mode), 
        .Y(n18) );
  INVX1 U37 ( .A(n19), .Y(sdram_address[1]) );
  MUX2X1 U38 ( .B(finish_address_reg[1]), .A(start_address_reg[1]), .S(mode), 
        .Y(n19) );
  INVX1 U39 ( .A(n20), .Y(sdram_address[19]) );
  MUX2X1 U40 ( .B(finish_address_reg[19]), .A(start_address_reg[19]), .S(mode), 
        .Y(n20) );
  INVX1 U41 ( .A(n21), .Y(sdram_address[18]) );
  MUX2X1 U42 ( .B(finish_address_reg[18]), .A(start_address_reg[18]), .S(mode), 
        .Y(n21) );
  INVX1 U43 ( .A(n22), .Y(sdram_address[17]) );
  MUX2X1 U44 ( .B(finish_address_reg[17]), .A(start_address_reg[17]), .S(mode), 
        .Y(n22) );
  INVX1 U45 ( .A(n23), .Y(sdram_address[16]) );
  MUX2X1 U46 ( .B(finish_address_reg[16]), .A(start_address_reg[16]), .S(mode), 
        .Y(n23) );
  INVX1 U47 ( .A(n24), .Y(sdram_address[15]) );
  MUX2X1 U48 ( .B(finish_address_reg[15]), .A(start_address_reg[15]), .S(mode), 
        .Y(n24) );
  INVX1 U49 ( .A(n25), .Y(sdram_address[14]) );
  MUX2X1 U50 ( .B(finish_address_reg[14]), .A(start_address_reg[14]), .S(mode), 
        .Y(n25) );
  INVX1 U51 ( .A(n26), .Y(sdram_address[13]) );
  MUX2X1 U52 ( .B(finish_address_reg[13]), .A(start_address_reg[13]), .S(mode), 
        .Y(n26) );
  INVX1 U53 ( .A(n27), .Y(sdram_address[12]) );
  MUX2X1 U54 ( .B(finish_address_reg[12]), .A(start_address_reg[12]), .S(mode), 
        .Y(n27) );
  INVX1 U55 ( .A(n28), .Y(sdram_address[11]) );
  MUX2X1 U56 ( .B(finish_address_reg[11]), .A(start_address_reg[11]), .S(mode), 
        .Y(n28) );
  INVX1 U57 ( .A(n29), .Y(sdram_address[10]) );
  MUX2X1 U58 ( .B(finish_address_reg[10]), .A(start_address_reg[10]), .S(mode), 
        .Y(n29) );
  INVX1 U59 ( .A(n30), .Y(sdram_address[0]) );
  MUX2X1 U60 ( .B(finish_address_reg[0]), .A(start_address_reg[0]), .S(mode), 
        .Y(n30) );
  NAND2X1 U61 ( .A(finish_address[25]), .B(n31), .Y(n142) );
  NAND2X1 U62 ( .A(n31), .B(n32), .Y(n143) );
  NAND2X1 U63 ( .A(finish_address[24]), .B(n31), .Y(n144) );
  NAND2X1 U64 ( .A(n31), .B(n33), .Y(n145) );
  NAND2X1 U65 ( .A(finish_address[23]), .B(n31), .Y(n146) );
  NAND2X1 U66 ( .A(n31), .B(n34), .Y(n147) );
  NAND2X1 U67 ( .A(finish_address[22]), .B(n31), .Y(n148) );
  NAND2X1 U68 ( .A(n31), .B(n35), .Y(n149) );
  NAND2X1 U69 ( .A(finish_address[21]), .B(n31), .Y(n150) );
  NAND2X1 U70 ( .A(n31), .B(n36), .Y(n151) );
  NAND2X1 U71 ( .A(finish_address[20]), .B(n31), .Y(n152) );
  NAND2X1 U72 ( .A(n31), .B(n37), .Y(n153) );
  NAND2X1 U73 ( .A(finish_address[19]), .B(n31), .Y(n154) );
  NAND2X1 U74 ( .A(n31), .B(n38), .Y(n155) );
  NAND2X1 U75 ( .A(finish_address[18]), .B(n31), .Y(n156) );
  NAND2X1 U76 ( .A(n31), .B(n39), .Y(n157) );
  NAND2X1 U77 ( .A(finish_address[17]), .B(n31), .Y(n158) );
  NAND2X1 U78 ( .A(n31), .B(n40), .Y(n159) );
  NAND2X1 U79 ( .A(finish_address[16]), .B(n31), .Y(n160) );
  NAND2X1 U80 ( .A(n31), .B(n41), .Y(n161) );
  NAND2X1 U81 ( .A(finish_address[15]), .B(n31), .Y(n162) );
  NAND2X1 U82 ( .A(n31), .B(n42), .Y(n163) );
  NAND2X1 U83 ( .A(finish_address[14]), .B(n31), .Y(n164) );
  NAND2X1 U84 ( .A(n31), .B(n43), .Y(n165) );
  NAND2X1 U85 ( .A(finish_address[13]), .B(n31), .Y(n166) );
  NAND2X1 U86 ( .A(n31), .B(n44), .Y(n167) );
  NAND2X1 U87 ( .A(finish_address[12]), .B(n31), .Y(n168) );
  NAND2X1 U88 ( .A(n31), .B(n45), .Y(n169) );
  NAND2X1 U89 ( .A(finish_address[11]), .B(n31), .Y(n170) );
  NAND2X1 U90 ( .A(n31), .B(n46), .Y(n171) );
  NAND2X1 U91 ( .A(finish_address[10]), .B(n31), .Y(n172) );
  NAND2X1 U92 ( .A(n31), .B(n47), .Y(n173) );
  NAND2X1 U93 ( .A(finish_address[9]), .B(n31), .Y(n174) );
  NAND2X1 U94 ( .A(n31), .B(n48), .Y(n175) );
  NAND2X1 U95 ( .A(finish_address[8]), .B(n31), .Y(n176) );
  NAND2X1 U96 ( .A(n31), .B(n49), .Y(n177) );
  NAND2X1 U97 ( .A(finish_address[7]), .B(n31), .Y(n178) );
  NAND2X1 U98 ( .A(n31), .B(n50), .Y(n179) );
  NAND2X1 U99 ( .A(finish_address[6]), .B(n31), .Y(n180) );
  NAND2X1 U100 ( .A(n31), .B(n51), .Y(n181) );
  NAND2X1 U101 ( .A(finish_address[5]), .B(n31), .Y(n182) );
  NAND2X1 U102 ( .A(n31), .B(n52), .Y(n183) );
  NAND2X1 U103 ( .A(finish_address[4]), .B(n31), .Y(n184) );
  NAND2X1 U104 ( .A(n31), .B(n53), .Y(n185) );
  NAND2X1 U105 ( .A(finish_address[3]), .B(n31), .Y(n186) );
  NAND2X1 U106 ( .A(n31), .B(n54), .Y(n187) );
  NAND2X1 U107 ( .A(finish_address[2]), .B(n31), .Y(n188) );
  NAND2X1 U108 ( .A(n31), .B(n55), .Y(n189) );
  NAND2X1 U109 ( .A(finish_address[1]), .B(n31), .Y(n190) );
  NAND2X1 U110 ( .A(n31), .B(n56), .Y(n191) );
  NAND2X1 U111 ( .A(finish_address[0]), .B(n31), .Y(n192) );
  NAND2X1 U112 ( .A(n31), .B(n57), .Y(n193) );
  NAND2X1 U113 ( .A(start_address[25]), .B(n31), .Y(n194) );
  NAND2X1 U114 ( .A(n58), .B(n31), .Y(n195) );
  NAND2X1 U115 ( .A(start_address[24]), .B(n31), .Y(n196) );
  NAND2X1 U116 ( .A(n59), .B(n31), .Y(n197) );
  NAND2X1 U117 ( .A(start_address[23]), .B(n31), .Y(n198) );
  NAND2X1 U118 ( .A(n60), .B(n31), .Y(n199) );
  NAND2X1 U119 ( .A(start_address[22]), .B(n31), .Y(n200) );
  NAND2X1 U120 ( .A(n61), .B(n31), .Y(n201) );
  NAND2X1 U121 ( .A(start_address[21]), .B(n31), .Y(n202) );
  NAND2X1 U122 ( .A(n62), .B(n31), .Y(n203) );
  NAND2X1 U123 ( .A(start_address[20]), .B(n31), .Y(n204) );
  NAND2X1 U124 ( .A(n63), .B(n31), .Y(n205) );
  NAND2X1 U125 ( .A(start_address[19]), .B(n31), .Y(n206) );
  NAND2X1 U126 ( .A(n64), .B(n31), .Y(n207) );
  NAND2X1 U127 ( .A(start_address[18]), .B(n31), .Y(n208) );
  NAND2X1 U128 ( .A(n65), .B(n31), .Y(n209) );
  NAND2X1 U129 ( .A(start_address[17]), .B(n31), .Y(n210) );
  NAND2X1 U130 ( .A(n66), .B(n31), .Y(n211) );
  NAND2X1 U131 ( .A(start_address[16]), .B(n31), .Y(n212) );
  NAND2X1 U132 ( .A(n67), .B(n31), .Y(n213) );
  NAND2X1 U133 ( .A(start_address[15]), .B(n31), .Y(n214) );
  NAND2X1 U134 ( .A(n68), .B(n31), .Y(n215) );
  NAND2X1 U135 ( .A(start_address[14]), .B(n31), .Y(n216) );
  NAND2X1 U136 ( .A(n69), .B(n31), .Y(n217) );
  NAND2X1 U137 ( .A(start_address[13]), .B(n31), .Y(n218) );
  NAND2X1 U138 ( .A(n70), .B(n31), .Y(n219) );
  NAND2X1 U139 ( .A(start_address[12]), .B(n31), .Y(n220) );
  NAND2X1 U140 ( .A(n71), .B(n31), .Y(n221) );
  NAND2X1 U141 ( .A(start_address[11]), .B(n31), .Y(n222) );
  NAND2X1 U142 ( .A(n72), .B(n31), .Y(n223) );
  NAND2X1 U143 ( .A(start_address[10]), .B(n31), .Y(n224) );
  NAND2X1 U144 ( .A(n73), .B(n31), .Y(n225) );
  NAND2X1 U145 ( .A(start_address[9]), .B(n31), .Y(n226) );
  NAND2X1 U146 ( .A(n74), .B(n31), .Y(n227) );
  NAND2X1 U147 ( .A(start_address[8]), .B(n31), .Y(n228) );
  NAND2X1 U148 ( .A(n75), .B(n31), .Y(n229) );
  NAND2X1 U149 ( .A(start_address[7]), .B(n31), .Y(n230) );
  NAND2X1 U150 ( .A(n76), .B(n31), .Y(n231) );
  NAND2X1 U151 ( .A(start_address[6]), .B(n31), .Y(n232) );
  NAND2X1 U152 ( .A(n77), .B(n31), .Y(n233) );
  NAND2X1 U153 ( .A(start_address[5]), .B(n31), .Y(n234) );
  NAND2X1 U154 ( .A(n78), .B(n31), .Y(n235) );
  NAND2X1 U155 ( .A(start_address[4]), .B(n31), .Y(n236) );
  NAND2X1 U156 ( .A(n79), .B(n31), .Y(n237) );
  NAND2X1 U157 ( .A(start_address[3]), .B(n31), .Y(n238) );
  NAND2X1 U158 ( .A(n80), .B(n31), .Y(n239) );
  NAND2X1 U159 ( .A(start_address[2]), .B(n31), .Y(n240) );
  NAND2X1 U160 ( .A(n81), .B(n31), .Y(n241) );
  NAND2X1 U161 ( .A(start_address[1]), .B(n31), .Y(n242) );
  NAND2X1 U162 ( .A(n82), .B(n31), .Y(n243) );
  NAND2X1 U163 ( .A(start_address[0]), .B(n31), .Y(n244) );
  NAND2X1 U164 ( .A(n83), .B(n31), .Y(n245) );
  OAI21X1 U165 ( .A(n83), .B(n84), .C(n85), .Y(n447) );
  AOI22X1 U166 ( .A(N85), .B(n2), .C(n3), .D(start_address_reg[0]), .Y(n85) );
  INVX1 U167 ( .A(start_address[0]), .Y(n83) );
  OAI21X1 U168 ( .A(n82), .B(n84), .C(n88), .Y(n444) );
  AOI22X1 U169 ( .A(N86), .B(n2), .C(n3), .D(start_address_reg[1]), .Y(n88) );
  INVX1 U170 ( .A(start_address[1]), .Y(n82) );
  OAI21X1 U171 ( .A(n81), .B(n84), .C(n89), .Y(n441) );
  AOI22X1 U172 ( .A(N87), .B(n2), .C(n3), .D(start_address_reg[2]), .Y(n89) );
  INVX1 U173 ( .A(start_address[2]), .Y(n81) );
  OAI21X1 U174 ( .A(n80), .B(n84), .C(n90), .Y(n438) );
  AOI22X1 U175 ( .A(N88), .B(n2), .C(n3), .D(start_address_reg[3]), .Y(n90) );
  INVX1 U176 ( .A(start_address[3]), .Y(n80) );
  OAI21X1 U177 ( .A(n79), .B(n84), .C(n91), .Y(n435) );
  AOI22X1 U178 ( .A(N89), .B(n2), .C(n3), .D(start_address_reg[4]), .Y(n91) );
  INVX1 U179 ( .A(start_address[4]), .Y(n79) );
  OAI21X1 U180 ( .A(n78), .B(n84), .C(n92), .Y(n432) );
  AOI22X1 U181 ( .A(N90), .B(n2), .C(n3), .D(start_address_reg[5]), .Y(n92) );
  INVX1 U182 ( .A(start_address[5]), .Y(n78) );
  OAI21X1 U183 ( .A(n77), .B(n84), .C(n93), .Y(n429) );
  AOI22X1 U184 ( .A(N91), .B(n2), .C(n3), .D(start_address_reg[6]), .Y(n93) );
  INVX1 U185 ( .A(start_address[6]), .Y(n77) );
  OAI21X1 U186 ( .A(n76), .B(n84), .C(n94), .Y(n426) );
  AOI22X1 U187 ( .A(N92), .B(n2), .C(n3), .D(start_address_reg[7]), .Y(n94) );
  INVX1 U188 ( .A(start_address[7]), .Y(n76) );
  OAI21X1 U189 ( .A(n75), .B(n84), .C(n95), .Y(n423) );
  AOI22X1 U190 ( .A(N93), .B(n2), .C(n3), .D(start_address_reg[8]), .Y(n95) );
  INVX1 U191 ( .A(start_address[8]), .Y(n75) );
  OAI21X1 U192 ( .A(n74), .B(n84), .C(n96), .Y(n420) );
  AOI22X1 U193 ( .A(N94), .B(n2), .C(n3), .D(start_address_reg[9]), .Y(n96) );
  INVX1 U194 ( .A(start_address[9]), .Y(n74) );
  OAI21X1 U195 ( .A(n73), .B(n84), .C(n97), .Y(n417) );
  AOI22X1 U196 ( .A(N95), .B(n2), .C(n3), .D(start_address_reg[10]), .Y(n97)
         );
  INVX1 U197 ( .A(start_address[10]), .Y(n73) );
  OAI21X1 U198 ( .A(n72), .B(n84), .C(n98), .Y(n414) );
  AOI22X1 U199 ( .A(N96), .B(n2), .C(n3), .D(start_address_reg[11]), .Y(n98)
         );
  INVX1 U200 ( .A(start_address[11]), .Y(n72) );
  OAI21X1 U201 ( .A(n71), .B(n84), .C(n99), .Y(n411) );
  AOI22X1 U202 ( .A(N97), .B(n2), .C(n3), .D(start_address_reg[12]), .Y(n99)
         );
  INVX1 U203 ( .A(start_address[12]), .Y(n71) );
  OAI21X1 U204 ( .A(n70), .B(n84), .C(n100), .Y(n408) );
  AOI22X1 U205 ( .A(N98), .B(n2), .C(n3), .D(start_address_reg[13]), .Y(n100)
         );
  INVX1 U206 ( .A(start_address[13]), .Y(n70) );
  OAI21X1 U207 ( .A(n69), .B(n84), .C(n101), .Y(n405) );
  AOI22X1 U208 ( .A(N99), .B(n2), .C(n3), .D(start_address_reg[14]), .Y(n101)
         );
  INVX1 U209 ( .A(start_address[14]), .Y(n69) );
  OAI21X1 U210 ( .A(n68), .B(n84), .C(n102), .Y(n402) );
  AOI22X1 U211 ( .A(N100), .B(n2), .C(n3), .D(start_address_reg[15]), .Y(n102)
         );
  INVX1 U212 ( .A(start_address[15]), .Y(n68) );
  OAI21X1 U213 ( .A(n67), .B(n84), .C(n103), .Y(n399) );
  AOI22X1 U214 ( .A(N101), .B(n2), .C(n3), .D(start_address_reg[16]), .Y(n103)
         );
  INVX1 U215 ( .A(start_address[16]), .Y(n67) );
  OAI21X1 U216 ( .A(n66), .B(n84), .C(n104), .Y(n396) );
  AOI22X1 U217 ( .A(N102), .B(n2), .C(n3), .D(start_address_reg[17]), .Y(n104)
         );
  INVX1 U218 ( .A(start_address[17]), .Y(n66) );
  OAI21X1 U219 ( .A(n65), .B(n84), .C(n105), .Y(n393) );
  AOI22X1 U220 ( .A(N103), .B(n2), .C(n3), .D(start_address_reg[18]), .Y(n105)
         );
  INVX1 U221 ( .A(start_address[18]), .Y(n65) );
  OAI21X1 U222 ( .A(n64), .B(n84), .C(n106), .Y(n390) );
  AOI22X1 U223 ( .A(N104), .B(n2), .C(n3), .D(start_address_reg[19]), .Y(n106)
         );
  INVX1 U224 ( .A(start_address[19]), .Y(n64) );
  OAI21X1 U225 ( .A(n63), .B(n84), .C(n107), .Y(n387) );
  AOI22X1 U226 ( .A(N105), .B(n2), .C(n3), .D(start_address_reg[20]), .Y(n107)
         );
  INVX1 U227 ( .A(start_address[20]), .Y(n63) );
  OAI21X1 U228 ( .A(n62), .B(n84), .C(n108), .Y(n384) );
  AOI22X1 U229 ( .A(N106), .B(n2), .C(n3), .D(start_address_reg[21]), .Y(n108)
         );
  INVX1 U230 ( .A(start_address[21]), .Y(n62) );
  OAI21X1 U231 ( .A(n61), .B(n84), .C(n109), .Y(n381) );
  AOI22X1 U232 ( .A(N107), .B(n2), .C(n3), .D(start_address_reg[22]), .Y(n109)
         );
  INVX1 U233 ( .A(start_address[22]), .Y(n61) );
  OAI21X1 U234 ( .A(n60), .B(n84), .C(n110), .Y(n378) );
  AOI22X1 U235 ( .A(N108), .B(n2), .C(n3), .D(start_address_reg[23]), .Y(n110)
         );
  INVX1 U236 ( .A(start_address[23]), .Y(n60) );
  OAI21X1 U237 ( .A(n59), .B(n84), .C(n111), .Y(n375) );
  AOI22X1 U238 ( .A(N109), .B(n2), .C(n3), .D(start_address_reg[24]), .Y(n111)
         );
  INVX1 U239 ( .A(start_address[24]), .Y(n59) );
  OAI21X1 U240 ( .A(n58), .B(n84), .C(n112), .Y(n372) );
  AOI22X1 U241 ( .A(N110), .B(n2), .C(n3), .D(start_address_reg[25]), .Y(n112)
         );
  NOR2X1 U242 ( .A(n3), .B(load), .Y(n86) );
  AOI21X1 U243 ( .A(mode), .B(enable), .C(load), .Y(n87) );
  INVX1 U244 ( .A(start_address[25]), .Y(n58) );
  OAI21X1 U245 ( .A(n57), .B(n84), .C(n113), .Y(n369) );
  AOI22X1 U246 ( .A(n1), .B(N85), .C(n4), .D(finish_address_reg[0]), .Y(n113)
         );
  INVX1 U247 ( .A(finish_address[0]), .Y(n57) );
  OAI21X1 U248 ( .A(n56), .B(n84), .C(n116), .Y(n366) );
  AOI22X1 U249 ( .A(n1), .B(N86), .C(n4), .D(finish_address_reg[1]), .Y(n116)
         );
  INVX1 U250 ( .A(finish_address[1]), .Y(n56) );
  OAI21X1 U251 ( .A(n55), .B(n84), .C(n117), .Y(n363) );
  AOI22X1 U252 ( .A(n1), .B(N87), .C(n4), .D(finish_address_reg[2]), .Y(n117)
         );
  INVX1 U253 ( .A(finish_address[2]), .Y(n55) );
  OAI21X1 U254 ( .A(n54), .B(n84), .C(n118), .Y(n360) );
  AOI22X1 U255 ( .A(n1), .B(N88), .C(n4), .D(finish_address_reg[3]), .Y(n118)
         );
  INVX1 U256 ( .A(finish_address[3]), .Y(n54) );
  OAI21X1 U257 ( .A(n53), .B(n84), .C(n119), .Y(n357) );
  AOI22X1 U258 ( .A(n1), .B(N89), .C(n4), .D(finish_address_reg[4]), .Y(n119)
         );
  INVX1 U259 ( .A(finish_address[4]), .Y(n53) );
  OAI21X1 U260 ( .A(n52), .B(n84), .C(n120), .Y(n354) );
  AOI22X1 U261 ( .A(n1), .B(N90), .C(n4), .D(finish_address_reg[5]), .Y(n120)
         );
  INVX1 U262 ( .A(finish_address[5]), .Y(n52) );
  OAI21X1 U263 ( .A(n51), .B(n84), .C(n121), .Y(n351) );
  AOI22X1 U264 ( .A(n1), .B(N91), .C(n4), .D(finish_address_reg[6]), .Y(n121)
         );
  INVX1 U265 ( .A(finish_address[6]), .Y(n51) );
  OAI21X1 U266 ( .A(n50), .B(n84), .C(n122), .Y(n348) );
  AOI22X1 U267 ( .A(n1), .B(N92), .C(n4), .D(finish_address_reg[7]), .Y(n122)
         );
  INVX1 U268 ( .A(finish_address[7]), .Y(n50) );
  OAI21X1 U269 ( .A(n49), .B(n84), .C(n123), .Y(n345) );
  AOI22X1 U270 ( .A(n1), .B(N93), .C(n4), .D(finish_address_reg[8]), .Y(n123)
         );
  INVX1 U271 ( .A(finish_address[8]), .Y(n49) );
  OAI21X1 U272 ( .A(n48), .B(n84), .C(n124), .Y(n342) );
  AOI22X1 U273 ( .A(n1), .B(N94), .C(n4), .D(finish_address_reg[9]), .Y(n124)
         );
  INVX1 U274 ( .A(finish_address[9]), .Y(n48) );
  OAI21X1 U275 ( .A(n47), .B(n84), .C(n125), .Y(n339) );
  AOI22X1 U276 ( .A(n1), .B(N95), .C(n4), .D(finish_address_reg[10]), .Y(n125)
         );
  INVX1 U277 ( .A(finish_address[10]), .Y(n47) );
  OAI21X1 U278 ( .A(n46), .B(n84), .C(n126), .Y(n336) );
  AOI22X1 U279 ( .A(n1), .B(N96), .C(n4), .D(finish_address_reg[11]), .Y(n126)
         );
  INVX1 U280 ( .A(finish_address[11]), .Y(n46) );
  OAI21X1 U281 ( .A(n45), .B(n84), .C(n127), .Y(n333) );
  AOI22X1 U282 ( .A(n1), .B(N97), .C(n4), .D(finish_address_reg[12]), .Y(n127)
         );
  INVX1 U283 ( .A(finish_address[12]), .Y(n45) );
  OAI21X1 U284 ( .A(n44), .B(n84), .C(n128), .Y(n330) );
  AOI22X1 U285 ( .A(n1), .B(N98), .C(n4), .D(finish_address_reg[13]), .Y(n128)
         );
  INVX1 U286 ( .A(finish_address[13]), .Y(n44) );
  OAI21X1 U287 ( .A(n43), .B(n84), .C(n129), .Y(n327) );
  AOI22X1 U288 ( .A(n1), .B(N99), .C(n4), .D(finish_address_reg[14]), .Y(n129)
         );
  INVX1 U289 ( .A(finish_address[14]), .Y(n43) );
  OAI21X1 U290 ( .A(n42), .B(n84), .C(n130), .Y(n324) );
  AOI22X1 U291 ( .A(n1), .B(N100), .C(n4), .D(finish_address_reg[15]), .Y(n130) );
  INVX1 U292 ( .A(finish_address[15]), .Y(n42) );
  OAI21X1 U293 ( .A(n41), .B(n84), .C(n131), .Y(n321) );
  AOI22X1 U294 ( .A(n1), .B(N101), .C(n4), .D(finish_address_reg[16]), .Y(n131) );
  INVX1 U295 ( .A(finish_address[16]), .Y(n41) );
  OAI21X1 U296 ( .A(n40), .B(n84), .C(n132), .Y(n318) );
  AOI22X1 U297 ( .A(n1), .B(N102), .C(n4), .D(finish_address_reg[17]), .Y(n132) );
  INVX1 U298 ( .A(finish_address[17]), .Y(n40) );
  OAI21X1 U299 ( .A(n39), .B(n84), .C(n133), .Y(n315) );
  AOI22X1 U300 ( .A(n1), .B(N103), .C(n4), .D(finish_address_reg[18]), .Y(n133) );
  INVX1 U301 ( .A(finish_address[18]), .Y(n39) );
  OAI21X1 U302 ( .A(n38), .B(n84), .C(n134), .Y(n312) );
  AOI22X1 U303 ( .A(n1), .B(N104), .C(n4), .D(finish_address_reg[19]), .Y(n134) );
  INVX1 U304 ( .A(finish_address[19]), .Y(n38) );
  OAI21X1 U305 ( .A(n37), .B(n84), .C(n135), .Y(n309) );
  AOI22X1 U306 ( .A(n1), .B(N105), .C(n4), .D(finish_address_reg[20]), .Y(n135) );
  INVX1 U307 ( .A(finish_address[20]), .Y(n37) );
  OAI21X1 U308 ( .A(n36), .B(n84), .C(n136), .Y(n306) );
  AOI22X1 U309 ( .A(n1), .B(N106), .C(n4), .D(finish_address_reg[21]), .Y(n136) );
  INVX1 U310 ( .A(finish_address[21]), .Y(n36) );
  OAI21X1 U311 ( .A(n35), .B(n84), .C(n137), .Y(n303) );
  AOI22X1 U312 ( .A(n1), .B(N107), .C(n4), .D(finish_address_reg[22]), .Y(n137) );
  INVX1 U313 ( .A(finish_address[22]), .Y(n35) );
  OAI21X1 U314 ( .A(n34), .B(n84), .C(n138), .Y(n300) );
  AOI22X1 U315 ( .A(n1), .B(N108), .C(n4), .D(finish_address_reg[23]), .Y(n138) );
  INVX1 U316 ( .A(finish_address[23]), .Y(n34) );
  OAI21X1 U317 ( .A(n33), .B(n84), .C(n139), .Y(n297) );
  AOI22X1 U318 ( .A(n1), .B(N109), .C(n4), .D(finish_address_reg[24]), .Y(n139) );
  INVX1 U319 ( .A(finish_address[24]), .Y(n33) );
  OAI21X1 U320 ( .A(n32), .B(n84), .C(n140), .Y(n294) );
  AOI22X1 U321 ( .A(n1), .B(N110), .C(n4), .D(finish_address_reg[25]), .Y(n140) );
  NOR2X1 U322 ( .A(n4), .B(load), .Y(n114) );
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

