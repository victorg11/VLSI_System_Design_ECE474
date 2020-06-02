#!/bin/bash
if [ ! -d work ] ; then
vlib work
fi

if [ ! -f .synopsys_dc.setup ] ; then
mv synopsys_dc.setup .synopsys_dc.setup
fi

if [[ ! -s Glitch.gate.v ]]; then
vlog Glitch.sv
echo "*** dc_shell-xg-t -f desVis_do.do ***"
dc_shell-xg-t -f desVis_do.do

echo "*** /nfs/guille/a1/cadlibs/synop_lib/SAED_EDK90nm/Digital_Standard_Cell_Library/verilog/*.v ***"
vlog /nfs/guille/a1/cadlibs/synop_lib/SAED_EDK90nm/Digital_Standard_Cell_Library/verilog/*.v
fi

if [[ -s Glitch.gate.v ]]; then
echo "*** vlog Glitch.gate.v glitch_tb.sv ***"
vlog Glitch.gate.v glitch_tb.sv
fi

if [ -s glitch.do ] ; then
echo "*** vsim glitch_tb -novopt -do Glitch.do -quiet -c ***"
vsim glitch_tb -novopt -do glitch.do -quiet
fi
