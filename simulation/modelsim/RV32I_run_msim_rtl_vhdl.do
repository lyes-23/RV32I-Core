transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/TRETEC/Documents/Master_1/M1_project/RISC_V/myown_riscv/constants.vhd}
vcom -93 -work work {C:/Users/TRETEC/Documents/Master_1/M1_project/RISC_V/myown_riscv/instr_memory.vhd}
vcom -93 -work work {C:/Users/TRETEC/Documents/Master_1/M1_project/RISC_V/myown_riscv/decoder.vhd}
vcom -93 -work work {C:/Users/TRETEC/Documents/Master_1/M1_project/RISC_V/myown_riscv/reg_file.vhd}
vcom -93 -work work {C:/Users/TRETEC/Documents/Master_1/M1_project/RISC_V/myown_riscv/alu.vhd}
vcom -93 -work work {C:/Users/TRETEC/Documents/Master_1/M1_project/RISC_V/myown_riscv/data_memory.vhd}
vcom -93 -work work {C:/Users/TRETEC/Documents/Master_1/M1_project/RISC_V/myown_riscv/LM.vhd}
vcom -93 -work work {C:/Users/TRETEC/Documents/Master_1/M1_project/RISC_V/myown_riscv/SM.vhd}
vcom -93 -work work {C:/Users/TRETEC/Documents/Master_1/M1_project/RISC_V/myown_riscv/pc_unit.vhd}
vcom -93 -work work {C:/Users/TRETEC/Documents/Master_1/M1_project/RISC_V/myown_riscv/top_level.vhd}

vcom -93 -work work {C:/Users/TRETEC/Documents/Master_1/M1_project/RISC_V/myown_riscv/simulation/modelsim/top_level.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclonev -L rtl_work -L work -voptargs="+acc"  top_level_vhd_tst

add wave *
view structure
view signals
run -all
