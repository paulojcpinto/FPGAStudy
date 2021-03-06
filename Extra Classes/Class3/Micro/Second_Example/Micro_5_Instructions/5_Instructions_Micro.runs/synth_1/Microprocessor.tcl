# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7z010clg400-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir /home/pedro/Projects/Vivado/5_Instructions_Micro/5_Instructions_Micro.cache/wt [current_project]
set_property parent.project_path /home/pedro/Projects/Vivado/5_Instructions_Micro/5_Instructions_Micro.xpr [current_project]
set_property XPM_LIBRARIES XPM_MEMORY [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_output_repo /home/pedro/Projects/Vivado/5_Instructions_Micro/5_Instructions_Micro.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
add_files -quiet /home/pedro/Projects/Vivado/5_Instructions_Micro/5_Instructions_Micro.srcs/sources_1/ip/Adder_Subtractor/Adder_Subtractor.dcp
set_property used_in_implementation false [get_files /home/pedro/Projects/Vivado/5_Instructions_Micro/5_Instructions_Micro.srcs/sources_1/ip/Adder_Subtractor/Adder_Subtractor.dcp]
read_verilog -library xil_defaultlib /home/pedro/Projects/Vivado/5_Instructions_Micro/5_Instructions_Micro.srcs/sources_1/new/Microprocessor.v
read_ip -quiet /home/pedro/Projects/Vivado/5_Instructions_Micro/5_Instructions_Micro.srcs/sources_1/ip/RAM/RAM.xci
set_property used_in_implementation false [get_files -all /home/pedro/Projects/Vivado/5_Instructions_Micro/5_Instructions_Micro.srcs/sources_1/ip/RAM/RAM_ooc.xdc]
set_property is_locked true [get_files /home/pedro/Projects/Vivado/5_Instructions_Micro/5_Instructions_Micro.srcs/sources_1/ip/RAM/RAM.xci]

foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}
read_xdc /home/pedro/Projects/Vivado/5_Instructions_Micro/5_Instructions_Micro.srcs/constrs_1/imports/Vivado/ZYBO_Master.xdc
set_property used_in_implementation false [get_files /home/pedro/Projects/Vivado/5_Instructions_Micro/5_Instructions_Micro.srcs/constrs_1/imports/Vivado/ZYBO_Master.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]

synth_design -top Microprocessor -part xc7z010clg400-1


write_checkpoint -force -noxdef Microprocessor.dcp

catch { report_utilization -file Microprocessor_utilization_synth.rpt -pb Microprocessor_utilization_synth.pb }
