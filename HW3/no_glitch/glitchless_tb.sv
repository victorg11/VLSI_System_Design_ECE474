

`timescale 1ps/1ps
module glitchless_tb;
  reg go, ws, clk, reset_n, rd, ds;
  no_glitch TestGlitchy(.go(go), .ws(ws), .clk(clk), .reset_n(reset_n), .rd(rd), .ds(ds));
  parameter CYCLE = 1;

  //creating clock
  initial begin
    clk = 0'b1;
    forever #(500) clk = ~clk;
  end

  //starting conditions
  initial begin
    go = 0;
    ws = 0;
    reset_n = 0;
  end

  initial begin
    #(1050)
    reset_n = 1;
  end

  initial begin
    if(!reset_n) begin //Once the reset goes high
    	#(2050);//wait two clk cycles
      go=1;//then set go
      #(1000);//wait one more clk CYCLE
      go=0;//set go to zero
      ws=1;//set ws high
    end
  end

endmodule
                                                                                                                                       
