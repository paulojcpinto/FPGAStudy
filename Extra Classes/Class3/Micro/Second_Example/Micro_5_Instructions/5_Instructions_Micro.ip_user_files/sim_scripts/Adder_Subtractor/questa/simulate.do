onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib Adder_Subtractor_opt

do {wave.do}

view wave
view structure
view signals

do {Adder_Subtractor.udo}

run -all

quit -force
