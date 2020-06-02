add wave -position insertpoint  \
sim:/glitch_tb/TestGlitchy/go \
sim:/glitch_tb/TestGlitchy/ws \
sim:/glitch_tb/TestGlitchy/clk \
sim:/glitch_tb/TestGlitchy/reset_n \
sim:/glitch_tb/TestGlitchy/rd \
sim:/glitch_tb/TestGlitchy/ds

add wave -position insertpoint  \
sim:/glitch_tb/TestGlitchy/glitch_ns

run 10 ns
