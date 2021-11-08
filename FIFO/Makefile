#Proyecto 2 FIFO
#Fecha: 07-11-2021
#Version 1.0
#Archivo Makefile

CC = iverilog
PP = vvp

Compile: banco_FIFO.v FIFO.v probador_FIFO.v 
	emacs --batch FIFO.v -f verilog-batch-auto
	yosys -s FIFO.ys
	sed -i 's/FIFO/FIFO_synth/' FIFO_synth.v
	sed -i 's/memoria/memoria_synth/' FIFO_synth.v
	sed -i 's/FIFO_data_out/FIFO_data_out_synth/' FIFO_synth.v 
	emacs --batch banco_FIFO.v -f verilog-batch-auto
	$(CC) -o FIFO.vvp banco_FIFO.v 
	$(PP) FIFO.vvp
	gtkwave FIFO.vcd
