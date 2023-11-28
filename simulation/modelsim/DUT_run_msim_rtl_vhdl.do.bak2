transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/intelFPGA_lite/18.1/projects/EE224 Project CPU/Gates.vhdl}
vcom -93 -work work {C:/intelFPGA_lite/18.1/projects/EE224 Project CPU/alu.vhd}
vcom -93 -work work {C:/intelFPGA_lite/18.1/projects/EE224 Project CPU/multiplier.vhd}
vcom -93 -work work {C:/intelFPGA_lite/18.1/projects/EE224 Project CPU/fulladder.vhd}
vcom -93 -work work {C:/intelFPGA_lite/18.1/projects/EE224 Project CPU/add_sub_16.vhd}

vcom -93 -work work {C:/intelFPGA_lite/18.1/projects/EE224 Project CPU/Testbench.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all
