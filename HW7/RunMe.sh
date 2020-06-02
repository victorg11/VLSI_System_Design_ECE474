#!/bin/bash
if [ ! -d work ] ; then
vlib work
fi

if [ ! -f .synopsys_dc.setup ] ; then
mv synopsys_dc.setup .synopsys_dc.setup
fi

echo "*********************************** vlog *.sv Part_2/covergroup.sv ***********************************"
vlog *.sv Part_2/covergroup.sv

echo "*********************************** vsim tb -c -do cover.do ***********************************"
vsim tb -c -do cover.do
