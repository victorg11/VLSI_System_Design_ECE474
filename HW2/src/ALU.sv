module alu(
  input [7:0] in_a,           //input a
  input [7:0] in_b,           //input b
  input [3:0] opcode,         //opcode input
  output reg [7:0] alu_out,   //alu output
  output reg alu_zero,  //logic '1' when alu_output [7:0] is
                              // all zeros
  output reg      alu_carry  //indicates a carry out from ALU
  );

  // opcode parameters
  parameter c_add = 4'h1;
  parameter c_sub = 4'h2;
  parameter c_inc = 4'h3;
  parameter c_dec= 4'h4;
  parameter c_or = 4'h5;
  parameter c_and = 4'h6;
  parameter c_xor = 4'h7;
  parameter c_shr = 4'h8;
  parameter c_shl = 4'h9;
  parameter c_onescomp = 4'hA;
  parameter c_twoscomp = 4'hB;

  reg [8:0] temp; //temporary arithmetic variable
  reg zero;

  always @(opcode, in_a, in_b)
  begin
    case(opcode)
      c_add:
        temp = in_a + in_b;
      c_sub:
        temp = in_a - in_b;
      c_inc:
        temp = in_a + 1;
      c_dec:
        temp = in_a - 1;
      c_or:
        temp[7:0] = in_a | in_b;
      c_and:
        temp[7:0] = in_a & in_b;
      c_xor:
        temp[7:0] = in_a ^ in_b;
      c_shr:
        temp[7:0] = (in_a >> 1);
      c_shl:
        temp[7:0] = (in_a << 1);
      c_onescomp:
        temp[7:0] = ~(in_a);
      c_twoscomp:
        temp = ~(in_a) + 1;
      default:
        temp = 9'bXXXXXXXXX; //makes the arithmetic zero by default
    endcase
  end
  //NOTE: non-arithmetic functions don't use the 9th carry bit. Their range is [7:0] instead of [8:0].
  always @(*)
  begin
    if(temp[7:0]==0) alu_zero = 1;
    else if(temp[7:0]==8'h?x || temp[7:0]==8'hX?) alu_zero = 1'bX;
    else alu_zero = 0;
  end

  assign alu_out = temp[7:0];
  assign alu_carry = temp[8]; //assign {alu_carry, sum} = in_a + in_b didn't work for some reason
  //assign alu_zero = ;
endmodule
