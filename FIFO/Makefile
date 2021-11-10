#Proyecto 2 FIFO
#Fecha: 08-11-2021
#Version 1.0
#Archivo Makefile

CC = iverilog
PP = vvp

Compile: banco_FIFO.v FIFO.v probador_FIFO.v 
	#emacs --batch FIFO.v -f verilog-batch-auto
	yosys -s FIFO.ys
	sed -i 's/FIFO/FIFO_synth/g' FIFO_synth.v
	sed -i 's/memoria/memoria_synth/g' FIFO_synth.v
	sed -i 's/FIFO_data_out/FIFO_synth_data_out/g' FIFO_synth.v 
	sed -i 's/FIFO_full/FIFO_full_synth/g' FIFO_synth.v 
	sed -i 's/FIFO_empty/FIFO_empty_synth/g' FIFO_synth.v 
	sed -i 's/FIFO_almost_full/FIFO_almost_full_synth/g' FIFO_synth.v 
	sed -i 's/FIFO_almost_empty/FIFO_almost_empty_synth/g' FIFO_synth.v 
	sed -i 's/FIFO_synth_data_in/FIFO_data_in/g' FIFO_synth.v 
	emacs --batch banco_FIFO.v -f verilog-batch-auto
	$(CC) -o FIFO.vvp banco_FIFO.v 
	$(PP) FIFO.vvp
	gtkwave FIFO.vcd
