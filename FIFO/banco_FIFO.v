//Proyecto II
//Desarrollo de FIFO
//7-11-2012
//Version 1.0

//Banco de pruebas para FIFO

// escala	unidad temporal (valor de "#1") / precisión
`timescale 	1ns	/ 100ps

// Se incluyen los archivos necesario
`include "FIFO.v"
`include "FIFO_synth.v"
`include "probador_FIFO.v"

module banco_FIFO #(
  parameter DATA_WIDTH=8, //tamaño de datos FIFO_data_in
  parameter ADDR_WIDTH=8);  //tamaño de direcciones

    //Wires
    wire [(DATA_WIDTH-1):0] FIFO_data_in; //tamaño de datos FIFO_data_in
    wire clk; //señal de reloj
    wire Reset; //señal de reset
    wire Enable; //señal de enable
	wire write_enable; //Señal para habilitar escritura
	wire read_enable; //Señal para habilitar lectura
    wire [(DATA_WIDTH-1):0] FIFO_data_out; //salida FIFO_data_out
    wire FIFO_empty, FIFO_full;
    //wire [(DATA_WIDTH-1):0] FIFO_data_out_synth; //salida FIFO_data_out
    //wire FIFO_empty_synth, FIFO_full_synth;

	// Se instancia el módulo de memoria conductual
	FIFO conductual (/*AUTOINST*/
			 // Outputs
			 .FIFO_data_out		(FIFO_data_out[DATA_WIDTH-1:0]),
			 .FIFO_empty		(FIFO_empty),
			 .FIFO_full		(FIFO_full),
			 // Inputs
			 .FIFO_data_in		(FIFO_data_in[DATA_WIDTH-1:0]),
			 .clk			(clk),
			 .Reset			(Reset),
			 .Enable		(Enable),
			 .write_enable		(write_enable),
			 .read_enable		(read_enable));

    // Se instancia el módulo de memoria conductual
	FIFO_synth estructural (/*AUTOINST*/
				// Outputs
				.FIFO_synth_data_out(FIFO_synth_data_out[7:0]),
				.FIFO_synth_empty(FIFO_synth_empty),
				.FIFO_synth_full(FIFO_synth_full),
				// Inputs
				.Enable		(Enable),
				.FIFO_synth_data_in(FIFO_synth_data_in[7:0]),
				.Reset		(Reset),
				.clk		(clk),
				.read_enable	(read_enable),
				.write_enable	(write_enable));

	// Probador
	probador_FIFO probador (/*AUTOINST*/
				// Outputs
				.clk		(clk),
				.Reset		(Reset),
				.Enable		(Enable),
				.write_enable	(write_enable),
				.read_enable	(read_enable),
				.FIFO_data_in	(FIFO_data_in[DATA_WIDTH-1:0]),
				// Inputs
				.FIFO_data_out	(FIFO_data_out[DATA_WIDTH-1:0]),
				.FIFO_empty	(FIFO_empty),
				.FIFO_full	(FIFO_full));

endmodule
