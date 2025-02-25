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
    


module acl_fp_custom_add_double_hc (
	clock,
  resetn,
	dataa,
	datab,
	result,
  valid_in,
  valid_out,
  stall_in,
  stall_out);

	input	  clock, resetn;
	input	[63:0]  dataa;
	input	[63:0]  datab;
	output [63:0]  result;
	input	 valid_in, stall_in;
	output valid_out, stall_out;
  
  // Latency 10
  acl_fp_custom_add_core_double core(
    .clock(clock),
    .resetn(resetn),
    .dataa(dataa),
    .datab(datab),
    .result(result),
    .valid_in(valid_in),
    .valid_out(valid_out),
    .stall_in(stall_in),
    .stall_out(stall_out),
    .enable());
	defparam core.HIGH_CAPACITY = 1;
	defparam core.FLUSH_DENORMS = 0;
	defparam core.HIGH_LATENCY = 1;
	defparam core.ROUNDING_MODE = 0;

endmodule
