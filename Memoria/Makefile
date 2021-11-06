#Autor: Juan Ignacio Montealegre Salazar
#Fecha: 04-11-2021
#Version 1.0
#Archivo Makefile

CC = iverilog
PP = vvp

Compile: banco_memoria.v memoria.v probador_memoria.v 
	yosys -s memoria.ys
	sed -i 's/memoria/memoria_synth/' memoria_synth.v
	sed -i 's/FIFO_data_out/FIFO_data_out_synth/' memoria_synth.v 
	emacs  --batch banco_memoria.v -f verilog-batch-auto
	$(CC) -o memoria.vvp banco_memoria.v 
	$(PP) memoria.vvp
	gtkwave memoria.vcd

