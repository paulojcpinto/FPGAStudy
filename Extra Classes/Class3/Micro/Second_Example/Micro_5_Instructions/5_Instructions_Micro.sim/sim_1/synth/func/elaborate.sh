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
ExecStep $xv_path/bin/xelab -wto 17e73b78c50148458fc634587228f97f -m64 --debug typical --relax --mt 8 -L xil_defaultlib -L unisims_ver -L secureip --snapshot Microprocessor_tb_func_synth xil_defaultlib.Microprocessor_tb xil_defaultlib.glbl -log elaborate.log
