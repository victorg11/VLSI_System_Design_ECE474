#!/bin/bash
if [ ! -d work ] ; then
vlib work
fi

if [ ! -f .synopsys_dc.setup ] ; then
mv synopsys_dc.setup .synopsys_dc.setup
fi

vlog addresser.sv
vlog average_sm.sv
vlog averager.sv
vlog buffer.sv
vlog detect_header.sv
vlog InputFSM.sv
vlog shiftReg.sv
vlog tas_top.sv

vlog tas_top.sv tb.sv
vsim tb -novopt -do Testbench.do -wlf tas_wave.wlf #-quit -c
