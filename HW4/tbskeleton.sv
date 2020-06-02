// Name: Victor Garcia Flores
// Course: ECE 474 - VLSI
// Submission Date: 05/07/2020
// File: tbskeleton.sv
// Dependency: GCD.sv and vsim.do
// Description: This program is tasked with setting the conntrol signals
//              and testing the GCD module.


`timescale 1ps/1ps

module tb; //testbench module

integer input_file, output_file, in, out;
integer i;

parameter CYCLE = 1000;

// declare signals clk, reset_n, start, done
reg clk, reset_n, start, done;


//declare input numbers a_in and b_in of appropriate width, and output number result
reg [31:0] a_in, b_in;
reg [31:0] result;

//create a clock clk with period CYCLE
initial begin
  clk = 0'b1;
  forever #(500) clk = ~clk;
end

//release of reset_n relative to two clocks
initial begin
    input_file  = $fopen("input_data", "rb");
    if (input_file==0) begin
      $display("ERROR : CAN NOT OPEN input_file");
    end
    output_file = $fopen("output_data", "wb");
    if (output_file==0) begin
      $display("ERROR : CAN NOT OPEN output_file");
    end

	// initalize a_in, b_in to 'x, initialize start to 1
  a_in = 'bX;
	b_in = 'bX;
	start = 1'b0;

	//start the design in reset mode then de-assert the reset after 1.5 clock cycles
	reset_n = 0;
	#(1500);
  reset_n = 1;
end

//instantiate the gcd unit and connect its ports
gcd testGCD(.a_in(a_in), .b_in(b_in), .start(start), .reset_n(reset_n), .done(done), .clk(clk), .result(result));

initial begin

  #(CYCLE*4);  //delay after reset
  while(! $feof(input_file)) begin
   $fscanf(input_file,"%d %d", a_in, b_in);
   start=1'b1;
   #(CYCLE);
   start=1'b0;
   while(done != 1'b1) #(CYCLE);
   // display the current time, the values of the input numbers and the result
   $display("t = %d, in_a = %d, in_b = %d, result = %d", $time, a_in, b_in, result);
   #(CYCLE*2); //2 cycle delay between trials
  end
$stop;
$fclose(input_file);
end

endmodule
