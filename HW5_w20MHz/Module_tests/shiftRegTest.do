add wave -position insertpoint  \
sim:/shiftreg/clk_50
force -freeze sim:/shiftreg/clk_50 1 0, 0 {10 ns} -r 20
add wave -position insertpoint  \
sim:/shiftreg/serial_data
add wave -position insertpoint  \
sim:/shiftreg/reset_n \
sim:/shiftreg/full_byte \
sim:/shiftreg/byte_complete \
sim:/shiftreg/out \
sim:/shiftreg/cnt
add wave -position insertpoint  \
sim:/shiftreg/data_en


force reset_n 0
force data_en 0
force serial_data 0
run 20 ns

force reset_n 1
force data_en 1
force data_en 1
run 20

force serial_data 1
run 20
run 20

force serial_data 0
run 20
run 20

force serial_data 1
run 20
run 20

run 20
run 20
run 20
