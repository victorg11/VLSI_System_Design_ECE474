add wave sim:/addresser/*
force -freeze sim:/addresser/clk_2 1 0, 0 {250 ns} -r 500

force reset_n 0
force average_done 0
run 500 ns

run 500 ns
run 500 ns

force reset_n 1
run 500
run 500
force average_done 1
run 500
run 500

force average_done 0
run 1000 ns

force average_done 1
run 361239002
