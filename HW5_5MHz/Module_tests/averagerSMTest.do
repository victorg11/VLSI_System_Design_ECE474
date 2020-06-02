add wave sim:/averager_SM/*
force -freeze sim:/averager_SM/clk_2 1 0, 0 {250 ns} -r 500

force reset_n 0
force buffer_full 0
run 1000 ns

force reset_n 1
run 500 ns

force buffer_full 1
run 1000 ns

force buffer_full 0
run 1000 ns
