#Proyecto Digitales II
#Fecha: 20-11-2021
#Version 1.0
#Archivo Makefile

CC = iverilog
PP = vvp

Compile: banco_FSM.v FSM.v probador_FSM.v 
	yosys -s FSM.ys
	sed -i 's/FSM/FSM_synth/' FSM_synth.v
	sed -i 's/FIFO_data_out/FIFO_data_out_synth/' FSM_synth.v 
	emacs  --batch banco_FSM.v -f verilog-batch-auto
	$(CC) -o FSM.vvp banco_FSM.v 
	$(PP) FSM.vvp
	gtkwave FSM.vcd
