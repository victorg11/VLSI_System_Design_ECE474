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
vlog header_chck.sv
vlog InputFSM.sv
vlog shiftReg.sv
vlog tas_top.sv

vlog tas_top.sv tb.sv
vsim tb -novopt -do Module_tests/Testbench.do
