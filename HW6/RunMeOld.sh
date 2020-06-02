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
echo "*********************************** vlog GCD.sv tbskeleton.sv ***********************************"
vlog GCD.sv tbskeleton.sv
#echo "*********************************** vsim tb -novopt -do vsim.do -wlf GCD_RTL.wlf -quit -c ***********************************"
#vsim tb -novopt -do vsim.do -wlf GCD_RTL.wlf -quiet -c #used for RTL


#echo "*********************************** dc_shell-xg-t -f desVis_do.do ***********************************"
#dc_shell-xg-t -f desVis_do.do

fi

if [ -s vsim.do ] ; then
#echo "*********************************** vsim GateLevelLib.tb -novopt -do vsim.do -wlf GCD_RTL.wlf -quit -c ***********************************"
echo "*********************************** vsim tb -novopt -do vsim.do -wlf GCD_RTL.wlf ***********************************"
vsim tb -novopt -wlf GCD_RTL.wlf #-quit -c #used for GateLVL
fi
