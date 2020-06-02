add wave -position insertpoint  \
sim:/tb/serial_data \
sim:/tb/data_ena \
sim:/tb/reset_n \
sim:/tb/clk_50 \
sim:/tb/clk_2 \
sim:/tb/ram_wr_n \
sim:/tb/ram_data \
sim:/tb/ram_addr

add wave -position insertpoint  \
sim:/tb/tas_0/shft_reg_out
add wave -position insertpoint  \
sim:/tb/tas_0/shft_reg_out \
sim:/tb/tas_0/byte_assembled_flag \
sim:/tb/tas_0/header_flag \
sim:/tb/tas_0/buffer_write_en \
sim:/tb/tas_0/buffer_out \
sim:/tb/tas_0/byte_cnt \
sim:/tb/tas_0/full_buffer_flag \
sim:/tb/tas_0/find_average \
sim:/tb/tas_0/is_avg_done

run 120000
