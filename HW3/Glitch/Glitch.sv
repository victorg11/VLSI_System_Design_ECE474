module glitch(
  input go, ws, clk, reset_n,
  output logic rd, ds);

  //enumerated states
  enum reg [1:0]{
  IDLE = 2'b00,
  READ = 2'b01,
  DLY  = 2'b10,
  DONE = 2'b11} glitch_ps, glitch_ns;

  always_ff @(posedge clk, negedge reset_n)
  begin
    if (!reset_n)  glitch_ps <= IDLE;
    else glitch_ps <= glitch_ns;
  end

  always_comb
  begin
    rd = 1'b0;  //default state
    ds = 1'b0;  //default state
    unique case (glitch_ps)
      IDLE: begin
        if(go) glitch_ns = READ;
        else glitch_ns = IDLE;
      end
      READ: begin
        rd=1'b1;
        ds = 1'b0;
        glitch_ns = DLY;
      end
      DLY: begin
        rd=1'b1;
        ds = 1'b0;
        if(!ws) glitch_ns = DONE;
        else glitch_ns = READ;
      end
      DONE: begin
        ds=1'b1;
        rd = 1'b0;
        glitch_ns = IDLE;
      end
    endcase
  end
endmodule
