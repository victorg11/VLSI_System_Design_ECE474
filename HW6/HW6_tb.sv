// Name: Victor Garcia Flores
// Course: ECE 474 - VLSI
// Submission Date: 05/07/2020
// File: tbskeleton.sv
// Dependency: GCD.sv and vsim.do
// Description: This program is tasked with setting the conntrol signals
//              and testing the GCD module.


`timescale 1ps/1ps
`include "input_randomizer.sv"

module tb; //testbench module


//input_file, output_data, in, out: Part 2
//output_file_2: Part 3
//output_file_3: Part 4
integer input_file, output_file, in, out, output_file_2, output_file_3;

integer i;

parameter CYCLE = 1000;

// declare signals clk, reset_n, start, done
reg clk, reset_n, start, done;


//declare input numbers a_in and b_in of appropriate width, generated randomized values, and output number result
reg [31:0] a_in, b_in; //GCD Inputs
reg [31:0] randA, randB; //Randomized values (PART 3)
reg [31:0] result; //GCD output
reg [31:0] behavioral_result; //Behavioral GCD result
reg [31:0] bhGCD_inA, bhGCD_inB; //Behavioral GCD inputs
reg [31:0] beh_regA, beh_regB; //Behavioral GCD temporart reg (used for arithmetic)

//create a clock clk with period CYCLE
initial begin
  clk = 0'b1;
  forever #(500) clk = ~clk;
end

//release of reset_n relative to two clocks
initial begin
  //------------ Part 2 Files ------------//
  input_file  = $fopen("input_data", "rb");
  if (input_file==0) begin
    $display("ERROR : CAN NOT OPEN input_file");
  end
  output_file = $fopen("output_data", "wb");
  if (output_file==0) begin
    $display("ERROR : CAN NOT OPEN output_file");
  end

  //------------ Part 3 Input File ------------//
  //open the file we use to write our new values
  output_file_2  = $fopen("Part_3/output_data_pt3", "w");
  if (output_file_2==0) begin
    $error("ERROR : CAN NOT OPEN input_file");
  end

  //------------ Part 4 Output File ------------//
  //open the file we use to write our new values
  output_file_3  = $fopen("Part_4/comparison.rpt", "w");
  if (output_file_2==0) begin
    $error("ERROR : CAN NOT OPEN input_file");
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

  // ------------------------- PART 2 ------------------------- //
  // while(! $feof(input_file)) begin
  //  $fscanf(input_file,"%d %d", a_in, b_in);
  //  start=1'b1;
  //  #(CYCLE);
  //  start=1'b0;
  //  while(done != 1'b1) #(CYCLE);
  //  // display the current time, the values of the input numbers and the result
  //  $display("t = %d, in_a = %d, in_b = %d, result = %d", $time, a_in, b_in, result);
  //  #(CYCLE*2); //2 cycle delay between trials
  // end
  // $stop;
  // $fclose(input_file);

  // ------------------------- PART 3 ------------------------- //
  //randomize 100x to create values
  for(int i=0;i<100;i++)begin
    //generate 32-bit random numbers (unbounded & unsigned)
    randA = $urandom();
    randB = $urandom();

    //Assign random inputs
    a_in = randA;
    b_in = randB;

    start=1'b1;
    #(CYCLE);
    start=1'b0;

    while(done != 1'b1) #(CYCLE);
    // display the current time, the values of the input numbers and the result
    $display("t = %d, in_a = %d, in_b = %d, result = %d", $time, a_in, b_in, result);

    //write values to output file in folder named Part_3
    $fwrite(output_file_2,"%d %d %d\n", a_in, b_in, result);

    #(CYCLE*2); //2 cycle delay between trials
  end
  $fclose(input_file);
  $fclose(output_file_2);
  $stop;


  // ------------------------- PART 4 ------------------------- //
  // while(! $feof(input_file)) begin
  //  $fscanf(input_file,"%d %d", a_in, b_in); //Input for GCD module
  //
  //  //possible solution
  //  bhGCD_inA = a_in;
  //  bhGCD_inB = b_in;
  //  beh_regA = bhGCD_inA; //register A used to perform arithmetic
  //  beh_regB = bhGCD_inB; //register B used to perform arithmetic
  //
  //  //Perform behavioral calculation
  //  while(beh_regA != beh_regB) begin
  //    if(beh_regA > beh_regB) begin
  //      beh_regA -= beh_regB;
  //    end
  //    else begin
  //       beh_regB -= beh_regA;
  //    end
  //  end
  //  behavioral_result = beh_regA;
  //
  //  start=1'b1;
  //  #(CYCLE);
  //  start=1'b0;
  //
  // //display behavioral values (commented to make it optional)
  // //$display("t = %d, bhGCD_inA = %d, bhGCD_inB = %d, result = %d", $time, bhGCD_inA, bhGCD_inB, behavioral_result);
  //
  //  //GCD Module
  //  while(done != 1'b1) #(CYCLE);
  //
  //  // display the current time, the values of the input numbers and the result of GCD module
  //  $display("t = %d, in_a = %d, in_b = %d, result = %d", $time, a_in, b_in, result);
  //
  //  //Check if outputs for behavioral model and GCD module match and write to file
  //  if(result == behavioral_result) begin
  //    $fwrite(output_file_3,"%d %d MATCH\n", a_in, b_in);
  //  end
  //  else begin
  //    $fwrite(output_file_3,"%d %d GCD: %d, Behavioral %d \n",a_in,b_in,result, behavioral_result);
  //  end
  //
  //  #(CYCLE*2); //2 cycle delay between trials
  // end
  //
  // $fclose(output_file_3);
  // $stop;
  // $fclose(input_file);

end

endmodule
