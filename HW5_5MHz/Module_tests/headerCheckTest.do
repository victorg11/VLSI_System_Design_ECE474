add wave sim:/detect_header/*

force byte_complete 1
force packet_in 8'hF3
run 20 ns

force packet_in 8'hC3
run 20

force packet_in 8'hA3
run 20

force packet_in 8'hA5
run 20

force byte_complete 0
force packet_in 8'hFF
run 20 ns

force packet_in 8'hA5
run 20 ns
