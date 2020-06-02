add wave -position insertpoint  \
sim:/tb/testGCD/a_in \
sim:/tb/testGCD/b_in \
sim:/tb/testGCD/start \
sim:/tb/testGCD/reset_n \
sim:/tb/testGCD/clk \
sim:/tb/testGCD/result

add wave -position insertpoint  \
sim:/tb/testGCD/gcd_ns \
sim:/tb/testGCD/gcd_ps

add wave -position insertpoint  \
sim:/tb/testGCD/reg_A \
sim:/tb/testGCD/reg_B \
sim:/tb/testGCD/done

run 4992000 ps
