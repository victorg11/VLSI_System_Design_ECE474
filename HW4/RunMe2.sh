#!/bin/bash
if [ ! -d work ] ; then
vlib work
fi

if [ ! -f .synopsys_dc.setup ] ; then
mv synopsys_dc.setup .synopsys_dc.setup
fi

if [[ -s GCD.sv ]]; then
#RTL
vlog GCD.sv
vlog GCD.sv tbskeleton.sv
#echo "*********************************** vsim tb -novopt -do vsim.do -wlf GCD_RTL.wlf -quit -c ***********************************"
#vsim tb -novopt -do vsim.do -wlf GCD_RTL.wlf -quiet -c #used for RTL


echo "*********************************** dc_shell-xg-t -f desVis_do.do ***********************************"
dc_shell-xg-t -f desVis_do.do

echo "*** /nfs/guille/a1/cadlibs/synop_lib/SAED_EDK90nm/Digital_Standard_Cell_Library/verilog/*.v ***"
vlog /nfs/guille/a1/cadlibs/synop_lib/SAED_EDK90nm/Digital_Standard_Cell_Library/verilog/*.v
fi

#if [[ -s GCD.sv ]]; then #Used for RTL
#echo "*********************************** vlog GCD.sv tbskeleton.sv ***********************************"
#vlog GCD.sv tbskeleton.sv
#fi

if [[ -f GCD.gate.v ]]; then
echo "*********************************** vlog GCD.gate.v tbskeleton.sv -work GateLevelLib ***********************************"
vlog GCD.gate.v tbskeleton.sv -work GateLevelLib
fi

if [ -s vsim.do ] ; then
echo "*********************************** vsim GateLevelLib.tb -novopt -do vsim.do -wlf GCD_RTL.wlf -quit -c ***********************************"
vsim GateLevelLib.tb -novopt -do vsim.do -wlf GCD_GateLVL.wlf #-quit -c #used for GateLVL
fi
