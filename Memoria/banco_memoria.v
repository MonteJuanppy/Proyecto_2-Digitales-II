//Juan Ignacio Montealegre Salazar
//Proyecto II
//Desarrollo de Memoria
//5-11-2012
//Version 1.0

//Banco de pruebas para memoria

// escala	unidad temporal (valor de "#1") / precisión
`timescale 	1ns	/ 100ps

// Se incluyen los archivos necesario
`include "memoria.v"
`include "memoria_synth.v"
`include "probador_memoria.v"

module banco #(
  parameter DATA_WIDTH=8, //tamaño de datos FIFO_data_in
  parameter ADDR_WIDTH=8);  //tamaño de direcciones

    //Wires
    wire [(DATA_WIDTH-1):0] FIFO_data_in; //tamaño de datos FIFO_data_in
    wire [(ADDR_WIDTH-1):0] wr_ptr; //direccíón de escritura
    wire [(ADDR_WIDTH-1):0] rd_ptr; //direccíón de lectura
    wire clk; //señal de reloj
    wire [(DATA_WIDTH-1):0] FIFO_data_out; //salida FIFO_data_out
    wire [(DATA_WIDTH-1):0] FIFO_data_out_synth; //salida FIFO_data_out

	// Se instancia el módulo de memoria conductual
	memoria conductual(/*AUTOINST*/
			   // Outputs
			   .FIFO_data_out	(FIFO_data_out[(DATA_WIDTH-1):0]),
			   // Inputs
			   .FIFO_data_in	(FIFO_data_in[(DATA_WIDTH-1):0]),
			   .wr_ptr		(wr_ptr[(ADDR_WIDTH-1):0]),
			   .rd_ptr		(rd_ptr[(ADDR_WIDTH-1):0]),
			   .clk			(clk));

    memoria_synth estructural(/*AUTOINST*/
			      // Outputs
			      .FIFO_data_out_synth(FIFO_data_out_synth[7:0]),
			      // Inputs
			      .FIFO_data_in	(FIFO_data_in[7:0]),
			      .clk		(clk),
			      .rd_ptr		(rd_ptr[7:0]),
			      .wr_ptr		(wr_ptr[7:0]));

	// Probador
	probador_memoria probador(/*AUTOINST*/
				  // Outputs
				  .FIFO_data_in		(FIFO_data_in[(DATA_WIDTH-1):0]),
				  .wr_ptr		(wr_ptr[(ADDR_WIDTH-1):0]),
				  .rd_ptr		(rd_ptr[(ADDR_WIDTH-1):0]),
				  .clk			(clk),
				  // Inputs
				  .FIFO_data_out	(FIFO_data_out[(DATA_WIDTH-1):0]));

endmodule
