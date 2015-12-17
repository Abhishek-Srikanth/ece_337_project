/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06-SP1
// Date      : Wed Dec 16 19:24:06 2015
/////////////////////////////////////////////////////////////


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
  wire   N499, N501, N502, N503, N504, N505, N506, N507, N508, N509, N510,
         N511, N513, N515, n17, n19, n183, n184, n185, n186, n187, n188, n189,
         n190, n191, n192, n193, n194, n195, n196, n197, n198, n199, n200,
         n201, n202, n203, n204, n205, n206, n207, n208, n209, n210, n211,
         n212, n213, n214, n215, n216, n217, n218, n219, n220, n221, n222,
         n223, n224, n225, n226, n227, n228, n229, n230, n231, n232, n233,
         n234, n235, n236, n237, n238, n239, n240, n241, n242, n243, n244,
         n245, n246, n247, n248, n249, n250, n251, n252, n253, n254, n255,
         n256, n257, n258, n259, n260, n261, n262, n263, n264, n265, n266,
         n267, n268, n269, n270, n271, n272, n273, n274, n275, n276, n277,
         n278, n279, n280, n281, n282, n283, n284, n285, n286, n287, n288,
         n289, n290, n291, n292, n293, n294, n295, n296, n297, n298, n299,
         n300, n301, n302, n303, n304, n305, n306, n307, n308, n309, n310,
         n311, n312, n313, n314, n315, n316, n317, n318, n319, n320, n321,
         n322, n323, n324, n325, n326, n327, n328, n329, n330, n331, n332,
         n333, n334, n335;
  wire   [31:0] state;

  DFFSR \state_reg[0]  ( .D(n187), .CLK(clk), .R(n_rst), .S(1'b1), .Q(state[0]) );
  DFFSR \state_reg[3]  ( .D(n184), .CLK(clk), .R(n_rst), .S(1'b1), .Q(state[3]) );
  DFFSR \state_reg[2]  ( .D(n185), .CLK(clk), .R(n_rst), .S(1'b1), .Q(state[2]) );
  DFFSR \state_reg[4]  ( .D(n183), .CLK(clk), .R(n_rst), .S(1'b1), .Q(state[4]) );
  DFFSR \state_reg[1]  ( .D(n186), .CLK(clk), .R(n_rst), .S(1'b1), .Q(state[1]) );
  LATCH \mode_WB_reg[2]  ( .CLK(n188), .D(N510), .Q(mode_WB[2]) );
  LATCH \mode_WB_reg[1]  ( .CLK(n188), .D(N509), .Q(mode_WB[1]) );
  LATCH \mode_WB_reg[0]  ( .CLK(n188), .D(N508), .Q(mode_WB[0]) );
  LATCH mode_sram_reg ( .CLK(n188), .D(N511), .Q(mode_sram) );
  LATCH mode_addr_calc_sram_reg ( .CLK(n188), .D(n17), .Q(mode_addr_calc_sram)
         );
  LATCH mode_addr_calc_sdram_reg ( .CLK(n188), .D(N513), .Q(
        mode_addr_calc_sdram) );
  LATCH enable_i_reg ( .CLK(n188), .D(N499), .Q(enable_i) );
  LATCH enable_j_reg ( .CLK(n188), .D(n19), .Q(enable_j) );
  LATCH enable_i_wr_reg ( .CLK(n188), .D(N501), .Q(enable_i_wr) );
  LATCH enable_addr_calc_sram_reg ( .CLK(n188), .D(N502), .Q(
        enable_addr_calc_sram) );
  LATCH enable_addr_calc_sdram_reg ( .CLK(n188), .D(N503), .Q(
        enable_addr_calc_sdram) );
  LATCH enable_WB_reg ( .CLK(n188), .D(N504), .Q(enable_WB) );
  LATCH enable_sram_reg ( .CLK(n188), .D(N505), .Q(enable_sram) );
  LATCH read_en_sdram_reg ( .CLK(n188), .D(N506), .Q(read_en_sdram) );
  LATCH write_en_sdram_reg ( .CLK(n188), .D(N501), .Q(write_en_sdram) );
  LATCH finish_flag_reg ( .CLK(n188), .D(N507), .Q(finish_flag) );
  BUFX2 U225 ( .A(N515), .Y(n188) );
  OAI21X1 U226 ( .A(n189), .B(n190), .C(n191), .Y(n187) );
  OAI21X1 U227 ( .A(n192), .B(n193), .C(n194), .Y(n191) );
  NAND3X1 U228 ( .A(n195), .B(n196), .C(n197), .Y(n193) );
  NOR2X1 U229 ( .A(n198), .B(n199), .Y(n197) );
  MUX2X1 U230 ( .B(n200), .A(n201), .S(dataRead_sdram), .Y(n199) );
  OR2X1 U231 ( .A(n202), .B(n203), .Y(n192) );
  OAI22X1 U232 ( .A(rollover_i), .B(n204), .C(n205), .D(n206), .Y(n203) );
  OAI21X1 U233 ( .A(n207), .B(n208), .C(n209), .Y(n202) );
  NOR2X1 U234 ( .A(N501), .B(n210), .Y(n209) );
  OAI21X1 U235 ( .A(n189), .B(n211), .C(n212), .Y(n186) );
  OAI21X1 U236 ( .A(n213), .B(n214), .C(n194), .Y(n212) );
  NAND3X1 U237 ( .A(n196), .B(n215), .C(n216), .Y(n214) );
  NAND3X1 U238 ( .A(n207), .B(n217), .C(n218), .Y(n213) );
  AOI21X1 U239 ( .A(n219), .B(dataRead_sdram), .C(n220), .Y(n218) );
  INVX1 U240 ( .A(n201), .Y(n220) );
  NAND3X1 U241 ( .A(n221), .B(n222), .C(n223), .Y(n185) );
  NOR2X1 U242 ( .A(n224), .B(n225), .Y(n223) );
  NAND2X1 U243 ( .A(n207), .B(n205), .Y(n225) );
  NAND3X1 U244 ( .A(n226), .B(n227), .C(n204), .Y(n224) );
  INVX1 U245 ( .A(N499), .Y(n227) );
  AOI21X1 U246 ( .A(n228), .B(rollover_i), .C(n229), .Y(n222) );
  OAI21X1 U247 ( .A(rollover_j), .B(n217), .C(n230), .Y(n229) );
  INVX1 U248 ( .A(n231), .Y(n228) );
  INVX1 U249 ( .A(n232), .Y(n221) );
  OAI21X1 U250 ( .A(n233), .B(n189), .C(n196), .Y(n232) );
  INVX1 U251 ( .A(n234), .Y(n196) );
  OAI21X1 U252 ( .A(dataRead_sram), .B(n235), .C(n236), .Y(n234) );
  NOR2X1 U253 ( .A(n237), .B(n238), .Y(n189) );
  MUX2X1 U254 ( .B(n239), .A(n240), .S(n194), .Y(n184) );
  INVX1 U255 ( .A(n237), .Y(n194) );
  NAND3X1 U256 ( .A(n241), .B(n242), .C(n243), .Y(n237) );
  OAI21X1 U257 ( .A(n244), .B(n245), .C(n208), .Y(n243) );
  NAND2X1 U258 ( .A(n236), .B(n246), .Y(n245) );
  NAND2X1 U259 ( .A(n247), .B(n248), .Y(n242) );
  NOR2X1 U260 ( .A(start_flag), .B(n249), .Y(n247) );
  INVX1 U261 ( .A(n250), .Y(n241) );
  AOI21X1 U262 ( .A(n251), .B(n215), .C(dataRead_sdram), .Y(n250) );
  AOI21X1 U263 ( .A(n248), .B(n252), .C(n210), .Y(n215) );
  NOR2X1 U264 ( .A(n253), .B(n254), .Y(n240) );
  OR2X1 U265 ( .A(n255), .B(n256), .Y(n254) );
  OAI21X1 U266 ( .A(rollover_i), .B(n204), .C(n257), .Y(n256) );
  OAI21X1 U267 ( .A(n235), .B(n208), .C(n258), .Y(n253) );
  AOI21X1 U268 ( .A(rollover_j), .B(n19), .C(n238), .Y(n258) );
  INVX1 U269 ( .A(dataRead_sram), .Y(n208) );
  NAND3X1 U270 ( .A(n259), .B(n260), .C(n261), .Y(n183) );
  NOR2X1 U271 ( .A(n262), .B(n263), .Y(n261) );
  NAND2X1 U272 ( .A(n264), .B(n216), .Y(n263) );
  INVX1 U273 ( .A(n265), .Y(n216) );
  NAND3X1 U274 ( .A(n266), .B(n251), .C(n267), .Y(n265) );
  AOI22X1 U275 ( .A(n268), .B(n206), .C(rollover_i), .D(n269), .Y(n267) );
  INVX1 U276 ( .A(rollover_i_wr), .Y(n206) );
  INVX1 U277 ( .A(n205), .Y(n268) );
  OAI21X1 U278 ( .A(n217), .B(n270), .C(n271), .Y(n262) );
  INVX1 U279 ( .A(rollover_j), .Y(n270) );
  NOR2X1 U280 ( .A(n272), .B(n219), .Y(n260) );
  NOR2X1 U281 ( .A(n273), .B(n238), .Y(n259) );
  NOR2X1 U282 ( .A(n274), .B(n275), .Y(n238) );
  NAND3X1 U283 ( .A(n276), .B(n277), .C(n278), .Y(n275) );
  INVX1 U284 ( .A(n279), .Y(n278) );
  NAND3X1 U285 ( .A(n249), .B(n280), .C(n281), .Y(n274) );
  INVX1 U286 ( .A(N511), .Y(n280) );
  INVX1 U287 ( .A(n282), .Y(n17) );
  NAND3X1 U288 ( .A(n205), .B(n283), .C(n271), .Y(N515) );
  INVX1 U289 ( .A(N513), .Y(n283) );
  NAND3X1 U290 ( .A(n284), .B(n282), .C(n264), .Y(N513) );
  NOR2X1 U291 ( .A(n285), .B(n286), .Y(n282) );
  NAND3X1 U292 ( .A(n195), .B(n287), .C(n288), .Y(n286) );
  INVX1 U293 ( .A(n289), .Y(n288) );
  INVX1 U294 ( .A(n290), .Y(n287) );
  NOR2X1 U295 ( .A(n279), .B(n291), .Y(n195) );
  NAND3X1 U296 ( .A(n266), .B(n231), .C(n292), .Y(n279) );
  OAI21X1 U297 ( .A(n293), .B(n252), .C(n248), .Y(n292) );
  NAND3X1 U298 ( .A(n249), .B(n294), .C(n295), .Y(n285) );
  INVX1 U299 ( .A(N509), .Y(n294) );
  NAND3X1 U300 ( .A(n235), .B(n257), .C(n296), .Y(N511) );
  NOR2X1 U301 ( .A(n290), .B(n297), .Y(n296) );
  NAND2X1 U302 ( .A(n205), .B(n298), .Y(n297) );
  NAND3X1 U303 ( .A(n200), .B(n204), .C(n299), .Y(n290) );
  NOR2X1 U304 ( .A(N507), .B(n19), .Y(n299) );
  INVX1 U305 ( .A(n217), .Y(n19) );
  NAND2X1 U306 ( .A(n300), .B(n301), .Y(n217) );
  INVX1 U307 ( .A(n302), .Y(n257) );
  NAND3X1 U308 ( .A(n271), .B(n303), .C(n304), .Y(n302) );
  NOR2X1 U309 ( .A(n291), .B(n305), .Y(n304) );
  INVX1 U310 ( .A(n246), .Y(n305) );
  NOR2X1 U311 ( .A(N501), .B(n244), .Y(n271) );
  AND2X1 U312 ( .A(n306), .B(n307), .Y(n244) );
  NAND3X1 U313 ( .A(n264), .B(n266), .C(n308), .Y(N510) );
  NOR2X1 U314 ( .A(n219), .B(n309), .Y(n308) );
  NAND2X1 U315 ( .A(n204), .B(n251), .Y(n309) );
  NAND2X1 U316 ( .A(n307), .B(n293), .Y(n251) );
  INVX1 U317 ( .A(n200), .Y(n219) );
  INVX1 U318 ( .A(n310), .Y(n264) );
  NAND3X1 U319 ( .A(n303), .B(n281), .C(n276), .Y(N509) );
  INVX1 U320 ( .A(n311), .Y(n303) );
  NAND3X1 U321 ( .A(n236), .B(n312), .C(n207), .Y(n311) );
  NAND3X1 U322 ( .A(n248), .B(state[2]), .C(n313), .Y(n236) );
  NAND3X1 U323 ( .A(n314), .B(n276), .C(n315), .Y(N508) );
  NOR2X1 U324 ( .A(n310), .B(n289), .Y(n315) );
  OAI21X1 U325 ( .A(n316), .B(n317), .C(n246), .Y(n289) );
  NAND2X1 U326 ( .A(n306), .B(n301), .Y(n246) );
  NAND2X1 U327 ( .A(n298), .B(n226), .Y(n310) );
  INVX1 U328 ( .A(n255), .Y(n276) );
  OAI21X1 U329 ( .A(n318), .B(n319), .C(n320), .Y(n255) );
  NOR2X1 U330 ( .A(n210), .B(n321), .Y(n320) );
  INVX1 U331 ( .A(n322), .Y(n210) );
  NAND3X1 U332 ( .A(n248), .B(n233), .C(n313), .Y(n322) );
  NOR2X1 U333 ( .A(n291), .B(n269), .Y(n314) );
  INVX1 U334 ( .A(n323), .Y(N507) );
  NAND3X1 U335 ( .A(n313), .B(n233), .C(n324), .Y(n323) );
  NAND2X1 U336 ( .A(n201), .B(n200), .Y(N506) );
  NAND2X1 U337 ( .A(n324), .B(n293), .Y(n200) );
  OAI21X1 U338 ( .A(n293), .B(n325), .C(n301), .Y(n201) );
  INVX1 U339 ( .A(n249), .Y(n293) );
  NAND3X1 U340 ( .A(n233), .B(n239), .C(n211), .Y(n249) );
  NAND3X1 U341 ( .A(n277), .B(n235), .C(n326), .Y(N505) );
  NOR2X1 U342 ( .A(n321), .B(n327), .Y(n326) );
  NAND2X1 U343 ( .A(n266), .B(n207), .Y(n327) );
  NAND3X1 U344 ( .A(state[3]), .B(n301), .C(n328), .Y(n207) );
  AOI21X1 U345 ( .A(n248), .B(n306), .C(n272), .Y(n235) );
  INVX1 U346 ( .A(n284), .Y(n272) );
  NAND2X1 U347 ( .A(n324), .B(n306), .Y(n284) );
  INVX1 U348 ( .A(n317), .Y(n306) );
  NAND3X1 U349 ( .A(state[2]), .B(n239), .C(state[1]), .Y(n317) );
  AND2X1 U350 ( .A(n295), .B(n226), .Y(n277) );
  NAND2X1 U351 ( .A(n252), .B(n307), .Y(n226) );
  NAND3X1 U352 ( .A(n329), .B(n266), .C(n330), .Y(N504) );
  NOR2X1 U353 ( .A(n273), .B(n321), .Y(n330) );
  INVX1 U354 ( .A(n230), .Y(n321) );
  NAND3X1 U355 ( .A(n301), .B(n233), .C(n313), .Y(n230) );
  INVX1 U356 ( .A(n281), .Y(n273) );
  NAND3X1 U357 ( .A(n301), .B(state[2]), .C(n313), .Y(n281) );
  NOR2X1 U358 ( .A(n239), .B(n211), .Y(n313) );
  NAND2X1 U359 ( .A(n324), .B(n252), .Y(n266) );
  NOR2X1 U360 ( .A(n331), .B(n291), .Y(n329) );
  NOR2X1 U361 ( .A(n319), .B(n316), .Y(n291) );
  INVX1 U362 ( .A(n298), .Y(n331) );
  OR2X1 U363 ( .A(n269), .B(N503), .Y(N502) );
  NAND3X1 U364 ( .A(n231), .B(n205), .C(n332), .Y(N503) );
  NAND2X1 U365 ( .A(n325), .B(n307), .Y(n205) );
  NAND2X1 U366 ( .A(n248), .B(n300), .Y(n231) );
  INVX1 U367 ( .A(n204), .Y(n269) );
  NAND2X1 U368 ( .A(n307), .B(n300), .Y(n204) );
  NOR2X1 U369 ( .A(n333), .B(n190), .Y(n307) );
  AND2X1 U370 ( .A(n325), .B(n324), .Y(N501) );
  INVX1 U371 ( .A(n319), .Y(n325) );
  NAND3X1 U372 ( .A(n211), .B(n233), .C(state[3]), .Y(n319) );
  NAND2X1 U373 ( .A(n332), .B(n295), .Y(N499) );
  NAND2X1 U374 ( .A(n252), .B(n301), .Y(n295) );
  INVX1 U375 ( .A(n318), .Y(n301) );
  NAND2X1 U376 ( .A(state[0]), .B(n333), .Y(n318) );
  INVX1 U377 ( .A(n334), .Y(n252) );
  NAND3X1 U378 ( .A(n233), .B(n239), .C(state[1]), .Y(n334) );
  INVX1 U379 ( .A(n198), .Y(n332) );
  NAND2X1 U380 ( .A(n312), .B(n298), .Y(n198) );
  NAND2X1 U381 ( .A(n324), .B(n300), .Y(n298) );
  INVX1 U382 ( .A(n335), .Y(n300) );
  NAND3X1 U383 ( .A(n211), .B(n239), .C(state[2]), .Y(n335) );
  INVX1 U384 ( .A(state[3]), .Y(n239) );
  INVX1 U385 ( .A(state[1]), .Y(n211) );
  NOR2X1 U386 ( .A(n333), .B(state[0]), .Y(n324) );
  NAND3X1 U387 ( .A(state[3]), .B(n248), .C(n328), .Y(n312) );
  NOR2X1 U388 ( .A(state[1]), .B(n233), .Y(n328) );
  INVX1 U389 ( .A(state[2]), .Y(n233) );
  INVX1 U390 ( .A(n316), .Y(n248) );
  NAND2X1 U391 ( .A(n190), .B(n333), .Y(n316) );
  INVX1 U392 ( .A(state[4]), .Y(n333) );
  INVX1 U393 ( .A(state[0]), .Y(n190) );
endmodule

