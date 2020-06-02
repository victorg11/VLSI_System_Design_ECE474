`timescale 1ns/1ns
`include "Part_2/covergroup.sv"
`include "input_randomizer.sv"
module tb; //testbench module

integer input_file, output_file, in, out;
integer i;

parameter CYCLE = 100;

reg clk, reset_n;
reg start, done;
reg [31:0] a_in, b_in;
reg [31:0] result;

reg [31:0] randA, randB; //Randomized values (PART 5)
reg [32:0] sum; //used to meet random number generation (a+b)

//instantiate randomizer class
input_data input_data0 = new;

//clock generation for write clock
initial begin
  clk <= 0;
  forever #(CYCLE/2) clk = ~clk;
end

//release of reset_n relative to two clocks
initial begin
    input_file  = $fopen("input_data", "rb");
    if (input_file==0) begin
      $display("ERROR : CAN NOT OPEN input_file");
    end

    output_file = $fopen("output_data", "w");
    if (output_file==0) begin
      $display("ERROR : CAN NOT OPEN output_file");
    end

    a_in='x;
    b_in='x;
    start=1'b0;
    reset_n <= 0;
    #(CYCLE * 1.5) reset_n = 1'b1; //reset for 1.5 clock cycles
end

cg_FSM cg_FSM0 = new; //Part 2 instance 1
cg_out cg_out0 = new; //Part 2 instance 2
cg_FSMtrans cg_FSMtrans0 = new; //Part 2 instance 3

gcd gcd_0(.*); //instantiate the gcd unit

initial begin

  #(CYCLE*4);  //delay after reset

  // ------------------------- PART 1 - 4 ------------------------- //
  //DESCRIPTION: this reads input data from file and computes GCD

  while(! $feof(input_file)) begin
   $fscanf(input_file,"%d %d", a_in, b_in);
   start=1'b1;
   #(CYCLE);
   start=1'b0;
   while(done != 1'b1) #(CYCLE);
   $display ("a_in=%d   b_in=%d   result=%d", a_in, b_in, result);
   #(CYCLE*2); //2 cycle delay between trials
  end
  $fclose(input_file);
  $stop;


  // ------------------------- PART 5 (randomizer) ------------------------- //
  //DESCRIPTION: this randomizes numbers with given constraints and finds GCD

  // for(int i=0;i<10;i++)begin //generage 10 random numbers
  //   //generate 32-bit random numbers (unbounded & unsigned)
  //   if(input_data0.randomize() == 1)begin
  //     //Assign random inputs
  //     a_in = input_data0.dataA;
  //     b_in = input_data0.dataB;
  //   end
  //   else begin
  //     $display("Randomization failed");
  //   end
  //
  //   start=1'b1;
  //   #(CYCLE);
  //   start=1'b0;
  //
  //   while(done != 1'b1) #(CYCLE);
  //   // display the current time, the values of the input numbers and the result
  //   $display("t = %d, in_a = %d, in_b = %d, result = %d", $time, a_in, b_in, result);
  //
  //   #(CYCLE*2); //2 cycle delay between trials
  // end
  // $fclose(output_file);
  // $stop;

end

endmodule
