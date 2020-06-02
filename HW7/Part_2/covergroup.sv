// ---------------------- PART 4 EXPLANATION --------------------------//
// There are quite a few cross conditions between ns and ps
// that will not be met. The most obvious ones that will not be met is when
// ns = ps; this is impossible with the state machine. So, these BINS
// are ruled out:
// -> <[TEST],[TEST]>
// -> <[SUBT],[SUBT]>
// -> <[SWAP],[SWAP]>
// NOTE: The situation where both are done is met due to configuration upon reset

// The remaining crossed bins that are unreachable are the ones where we move
// against the direction of a state transition, or when there is a non-existant
// state transition. These are the ones not met due to this.
// -> <[SWAP],[TEST]>
// -> <[SUBT],[SWAP]>
// -> <[DONE],[SWAP]>
// -> <[DONE],[SUBT]>

// The following CAN be reached, but can only be accomplished by applying the
// reset when in a certain current state:
// -> <[SWAP],[DONE]>
// -> <[SUBT],[DONE]>

covergroup cg_FSM @(posedge tb.clk);
  cp_ps: coverpoint tb.gcd_0.gcd_ctrl_0.ps;
  cp_ns: coverpoint tb.gcd_0.gcd_ctrl_0.ns;
  //cp_both: cross cp_ps, cp_ns; //Comment for Part 4 to get 100% coverage
endgroup

// -------------------------------------------------------//
covergroup cg_out @(posedge tb.clk);
  cp_result: coverpoint tb.gcd_0.result{
    bins rang1 = {[0:500]};
    bins rang2 = {[1000:2000]};
    bins rang3 = {[7000:8000]};
    bins rang4 = {5000};
  }
endgroup
// -------------------------------------------------------//
covergroup cg_FSMtrans @(posedge tb.clk);
  cp_trans: coverpoint tb.gcd_0.gcd_ctrl_0.ps{
    illegal_bins bad_trans = (2'h3 => 2'h1);
  }
endgroup
