#!/bin/bash
if [ ! -d work ] ; then vlib work
fi

if [ ! -f .synopsys_dc.setup ] ; then
mv synopsys_dc.setup .synopsys_dc.setup
fi

if [[ ! -s Glitchless.gate.v ]]; then
vlog no_glitch.sv
echo "*** dc_shell-xg-t -f desVis_do.do ***"
dc_shell-xg-t -f desVis_do.do

echo "*** /nfs/guille/a1/cadlibs/synop_lib/SAED_EDK90nm/Digital_Standard_Cell_Library/verilog/*.v ***"
vlog /nfs/guille/a1/cadlibs/synop_lib/SAED_EDK90nm/Digital_Standard_Cell_Library/verilog/*.v
fi

if [[ -f glitchless.gate.v ]]; then
echo "*** vlog no_glitch.sv glitch_tb.sv ***"
vlog glitchless.gate.v glitchless_tb.sv
fi

if [ -s Glitchless.do ] ; then
echo "*** vsim glitch_tb -novopt -do Glitchless.do -quiet -c ***"
vsim glitchless_tb -novopt -do Glitchless.do -quiet
fi
