module no_glitch(
  input go, ws, clk, reset_n,
  output rd, ds);

  //enumerated states
  enum reg [3:0]{
  IDLE = 4'b00_00,
  READ = 4'b01_01,
  DLY  = 4'b01_10,
  DONE = 4'b10_11} no_glitch_ps, no_glitch_ns;

  always_ff @(posedge clk, negedge reset_n)
  begin
    if (!reset_n)  no_glitch_ps <= IDLE;
    else no_glitch_ps <= no_glitch_ns;
  end

  always_comb
  begin
    unique case (no_glitch_ps)
      IDLE: begin
        if(go) no_glitch_ns = READ;
        else no_glitch_ns = IDLE;
      end
      READ: no_glitch_ns = DLY;
      DLY: begin
        if(!ws) no_glitch_ns = DONE;
        else no_glitch_ns = READ;
      end
      DONE: no_glitch_ns = IDLE;
    endcase
  end
  assign {ds,rd} = no_glitch_ps[3:2];
endmodule
