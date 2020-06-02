#!/bin/bash
if [ ! -d work ] ; then
vlib work
fi

if [ ! -f .synopsys_dc.setup ] ; then
mv synopsys_dc.setup .synopsys_dc.setup
fi

if [[ -s GCD.sv ]]; then
echo "*********************************** vlog GCD.sv HW6_tb.sv -cover sbcef "+cover=f" "+acc=f" ***********************************"
vlog GCD.sv HW6_tb.sv -cover sbcef "+cover=f" "+acc=f"
fi

if [ -s vsim.do ] ; then
echo "*********************************** vsim tb -coverage -fsmdebug -do vsim.do ***********************************"
vsim tb -coverage -fsmdebug
fi
