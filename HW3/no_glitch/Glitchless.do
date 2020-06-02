add wave -position insertpoint  \
sim:/glitchless_tb/TestGlitchy/go \
sim:/glitchless_tb/TestGlitchy/ws \
sim:/glitchless_tb/TestGlitchy/clk \
sim:/glitchless_tb/TestGlitchy/reset_n \
sim:/glitchless_tb/TestGlitchy/rd \
sim:/glitchless_tb/TestGlitchy/ds

add wave -position insertpoint  \
sim:/glitchless_tb/TestGlitchy/no_glitch_ns

run 10 ns

vcd file glitchless.vcd
