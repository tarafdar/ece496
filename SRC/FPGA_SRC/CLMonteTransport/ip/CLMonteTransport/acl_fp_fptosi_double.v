// megafunction wizard: %ALTFP_CONVERT%
// GENERATION: STANDARD
// VERSION: WM1.0
// MODULE: ALTFP_CONVERT 

// ============================================================
// File Name: acl_fp_fptosi_double.v
// Megafunction Name(s):
// 			ALTFP_CONVERT
//
// Simulation Library Files(s):
// 			lpm
// ============================================================
// ************************************************************
// THIS IS A WIZARD-GENERATED FILE. DO NOT EDIT THIS FILE!
//
// 11.0 Build 157 04/27/2011 SJ Full Version
// ************************************************************

// (C) 1992-2013 Altera Corporation. All rights reserved.                         
// Your use of Altera Corporation's design tools, logic functions and other       
// software and tools, and its AMPP partner logic functions, and any output       
// files any of the foregoing (including device programming or simulation         
// files), and any associated documentation or information are expressly subject  
// to the terms and conditions of the Altera Program License Subscription         
// Agreement, Altera MegaCore Function License Agreement, or other applicable     
// license agreement, including, without limitation, that your use is for the     
// sole purpose of programming logic devices manufactured by Altera and sold by   
// Altera or its authorized distributors.  Please refer to the applicable         
// agreement for further details.                                                 
    



//altfp_convert CBX_AUTO_BLACKBOX="ALL" DEVICE_FAMILY="Stratix IV" OPERATION="FLOAT2INT" ROUNDING="TO_NEAREST" WIDTH_DATA=64 WIDTH_EXP_INPUT=11 WIDTH_EXP_OUTPUT=8 WIDTH_INT=33 WIDTH_MAN_INPUT=52 WIDTH_MAN_OUTPUT=23 WIDTH_RESULT=33 clk_en clock dataa result
//VERSION_BEGIN 11.0 cbx_altbarrel_shift 2011:04:27:21:09:05:SJ cbx_altfp_convert 2011:04:27:21:09:05:SJ cbx_altpriority_encoder 2011:04:27:21:09:05:SJ cbx_altsyncram 2011:04:27:21:09:05:SJ cbx_cycloneii 2011:04:27:21:09:05:SJ cbx_lpm_abs 2011:04:27:21:09:05:SJ cbx_lpm_add_sub 2011:04:27:21:09:05:SJ cbx_lpm_compare 2011:04:27:21:09:05:SJ cbx_lpm_decode 2011:04:27:21:09:05:SJ cbx_lpm_divide 2011:04:27:21:09:05:SJ cbx_lpm_mux 2011:04:27:21:09:05:SJ cbx_mgl 2011:04:27:21:10:09:SJ cbx_stratix 2011:04:27:21:09:05:SJ cbx_stratixii 2011:04:27:21:09:05:SJ cbx_stratixiii 2011:04:27:21:09:05:SJ cbx_stratixv 2011:04:27:21:09:05:SJ cbx_util_mgl 2011:04:27:21:09:05:SJ  VERSION_END
// synthesis VERILOG_INPUT_VERSION VERILOG_2001
// altera message_off 10463



//altbarrel_shift CBX_AUTO_BLACKBOX="ALL" DEVICE_FAMILY="Stratix IV" PIPELINE=2 SHIFTDIR="LEFT" SHIFTTYPE="LOGICAL" WIDTH=84 WIDTHDIST=7 aclr clk_en clock data distance result
//VERSION_BEGIN 11.0 cbx_altbarrel_shift 2011:04:27:21:09:05:SJ cbx_mgl 2011:04:27:21:10:09:SJ  VERSION_END

//synthesis_resources = reg 173 
//synopsys translate_off
`timescale 1 ps / 1 ps
//synopsys translate_on
module  acl_fp_fptosi_double_altbarrel_shift_3tf
	( 
	aclr,
	clk_en,
	clock,
	data,
	distance,
	result) ;
	input   aclr;
	input   clk_en;
	input   clock;
	input   [83:0]  data;
	input   [6:0]  distance;
	output   [83:0]  result;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_off
`endif
	tri0   aclr;
	tri1   clk_en;
	tri0   clock;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_on
`endif

	reg	[1:0]	dir_pipe;
	reg	[83:0]	sbit_piper1d;
	reg	[83:0]	sbit_piper2d;
	reg	sel_pipec4r1d;
	reg	sel_pipec5r1d;
	reg	sel_pipec6r1d;
	wire  [7:0]  dir_w;
	wire  direction_w;
	wire  [63:0]  pad_w;
	wire  [671:0]  sbit_w;
	wire  [6:0]  sel_w;
	wire  [587:0]  smux_w;

	// synopsys translate_off
	initial
		dir_pipe = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dir_pipe <= 2'b0;
		else if  (clk_en == 1'b1)   dir_pipe <= {dir_w[6], dir_w[3]};
	// synopsys translate_off
	initial
		sbit_piper1d = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) sbit_piper1d <= 84'b0;
		else if  (clk_en == 1'b1)   sbit_piper1d <= smux_w[335:252];
	// synopsys translate_off
	initial
		sbit_piper2d = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) sbit_piper2d <= 84'b0;
		else if  (clk_en == 1'b1)   sbit_piper2d <= smux_w[587:504];
	// synopsys translate_off
	initial
		sel_pipec4r1d = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) sel_pipec4r1d <= 1'b0;
		else if  (clk_en == 1'b1)   sel_pipec4r1d <= distance[4];
	// synopsys translate_off
	initial
		sel_pipec5r1d = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) sel_pipec5r1d <= 1'b0;
		else if  (clk_en == 1'b1)   sel_pipec5r1d <= distance[5];
	// synopsys translate_off
	initial
		sel_pipec6r1d = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) sel_pipec6r1d <= 1'b0;
		else if  (clk_en == 1'b1)   sel_pipec6r1d <= distance[6];
	assign
		dir_w = {dir_pipe[1], dir_w[5:4], dir_pipe[0], dir_w[2:0], direction_w},
		direction_w = 1'b0,
		pad_w = {64{1'b0}},
		result = sbit_w[671:588],
		sbit_w = {sbit_piper2d, smux_w[503:336], sbit_piper1d, smux_w[251:0], data},
		sel_w = {sel_pipec6r1d, sel_pipec5r1d, sel_pipec4r1d, distance[3:0]},
		smux_w = {((({84{(sel_w[6] & (~ dir_w[6]))}} & {sbit_w[523:504], pad_w[63:0]}) | ({84{(sel_w[6] & dir_w[6])}} & {pad_w[63:0], sbit_w[587:568]})) | ({84{(~ sel_w[6])}} & sbit_w[587:504])), ((({84{(sel_w[5] & (~ dir_w[5]))}} & {sbit_w[471:420], pad_w[31:0]}) | ({84{(sel_w[5] & dir_w[5])}} & {pad_w[31:0], sbit_w[503:452]})) | ({84{(~ sel_w[5])}} & sbit_w[503:420])), ((({84{(sel_w[4] & (~ dir_w[4]))}} & {sbit_w[403:336], pad_w[15:0]}) | ({84{(sel_w[4] & dir_w[4])}} & {pad_w[15:0], sbit_w[419:352]})) | ({84{(~ sel_w[4])}} & sbit_w[419:336])), ((({84{(sel_w[3] & (~ dir_w[3]))}} & {sbit_w[327:252], pad_w[7:0]}) | ({84{(sel_w[3] & dir_w[3])}} & {pad_w[7:0], sbit_w[335:260]})) | ({84{(~ sel_w[3])}} & sbit_w[335:252])), ((({84{(sel_w[2] & (~ dir_w[2]))}} & {sbit_w[247:168], pad_w[3:0]}) | ({84{(sel_w[2] & dir_w[2])}} & {pad_w[3:0], sbit_w[251:172]})) | ({84{(~ sel_w[2])}} & sbit_w[251:168])), ((({84{(sel_w[1] & (~ dir_w[1]))}} & {sbit_w[165:84], pad_w[1:0]}) | ({84{(sel_w[1] & dir_w[1])}} & {pad_w[1:0], sbit_w[167:86]})) | ({84{(~ sel_w[1])}} & sbit_w[167:84])), ((({84{(sel_w[0] & (~ dir_w[0]))}} & {sbit_w[82:0], pad_w[0]}) | ({84{(sel_w[0] & dir_w[0])}} & {pad_w[0], sbit_w[83:1]})) | ({84{(~ sel_w[0])}} & sbit_w[83:0]))};
endmodule //acl_fp_fptosi_double_altbarrel_shift_3tf

//synthesis_resources = lpm_add_sub 5 lpm_compare 4 reg 406 
//synopsys translate_off
`timescale 1 ps / 1 ps
//synopsys translate_on
module  acl_fp_fptosi_double_altfp_convert_hkn
	( 
	clk_en,
	clock,
	dataa,
	result) ;
	input   clk_en;
	input   clock;
	input   [63:0]  dataa;
	output   [32:0]  result;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_off
`endif
	tri1   clk_en;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_on
`endif

	wire  [83:0]   wire_altbarrel_shift6_result;
	reg	[6:0]	added_power2_reg;
	reg	below_lower_limit1_reg1;
	reg	below_lower_limit1_reg2;
	reg	below_lower_limit1_reg3;
	reg	below_lower_limit2_reg1;
	reg	below_lower_limit2_reg2;
	reg	below_lower_limit2_reg3;
	reg	below_lower_limit2_reg4;
	reg	[63:0]	dataa_reg;
	reg	equal_upper_limit_reg1;
	reg	equal_upper_limit_reg2;
	reg	equal_upper_limit_reg3;
	reg	exceed_upper_limit_reg1;
	reg	exceed_upper_limit_reg2;
	reg	exceed_upper_limit_reg3;
	reg	exceed_upper_limit_reg4;
	reg	exp_and_reg1;
	reg	exp_and_reg2;
	reg	exp_and_reg3;
	reg	exp_and_reg4;
	reg	exp_or_reg1;
	reg	exp_or_reg2;
	reg	exp_or_reg3;
	reg	exp_or_reg4;
	reg	int_or1_reg1;
	reg	int_or2_reg1;
	reg	int_or_reg2;
	reg	int_or_reg3;
	reg	[32:0]	integer_result_reg;
	reg	[31:0]	integer_rounded_reg;
	reg	lowest_int_sel_reg;
	reg	man_or1_reg1;
	reg	man_or2_reg1;
	reg	man_or_reg2;
	reg	man_or_reg3;
	reg	man_or_reg4;
	reg	[51:0]	mantissa_input_reg;
	reg	max_shift_exceeder_reg;
	reg	max_shift_reg;
	reg	[6:0]	power2_value_reg;
	reg	sign_input_reg1;
	reg	sign_input_reg2;
	reg	sign_input_reg3;
	reg	sign_input_reg4;
	wire  [10:0]   wire_add_sub4_result;
	wire  [6:0]   wire_add_sub5_result;
	wire  wire_add_sub7_cout;
	wire  [31:0]   wire_add_sub7_result;
	wire  wire_add_sub8_cout;
	wire  [15:0]   wire_add_sub8_result;
	wire  [15:0]   wire_add_sub9_result;
	wire  wire_cmpr1_aeb;
	wire  wire_cmpr1_agb;
	wire  wire_cmpr2_aeb;
	wire  wire_cmpr3_alb;
	wire  wire_max_shift_compare_agb;
	wire aclr;
	wire  add_1_cout_w;
	wire  add_1_w;
	wire  [32:0]  all_zeroes_w;
	wire  [83:0]  barrel_mantissa_input;
	wire  [30:0]  barrel_zero_padding_w;
	wire  below_limit_exceeders;
	wire  [32:0]  below_limit_integer;
	wire  below_lower_limit1_w;
	wire  below_lower_limit2_w;
	wire  [10:0]  bias_value_less_1_w;
	wire  [10:0]  bias_value_w;
	wire  [10:0]  const_bias_value_add_width_res_w;
	wire  denormal_input_w;
	wire  equal_upper_limit_w;
	wire  exceed_limit_exceeders;
	wire  [32:0]  exceed_limit_integer;
	wire  exceed_upper_limit_w;
	wire  [10:0]  exp_and;
	wire  exp_and_w;
	wire  [10:0]  exp_bus;
	wire  [10:0]  exp_or;
	wire  exp_or_w;
	wire  [10:0]  exponent_input;
	wire  guard_bit_w;
	wire  [52:0]  implied_mantissa_input;
	wire  infinity_input_w;
	wire  [32:0]  infinity_value_w;
	wire  int_or1_w;
	wire  int_or2_w;
	wire  [32:0]  integer_output;
	wire  [31:0]  integer_post_round;
	wire  [31:0]  integer_pre_round;
	wire  [32:0]  integer_result;
	wire  [31:0]  integer_rounded;
	wire  [31:0]  integer_rounded_tmp;
	wire  [31:0]  integer_tmp_output;
	wire  [15:0]  inv_add_1_adder1_w;
	wire  [15:0]  inv_add_1_adder2_w;
	wire  [31:0]  inv_integer;
	wire  [83:0]  lbarrel_shift_result_w;
	wire  [31:0]  lbarrel_shift_w;
	wire  lower_limit_selector;
	wire  lowest_integer_selector;
	wire  [31:0]  lowest_integer_value;
	wire  [25:0]  man_bus1;
	wire  [25:0]  man_bus2;
	wire  [25:0]  man_or1;
	wire  man_or1_w;
	wire  [25:0]  man_or2;
	wire  man_or2_w;
	wire  man_or_w;
	wire  [51:0]  mantissa_input;
	wire  max_shift_reg_w;
	wire  [6:0]  max_shift_w;
	wire  more_than_max_shift_w;
	wire  nan_input_w;
	wire  [32:0]  neg_infi_w;
	wire  [10:0]  padded_exponent_input;
	wire  [32:0]  pos_infi_w;
	wire  [6:0]  power2_value_w;
	wire  [32:0]  result_w;
	wire  round_bit_w;
	wire  sign_input;
	wire  sign_input_w;
	wire  [31:0]  signed_integer;
	wire  sticky_bit_w;
	wire  [50:0]  sticky_bus;
	wire  [50:0]  sticky_or;
	wire  [31:0]  unsigned_integer;
	wire  upper_limit_w;
	wire  zero_input_w;

	acl_fp_fptosi_double_altbarrel_shift_3tf   altbarrel_shift6
	( 
	.aclr(aclr),
	.clk_en(clk_en),
	.clock(clock),
	.data(barrel_mantissa_input),
	.distance(power2_value_reg),
	.result(wire_altbarrel_shift6_result));
	// synopsys translate_off
	initial
		added_power2_reg = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) added_power2_reg <= 7'b0;
		else if  (clk_en == 1'b1)   added_power2_reg <= wire_add_sub5_result;
	// synopsys translate_off
	initial
		below_lower_limit1_reg1 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) below_lower_limit1_reg1 <= 1'b0;
		else if  (clk_en == 1'b1)   below_lower_limit1_reg1 <= below_lower_limit1_w;
	// synopsys translate_off
	initial
		below_lower_limit1_reg2 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) below_lower_limit1_reg2 <= 1'b0;
		else if  (clk_en == 1'b1)   below_lower_limit1_reg2 <= below_lower_limit1_reg1;
	// synopsys translate_off
	initial
		below_lower_limit1_reg3 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) below_lower_limit1_reg3 <= 1'b0;
		else if  (clk_en == 1'b1)   below_lower_limit1_reg3 <= below_lower_limit1_reg2;
	// synopsys translate_off
	initial
		below_lower_limit2_reg1 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) below_lower_limit2_reg1 <= 1'b0;
		else if  (clk_en == 1'b1)   below_lower_limit2_reg1 <= below_lower_limit2_w;
	// synopsys translate_off
	initial
		below_lower_limit2_reg2 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) below_lower_limit2_reg2 <= 1'b0;
		else if  (clk_en == 1'b1)   below_lower_limit2_reg2 <= below_lower_limit2_reg1;
	// synopsys translate_off
	initial
		below_lower_limit2_reg3 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) below_lower_limit2_reg3 <= 1'b0;
		else if  (clk_en == 1'b1)   below_lower_limit2_reg3 <= below_lower_limit2_reg2;
	// synopsys translate_off
	initial
		below_lower_limit2_reg4 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) below_lower_limit2_reg4 <= 1'b0;
		else if  (clk_en == 1'b1)   below_lower_limit2_reg4 <= below_lower_limit2_reg3;
	// synopsys translate_off
	initial
		dataa_reg = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dataa_reg <= 64'b0;
		else if  (clk_en == 1'b1)   dataa_reg <= dataa;
	// synopsys translate_off
	initial
		equal_upper_limit_reg1 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) equal_upper_limit_reg1 <= 1'b0;
		else if  (clk_en == 1'b1)   equal_upper_limit_reg1 <= equal_upper_limit_w;
	// synopsys translate_off
	initial
		equal_upper_limit_reg2 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) equal_upper_limit_reg2 <= 1'b0;
		else if  (clk_en == 1'b1)   equal_upper_limit_reg2 <= equal_upper_limit_reg1;
	// synopsys translate_off
	initial
		equal_upper_limit_reg3 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) equal_upper_limit_reg3 <= 1'b0;
		else if  (clk_en == 1'b1)   equal_upper_limit_reg3 <= equal_upper_limit_reg2;
	// synopsys translate_off
	initial
		exceed_upper_limit_reg1 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) exceed_upper_limit_reg1 <= 1'b0;
		else if  (clk_en == 1'b1)   exceed_upper_limit_reg1 <= exceed_upper_limit_w;
	// synopsys translate_off
	initial
		exceed_upper_limit_reg2 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) exceed_upper_limit_reg2 <= 1'b0;
		else if  (clk_en == 1'b1)   exceed_upper_limit_reg2 <= exceed_upper_limit_reg1;
	// synopsys translate_off
	initial
		exceed_upper_limit_reg3 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) exceed_upper_limit_reg3 <= 1'b0;
		else if  (clk_en == 1'b1)   exceed_upper_limit_reg3 <= exceed_upper_limit_reg2;
	// synopsys translate_off
	initial
		exceed_upper_limit_reg4 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) exceed_upper_limit_reg4 <= 1'b0;
		else if  (clk_en == 1'b1)   exceed_upper_limit_reg4 <= upper_limit_w;
	// synopsys translate_off
	initial
		exp_and_reg1 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) exp_and_reg1 <= 1'b0;
		else if  (clk_en == 1'b1)   exp_and_reg1 <= exp_and_w;
	// synopsys translate_off
	initial
		exp_and_reg2 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) exp_and_reg2 <= 1'b0;
		else if  (clk_en == 1'b1)   exp_and_reg2 <= exp_and_reg1;
	// synopsys translate_off
	initial
		exp_and_reg3 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) exp_and_reg3 <= 1'b0;
		else if  (clk_en == 1'b1)   exp_and_reg3 <= exp_and_reg2;
	// synopsys translate_off
	initial
		exp_and_reg4 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) exp_and_reg4 <= 1'b0;
		else if  (clk_en == 1'b1)   exp_and_reg4 <= exp_and_reg3;
	// synopsys translate_off
	initial
		exp_or_reg1 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) exp_or_reg1 <= 1'b0;
		else if  (clk_en == 1'b1)   exp_or_reg1 <= exp_or_w;
	// synopsys translate_off
	initial
		exp_or_reg2 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) exp_or_reg2 <= 1'b0;
		else if  (clk_en == 1'b1)   exp_or_reg2 <= exp_or_reg1;
	// synopsys translate_off
	initial
		exp_or_reg3 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) exp_or_reg3 <= 1'b0;
		else if  (clk_en == 1'b1)   exp_or_reg3 <= exp_or_reg2;
	// synopsys translate_off
	initial
		exp_or_reg4 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) exp_or_reg4 <= 1'b0;
		else if  (clk_en == 1'b1)   exp_or_reg4 <= exp_or_reg3;
	// synopsys translate_off
	initial
		int_or1_reg1 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) int_or1_reg1 <= 1'b0;
		else if  (clk_en == 1'b1)   int_or1_reg1 <= int_or1_w;
	// synopsys translate_off
	initial
		int_or2_reg1 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) int_or2_reg1 <= 1'b0;
		else if  (clk_en == 1'b1)   int_or2_reg1 <= int_or2_w;
	// synopsys translate_off
	initial
		int_or_reg2 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) int_or_reg2 <= 1'b0;
		else if  (clk_en == 1'b1)   int_or_reg2 <= (int_or1_reg1 | int_or2_reg1);
	// synopsys translate_off
	initial
		int_or_reg3 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) int_or_reg3 <= 1'b0;
		else if  (clk_en == 1'b1)   int_or_reg3 <= int_or_reg2;
	// synopsys translate_off
	initial
		integer_result_reg = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) integer_result_reg <= 33'b0;
		else if  (clk_en == 1'b1)   integer_result_reg <= integer_result;
	// synopsys translate_off
	initial
		integer_rounded_reg = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) integer_rounded_reg <= 32'b0;
		else if  (clk_en == 1'b1)   integer_rounded_reg <= integer_rounded;
	// synopsys translate_off
	initial
		lowest_int_sel_reg = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) lowest_int_sel_reg <= 1'b0;
		else if  (clk_en == 1'b1)   lowest_int_sel_reg <= lowest_integer_selector;
	// synopsys translate_off
	initial
		man_or1_reg1 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) man_or1_reg1 <= 1'b0;
		else if  (clk_en == 1'b1)   man_or1_reg1 <= man_or1_w;
	// synopsys translate_off
	initial
		man_or2_reg1 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) man_or2_reg1 <= 1'b0;
		else if  (clk_en == 1'b1)   man_or2_reg1 <= man_or2_w;
	// synopsys translate_off
	initial
		man_or_reg2 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) man_or_reg2 <= 1'b0;
		else if  (clk_en == 1'b1)   man_or_reg2 <= man_or_w;
	// synopsys translate_off
	initial
		man_or_reg3 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) man_or_reg3 <= 1'b0;
		else if  (clk_en == 1'b1)   man_or_reg3 <= man_or_reg2;
	// synopsys translate_off
	initial
		man_or_reg4 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) man_or_reg4 <= 1'b0;
		else if  (clk_en == 1'b1)   man_or_reg4 <= man_or_reg3;
	// synopsys translate_off
	initial
		mantissa_input_reg = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) mantissa_input_reg <= 52'b0;
		else if  (clk_en == 1'b1)   mantissa_input_reg <= mantissa_input;
	// synopsys translate_off
	initial
		max_shift_exceeder_reg = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) max_shift_exceeder_reg <= 1'b0;
		else if  (clk_en == 1'b1)   max_shift_exceeder_reg <= more_than_max_shift_w;
	// synopsys translate_off
	initial
		max_shift_reg = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) max_shift_reg <= 1'b0;
		else if  (clk_en == 1'b1)   max_shift_reg <= wire_max_shift_compare_agb;
	// synopsys translate_off
	initial
		power2_value_reg = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) power2_value_reg <= 7'b0;
		else if  (clk_en == 1'b1)   power2_value_reg <= power2_value_w;
	// synopsys translate_off
	initial
		sign_input_reg1 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) sign_input_reg1 <= 1'b0;
		else if  (clk_en == 1'b1)   sign_input_reg1 <= sign_input;
	// synopsys translate_off
	initial
		sign_input_reg2 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) sign_input_reg2 <= 1'b0;
		else if  (clk_en == 1'b1)   sign_input_reg2 <= sign_input_reg1;
	// synopsys translate_off
	initial
		sign_input_reg3 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) sign_input_reg3 <= 1'b0;
		else if  (clk_en == 1'b1)   sign_input_reg3 <= sign_input_reg2;
	// synopsys translate_off
	initial
		sign_input_reg4 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) sign_input_reg4 <= 1'b0;
		else if  (clk_en == 1'b1)   sign_input_reg4 <= sign_input_reg3;
	lpm_add_sub   add_sub4
	( 
	.cout(),
	.dataa(exponent_input),
	.datab(bias_value_w),
	.overflow(),
	.result(wire_add_sub4_result)
	`ifndef FORMAL_VERIFICATION
	// synopsys translate_off
	`endif
	,
	.aclr(1'b0),
	.add_sub(1'b1),
	.cin(),
	.clken(1'b1),
	.clock(1'b0)
	`ifndef FORMAL_VERIFICATION
	// synopsys translate_on
	`endif
	);
	defparam
		add_sub4.lpm_direction = "SUB",
		add_sub4.lpm_width = 11,
		add_sub4.lpm_type = "lpm_add_sub",
		add_sub4.lpm_hint = "ONE_INPUT_IS_CONSTANT=YES";
	lpm_add_sub   add_sub5
	( 
	.cout(),
	.dataa(power2_value_reg),
	.datab(7'b0000001),
	.overflow(),
	.result(wire_add_sub5_result)
	`ifndef FORMAL_VERIFICATION
	// synopsys translate_off
	`endif
	,
	.aclr(1'b0),
	.add_sub(1'b1),
	.cin(),
	.clken(1'b1),
	.clock(1'b0)
	`ifndef FORMAL_VERIFICATION
	// synopsys translate_on
	`endif
	);
	defparam
		add_sub5.lpm_direction = "ADD",
		add_sub5.lpm_width = 7,
		add_sub5.lpm_type = "lpm_add_sub",
		add_sub5.lpm_hint = "ONE_INPUT_IS_CONSTANT=YES";
	lpm_add_sub   add_sub7
	( 
	.cout(wire_add_sub7_cout),
	.dataa(integer_pre_round),
	.datab(32'b00000000000000000000000000000001),
	.overflow(),
	.result(wire_add_sub7_result)
	`ifndef FORMAL_VERIFICATION
	// synopsys translate_off
	`endif
	,
	.aclr(1'b0),
	.add_sub(1'b1),
	.cin(),
	.clken(1'b1),
	.clock(1'b0)
	`ifndef FORMAL_VERIFICATION
	// synopsys translate_on
	`endif
	);
	defparam
		add_sub7.lpm_direction = "ADD",
		add_sub7.lpm_width = 32,
		add_sub7.lpm_type = "lpm_add_sub",
		add_sub7.lpm_hint = "ONE_INPUT_IS_CONSTANT=YES";
	lpm_add_sub   add_sub8
	( 
	.cout(wire_add_sub8_cout),
	.dataa(inv_integer[15:0]),
	.datab(16'b0000000000000001),
	.overflow(),
	.result(wire_add_sub8_result)
	`ifndef FORMAL_VERIFICATION
	// synopsys translate_off
	`endif
	,
	.aclr(1'b0),
	.add_sub(1'b1),
	.cin(),
	.clken(1'b1),
	.clock(1'b0)
	`ifndef FORMAL_VERIFICATION
	// synopsys translate_on
	`endif
	);
	defparam
		add_sub8.lpm_direction = "ADD",
		add_sub8.lpm_width = 16,
		add_sub8.lpm_type = "lpm_add_sub",
		add_sub8.lpm_hint = "ONE_INPUT_IS_CONSTANT=YES";
	lpm_add_sub   add_sub9
	( 
	.cout(),
	.dataa(inv_integer[31:16]),
	.datab(16'b0000000000000001),
	.overflow(),
	.result(wire_add_sub9_result)
	`ifndef FORMAL_VERIFICATION
	// synopsys translate_off
	`endif
	,
	.aclr(1'b0),
	.add_sub(1'b1),
	.cin(),
	.clken(1'b1),
	.clock(1'b0)
	`ifndef FORMAL_VERIFICATION
	// synopsys translate_on
	`endif
	);
	defparam
		add_sub9.lpm_direction = "ADD",
		add_sub9.lpm_width = 16,
		add_sub9.lpm_type = "lpm_add_sub",
		add_sub9.lpm_hint = "ONE_INPUT_IS_CONSTANT=YES";
	lpm_compare   cmpr1
	( 
	.aeb(wire_cmpr1_aeb),
	.agb(wire_cmpr1_agb),
	.ageb(),
	.alb(),
	.aleb(),
	.aneb(),
	.dataa(padded_exponent_input),
	.datab(const_bias_value_add_width_res_w)
	`ifndef FORMAL_VERIFICATION
	// synopsys translate_off
	`endif
	,
	.aclr(1'b0),
	.clken(1'b1),
	.clock(1'b0)
	`ifndef FORMAL_VERIFICATION
	// synopsys translate_on
	`endif
	);
	defparam
		cmpr1.lpm_representation = "UNSIGNED",
		cmpr1.lpm_width = 11,
		cmpr1.lpm_type = "lpm_compare";
	lpm_compare   cmpr2
	( 
	.aeb(wire_cmpr2_aeb),
	.agb(),
	.ageb(),
	.alb(),
	.aleb(),
	.aneb(),
	.dataa(exponent_input),
	.datab(bias_value_less_1_w)
	`ifndef FORMAL_VERIFICATION
	// synopsys translate_off
	`endif
	,
	.aclr(1'b0),
	.clken(1'b1),
	.clock(1'b0)
	`ifndef FORMAL_VERIFICATION
	// synopsys translate_on
	`endif
	);
	defparam
		cmpr2.lpm_representation = "UNSIGNED",
		cmpr2.lpm_width = 11,
		cmpr2.lpm_type = "lpm_compare";
	lpm_compare   cmpr3
	( 
	.aeb(),
	.agb(),
	.ageb(),
	.alb(wire_cmpr3_alb),
	.aleb(),
	.aneb(),
	.dataa(exponent_input),
	.datab(bias_value_w)
	`ifndef FORMAL_VERIFICATION
	// synopsys translate_off
	`endif
	,
	.aclr(1'b0),
	.clken(1'b1),
	.clock(1'b0)
	`ifndef FORMAL_VERIFICATION
	// synopsys translate_on
	`endif
	);
	defparam
		cmpr3.lpm_representation = "UNSIGNED",
		cmpr3.lpm_width = 11,
		cmpr3.lpm_type = "lpm_compare";
	lpm_compare   max_shift_compare
	( 
	.aeb(),
	.agb(wire_max_shift_compare_agb),
	.ageb(),
	.alb(),
	.aleb(),
	.aneb(),
	.dataa(added_power2_reg),
	.datab(max_shift_w)
	`ifndef FORMAL_VERIFICATION
	// synopsys translate_off
	`endif
	,
	.aclr(1'b0),
	.clken(1'b1),
	.clock(1'b0)
	`ifndef FORMAL_VERIFICATION
	// synopsys translate_on
	`endif
	);
	defparam
		max_shift_compare.lpm_representation = "UNSIGNED",
		max_shift_compare.lpm_width = 7,
		max_shift_compare.lpm_type = "lpm_compare";
	assign
		aclr = 1'b0,
		add_1_cout_w = ((wire_add_sub7_cout & add_1_w) & (~ sign_input_reg3)),
		add_1_w = ((((~ guard_bit_w) & round_bit_w) & sticky_bit_w) | (guard_bit_w & round_bit_w)),
		all_zeroes_w = {1'b0, {32{1'b0}}},
		barrel_mantissa_input = {barrel_zero_padding_w, implied_mantissa_input},
		barrel_zero_padding_w = {31{1'b0}},
		below_limit_exceeders = (((denormal_input_w | zero_input_w) | lower_limit_selector) | nan_input_w),
		below_limit_integer = (({33{(~ below_limit_exceeders)}} & integer_output) | ({33{below_limit_exceeders}} & all_zeroes_w)),
		below_lower_limit1_w = wire_cmpr2_aeb,
		below_lower_limit2_w = wire_cmpr3_alb,
		bias_value_less_1_w = 11'b01111111110,
		bias_value_w = 11'b01111111111,
		const_bias_value_add_width_res_w = 11'b10000011111,
		denormal_input_w = ((~ exp_or_reg4) & man_or_reg4),
		equal_upper_limit_w = wire_cmpr1_aeb,
		exceed_limit_exceeders = (((infinity_input_w | max_shift_exceeder_reg) | exceed_upper_limit_reg4) & (~ nan_input_w)),
		exceed_limit_integer = (({33{(~ exceed_limit_exceeders)}} & below_limit_integer) | ({33{exceed_limit_exceeders}} & infinity_value_w)),
		exceed_upper_limit_w = wire_cmpr1_agb,
		exp_and = {(exp_and[9] & exp_bus[10]), (exp_and[8] & exp_bus[9]), (exp_and[7] & exp_bus[8]), (exp_and[6] & exp_bus[7]), (exp_and[5] & exp_bus[6]), (exp_and[4] & exp_bus[5]), (exp_and[3] & exp_bus[4]), (exp_and[2] & exp_bus[3]), (exp_and[1] & exp_bus[2]), (exp_and[0] & exp_bus[1]), exp_bus[0]},
		exp_and_w = exp_and[10],
		exp_bus = exponent_input,
		exp_or = {(exp_or[9] | exp_bus[10]), (exp_or[8] | exp_bus[9]), (exp_or[7] | exp_bus[8]), (exp_or[6] | exp_bus[7]), (exp_or[5] | exp_bus[6]), (exp_or[4] | exp_bus[5]), (exp_or[3] | exp_bus[4]), (exp_or[2] | exp_bus[3]), (exp_or[1] | exp_bus[2]), (exp_or[0] | exp_bus[1]), exp_bus[0]},
		exp_or_w = exp_or[10],
		exponent_input = dataa_reg[62:52],
		guard_bit_w = wire_altbarrel_shift6_result[52],
		implied_mantissa_input = {1'b1, mantissa_input_reg},
		infinity_input_w = (exp_and_reg4 & (~ man_or_reg4)),
		infinity_value_w = (({33{(~ sign_input_w)}} & pos_infi_w) | ({33{sign_input_w}} & neg_infi_w)),
		int_or1_w = man_or2[0],
		int_or2_w = man_or1[20],
		integer_output = {sign_input_w, integer_tmp_output},
		integer_post_round = wire_add_sub7_result,
		integer_pre_round = lbarrel_shift_w,
		integer_result = exceed_limit_integer,
		integer_rounded = (({32{(~ lowest_integer_selector)}} & integer_rounded_tmp) | ({32{lowest_integer_selector}} & lowest_integer_value)),
		integer_rounded_tmp = (({32{(~ add_1_w)}} & integer_pre_round) | ({32{add_1_w}} & integer_post_round)),
		integer_tmp_output = (({32{(~ sign_input_w)}} & unsigned_integer) | ({32{sign_input_w}} & signed_integer)),
		inv_add_1_adder1_w = wire_add_sub8_result,
		inv_add_1_adder2_w = (({16{(~ wire_add_sub8_cout)}} & inv_integer[31:16]) | ({16{wire_add_sub8_cout}} & wire_add_sub9_result)),
		inv_integer = (~ integer_rounded_reg),
		lbarrel_shift_result_w = wire_altbarrel_shift6_result,
		lbarrel_shift_w = lbarrel_shift_result_w[83:52],
		lower_limit_selector = (((below_lower_limit2_reg4 & (~ zero_input_w)) & (~ denormal_input_w)) & (~ lowest_int_sel_reg)),
		lowest_integer_selector = (below_lower_limit1_reg3 & man_or_reg3),
		lowest_integer_value = {barrel_zero_padding_w, 1'b1},
		man_bus1 = mantissa_input[25:0],
		man_bus2 = mantissa_input[51:26],
		man_or1 = {man_bus1[25], (man_or1[25] | man_bus1[24]), (man_or1[24] | man_bus1[23]), (man_or1[23] | man_bus1[22]), (man_or1[22] | man_bus1[21]), (man_or1[21] | man_bus1[20]), (man_or1[20] | man_bus1[19]), (man_or1[19] | man_bus1[18]), (man_or1[18] | man_bus1[17]), (man_or1[17] | man_bus1[16]), (man_or1[16] | man_bus1[15]), (man_or1[15] | man_bus1[14]), (man_or1[14] | man_bus1[13]), (man_or1[13] | man_bus1[12]), (man_or1[12] | man_bus1[11]), (man_or1[11] | man_bus1[10]), (man_or1[10] | man_bus1[9]), (man_or1[9] | man_bus1[8]), (man_or1[8] | man_bus1[7]), (man_or1[7] | man_bus1[6]), (man_or1[6] | man_bus1[5]), (man_or1[5] | man_bus1[4]), (man_or1[4] | man_bus1[3]), (man_or1[3] | man_bus1[2]), (man_or1[2] | man_bus1[1]), (man_or1[1] | man_bus1[0])},
		man_or1_w = man_or1[0],
		man_or2 = {man_bus2[25], (man_or2[25] | man_bus2[24]), (man_or2[24] | man_bus2[23]), (man_or2[23] | man_bus2[22]), (man_or2[22] | man_bus2[21]), (man_or2[21] | man_bus2[20]), (man_or2[20] | man_bus2[19]), (man_or2[19] | man_bus2[18]), (man_or2[18] | man_bus2[17]), (man_or2[17] | man_bus2[16]), (man_or2[16] | man_bus2[15]), (man_or2[15] | man_bus2[14]), (man_or2[14] | man_bus2[13]), (man_or2[13] | man_bus2[12]), (man_or2[12] | man_bus2[11]), (man_or2[11] | man_bus2[10]), (man_or2[10] | man_bus2[9]), (man_or2[9] | man_bus2[8]), (man_or2[8] | man_bus2[7]), (man_or2[7] | man_bus2[6]), (man_or2[6] | man_bus2[5]), (man_or2[5] | man_bus2[4]), (man_or2[4] | man_bus2[3]), (man_or2[3] | man_bus2[2]), (man_or2[2] | man_bus2[1]), (man_or2[1] | man_bus2[0])},
		man_or2_w = man_or2[0],
		man_or_w = (man_or1_reg1 | man_or2_reg1),
		mantissa_input = dataa_reg[51:0],
		max_shift_reg_w = max_shift_reg,
		max_shift_w = 7'b0011111,
		more_than_max_shift_w = ((max_shift_reg_w & add_1_cout_w) & (~ below_lower_limit2_reg3)),
		nan_input_w = (exp_and_reg4 & man_or_reg4),
		neg_infi_w = {1'b1, {32{1'b0}}},
		padded_exponent_input = exponent_input,
		pos_infi_w = {1'b0, {32{1'b1}}},
		power2_value_w = wire_add_sub4_result[6:0],
		result = result_w,
		result_w = integer_result_reg,
		round_bit_w = wire_altbarrel_shift6_result[51],
		sign_input = dataa_reg[63],
		sign_input_w = sign_input_reg4,
		signed_integer = {inv_add_1_adder2_w, inv_add_1_adder1_w},
		sticky_bit_w = sticky_or[50],
		sticky_bus = wire_altbarrel_shift6_result[50:0],
		sticky_or = {(sticky_or[49] | sticky_bus[50]), (sticky_or[48] | sticky_bus[49]), (sticky_or[47] | sticky_bus[48]), (sticky_or[46] | sticky_bus[47]), (sticky_or[45] | sticky_bus[46]), (sticky_or[44] | sticky_bus[45]), (sticky_or[43] | sticky_bus[44]), (sticky_or[42] | sticky_bus[43]), (sticky_or[41] | sticky_bus[42]), (sticky_or[40] | sticky_bus[41]), (sticky_or[39] | sticky_bus[40]), (sticky_or[38] | sticky_bus[39]), (sticky_or[37] | sticky_bus[38]), (sticky_or[36] | sticky_bus[37]), (sticky_or[35] | sticky_bus[36]), (sticky_or[34] | sticky_bus[35]), (sticky_or[33] | sticky_bus[34]), (sticky_or[32] | sticky_bus[33]), (sticky_or[31] | sticky_bus[32]), (sticky_or[30] | sticky_bus[31]), (sticky_or[29] | sticky_bus[30]), (sticky_or[28] | sticky_bus[29]), (sticky_or[27] | sticky_bus[28]), (sticky_or[26] | sticky_bus[27]), (sticky_or[25] | sticky_bus[26]), (sticky_or[24] | sticky_bus[25]), (sticky_or[23] | sticky_bus[24]), (sticky_or[22] | sticky_bus[23]), (sticky_or[21] | sticky_bus[22]), (sticky_or[20] | sticky_bus[21]), (sticky_or[19] | sticky_bus[20]), (sticky_or[18] | sticky_bus[19]), (sticky_or[17] | sticky_bus[18]), (sticky_or[16] | sticky_bus[17]), (sticky_or[15] | sticky_bus[16]), (sticky_or[14] | sticky_bus[15]), (sticky_or[13] | sticky_bus[14]), (sticky_or[12] | sticky_bus[13]), (sticky_or[11] | sticky_bus[12]), (sticky_or[10] | sticky_bus[11]), (sticky_or[9] | sticky_bus[10]), (sticky_or[8] | sticky_bus[9]), (sticky_or[7] | sticky_bus[8]), (sticky_or[6] | sticky_bus[7]), (sticky_or[5] | sticky_bus[6]), (sticky_or[4] | sticky_bus[5]), (sticky_or[3] | sticky_bus[4]), (sticky_or[2] | sticky_bus[3]), (sticky_or[1] | sticky_bus[2]), (sticky_or[0] | sticky_bus[1]), sticky_bus[0]},
		unsigned_integer = integer_rounded_reg,
		upper_limit_w = (((~ sign_input_reg3) & (exceed_upper_limit_reg3 | equal_upper_limit_reg3)) | (sign_input_reg3 & (exceed_upper_limit_reg3 | (equal_upper_limit_reg3 & (int_or_reg3 | add_1_w))))),
		zero_input_w = ((~ exp_or_reg4) & (~ man_or_reg4));
endmodule //acl_fp_fptosi_double_altfp_convert_hkn
//VALID FILE


// synopsys translate_off
`timescale 1 ps / 1 ps
// synopsys translate_on
module acl_fp_fptosi_double (
	enable,
	clock,
	dataa,
	result);

	input	  enable;
	input	  clock;
	input	[63:0]  dataa;
	output	[32:0]  result;

	wire [32:0] sub_wire0;
	wire [32:0] result = sub_wire0[32:0];

	acl_fp_fptosi_double_altfp_convert_hkn	acl_fp_fptosi_double_altfp_convert_hkn_component (
				.clk_en (enable),
				.clock (clock),
				.dataa (dataa),
				.result (sub_wire0));

endmodule

// ============================================================
// CNX file retrieval info
// ============================================================
// Retrieval info: LIBRARY: altera_mf altera_mf.altera_mf_components.all
// Retrieval info: PRIVATE: INTENDED_DEVICE_FAMILY STRING "Stratix IV"
// Retrieval info: CONSTANT: INTENDED_DEVICE_FAMILY STRING "Stratix IV"
// Retrieval info: CONSTANT: LPM_HINT STRING "UNUSED"
// Retrieval info: CONSTANT: LPM_TYPE STRING "altfp_convert"
// Retrieval info: CONSTANT: OPERATION STRING "FLOAT2INT"
// Retrieval info: CONSTANT: ROUNDING STRING "TO_NEAREST"
// Retrieval info: CONSTANT: WIDTH_DATA NUMERIC "64"
// Retrieval info: CONSTANT: WIDTH_EXP_INPUT NUMERIC "11"
// Retrieval info: CONSTANT: WIDTH_EXP_OUTPUT NUMERIC "8"
// Retrieval info: CONSTANT: WIDTH_INT NUMERIC "33"
// Retrieval info: CONSTANT: WIDTH_MAN_INPUT NUMERIC "52"
// Retrieval info: CONSTANT: WIDTH_MAN_OUTPUT NUMERIC "23"
// Retrieval info: CONSTANT: WIDTH_RESULT NUMERIC "33"
// Retrieval info: USED_PORT: clk_en 0 0 0 0 INPUT NODEFVAL "clk_en"
// Retrieval info: CONNECT: @clk_en 0 0 0 0 clk_en 0 0 0 0
// Retrieval info: USED_PORT: clock 0 0 0 0 INPUT NODEFVAL "clock"
// Retrieval info: CONNECT: @clock 0 0 0 0 clock 0 0 0 0
// Retrieval info: USED_PORT: dataa 0 0 64 0 INPUT NODEFVAL "dataa[63..0]"
// Retrieval info: CONNECT: @dataa 0 0 64 0 dataa 0 0 64 0
// Retrieval info: USED_PORT: result 0 0 33 0 OUTPUT NODEFVAL "result[32..0]"
// Retrieval info: CONNECT: result 0 0 33 0 @result 0 0 33 0
// Retrieval info: GEN_FILE: TYPE_NORMAL acl_fp_fptosi_double.v TRUE FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL acl_fp_fptosi_double.qip TRUE FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL acl_fp_fptosi_double.bsf FALSE TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL acl_fp_fptosi_double_inst.v FALSE TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL acl_fp_fptosi_double_bb.v FALSE TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL acl_fp_fptosi_double.inc FALSE TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL acl_fp_fptosi_double.cmp FALSE TRUE
// Retrieval info: LIB_FILE: lpm
