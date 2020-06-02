// Name: Victor Garcia Flores
// Course: ECE 474 - VLSI
// Submission Date: 05/07/2020
// File: GCD.sv
// Dependency: tbskeleton.sv and vsim.do
// Description: This program is tasked with determining the greatest
//              common denominator between two numbers.
module gcd(
  input [31:0] a_in, //operand a
  input [31:0] b_in, //operand b
  input start, //validates the input data
  input reset_n, //reset
  input clk, //clock
  output reg [31:0] result, //output of GCD engine
  output reg done); //validates output value

  //States
  enum reg [4:0]{
    IDLE = 5'b00001,     // Reads in values, but waits for start to begin calc.
    READ = 5'b00010,     // used for comparisons
    A_BIGGER = 5'b00100, // used for A - B
    B_BIGGER = 5'b01000, // used for B - A
    DONE = 5'b10000} gcd_ns, gcd_ps; // Done is used for flag and setting result

  reg [31:0] reg_A, reg_B, temp_result;

  //Next State and Present State
  always_ff @(posedge clk, negedge reset_n) begin
    if(!reset_n)  gcd_ps <= IDLE;
    else gcd_ps <= gcd_ns;
  end

  //State Operations
  always_comb begin
    gcd_ns = IDLE;//default state
    case (gcd_ps)
      IDLE: begin
        if(start) begin
          gcd_ns = READ;
        end
        else begin
          gcd_ns = IDLE;
        end
      end
      READ: begin
        if(reg_B > reg_A)begin
          gcd_ns = B_BIGGER;
        end

        else if(reg_B < reg_A)begin
          gcd_ns = A_BIGGER;
        end
        else gcd_ns = DONE;
      end
      A_BIGGER: begin
        gcd_ns = READ;
      end
      B_BIGGER: begin
        gcd_ns = READ;
      end
      DONE: begin
        gcd_ns = IDLE;
      end
    endcase
  end

  //NOTE: HW5 was giving me latches, so I changed the always comb to always_ff
  always_ff @ (posedge clk) begin
    case (gcd_ps)
      IDLE: begin
        if(start) begin //read in values when we're at start
          reg_A <= a_in;
          reg_B <= b_in;
          temp_result <= 0;
        end
        else begin
          reg_A <= reg_A;
          reg_B <= reg_B;
        end
        done <= 0; //Since we're in idle, "done" should be zero
      end
      A_BIGGER: begin
        reg_A <= reg_A - reg_B; //reg_A = reg_A  - reg_B
      end
      B_BIGGER: begin
        reg_B <= reg_B - reg_A; //reg_B = reg_B  - reg_A
      end
      DONE: begin
        temp_result <= reg_A; // reg_A = reg_B
        done <= 1;
      end
    endcase
  end


  assign result = temp_result;

endmodule


// Mental note:
// - First caclulation finishes at 151000 ps mark
// - Second caclulation finishes at 1552000 ps mark
// - Third caclulation finishes at 2139023 ps mark
// - Fourth caclulation finishes at 2270000 ps mark
// - Fifth caclulation finishes at 3621010 ps mark
// - Sixth caclulation finishes at 3752000 ps mark
// - Seventh caclulation finishes at 3760996 ps mark
// - Eight caclulation finishes at 3770000 ps mark
// - Ninth caclulation finishes at 3795009 ps mark
// - Tenth caclulation finishes at 3822000 ps mark
// - Elevelth/Last caclulation finishes at 4992000 ps mark

// NOTE: These are estimations base on timing diagram
