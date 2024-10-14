transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {RV32I.vho}

vcom -93 -work work {C:/Users/TRETEC/Documents/Master_1/M1_project/RISC_V/myown_riscv/simulation/modelsim/data_memory.vht}

vsim -t 1ps +transport_int_delays +transport_path_delays -sdftyp /NA=RV32I_vhd.sdo -L altera -L altera_lnsim -L cyclonev -L gate_work -L work -voptargs="+acc"  data_memory_vhd_tst

add wave *
view structure
view signals
run -all
