@echo off
set xv_path=C:\\Xilinx\\Vivado\\2016.4\\bin
call %xv_path%/xsim Microprocessor_tb_behav -key {Behavioral:sim_1:Functional:Microprocessor_tb} -tclbatch Microprocessor_tb.tcl -view C:/Users/Pedro/Documents/Projects/Vivado/5_Instructions_Micro/Microprocessor_tb_behav.wcfg -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
