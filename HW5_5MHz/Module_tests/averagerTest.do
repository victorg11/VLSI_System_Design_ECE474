add wave sim:/averager/*
force -freeze sim:/averager/clk_2 1 0, 0 {250 ns} -r 500

force reset_n 0
force buffer_data 32'h02020202
force find_average 0

run 1000 ns

force reset_n 1
run 1000 ns

force find_average 1
run 1000 ns
run 1000 ns

force find_average 0
run 1000 ns
