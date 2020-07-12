
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name Pipe -dir "C:/Users/Eurico Moreia/Dropbox/Sistemas Embebidos/Aula/Pipe_v3/planAhead_run_3" -part xc3s100ecp132-5
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "C:/Users/Eurico Moreia/Dropbox/Sistemas Embebidos/Aula/Pipe_v3/micro.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/Users/Eurico Moreia/Dropbox/Sistemas Embebidos/Aula/Pipe_v3} {ipcore_dir} }
add_files "ipcore_dir/Dmem.ncf" "ipcore_dir/Imem.ncf" -fileset [get_property constrset [current_run]]
set_param project.pinAheadLayout  yes
set_param project.paUcfFile  "micro.ucf"
add_files "micro.ucf" -fileset [get_property constrset [current_run]]
open_netlist_design
