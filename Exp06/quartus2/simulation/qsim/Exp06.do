onerror {quit -f}
vlib work
vlog -work work Exp06.vo
vlog -work work Exp06.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.topic__2_1_vlg_vec_tst
vcd file -direction Exp06.msim.vcd
vcd add -internal topic__2_1_vlg_vec_tst/*
vcd add -internal topic__2_1_vlg_vec_tst/i1/*
add wave /*
run -all
