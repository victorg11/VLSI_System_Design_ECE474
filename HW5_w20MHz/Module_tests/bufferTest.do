add wave sim:/buffer/*
force -freeze sim:/buffer/clk_50 1 0, 0 {10 ns} -r 20
force reset_n 0
force write_en 0
force packet_in 8'h7C
run 40 ns

force reset_n 1
run 40 ns

force packet_in 8'h7a
force write_en 1
run 40 ns

run 60 ns
