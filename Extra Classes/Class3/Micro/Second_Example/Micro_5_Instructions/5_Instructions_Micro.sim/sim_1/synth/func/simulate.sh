#!/bin/bash -f
xv_path="/opt/Xilinx/Vivado/2016.4"
ExecStep()
{
"$@"
RETVAL=$?
if [ $RETVAL -ne 0 ]
then
exit $RETVAL
fi
}
ExecStep $xv_path/bin/xsim Microprocessor_tb_func_synth -key {Post-Synthesis:sim_1:Functional:Microprocessor_tb} -tclbatch Microprocessor_tb.tcl -log simulate.log
