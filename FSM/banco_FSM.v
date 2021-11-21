//Proyecto II
//Desarrollo de FSM
//20-11-2012
//Version 1.0

//Banco de pruebas para memoria

// escala	unidad temporal (valor de "#1") / precisión
`timescale 	1ns	/ 100ps

// Se incluyen los archivos necesario
`include "FSM.v"
`include "FSM_synth.v"
`include "probador_FSM.v"


module banco_FSM;

    //Wires
    wire reset;
    wire clk;
    wire init;
    wire [2:0] umbral_alto;
    wire [2:0] umbral_bajo;
    wire [9:0] FIFO_empty;
    wire idle;
    wire [2:0] interno_alto;
    wire [2:0] interno_bajo;
    

	// Se instancia el módulo de memoria conductual
	FSM conductual(/*AUTOINST*/
		       // Outputs
		       .idle		(idle),
		       .interno_alto	(interno_alto[2:0]),
		       .interno_bajo	(interno_bajo[2:0]),
		       // Inputs
		       .reset		(reset),
		       .clk		(clk),
		       .init		(init),
		       .umbral_alto	(umbral_alto[2:0]),
		       .umbral_bajo	(umbral_bajo[2:0]),
		       .FIFO_empty	(FIFO_empty[9:0]));

    FSM_synth estructural(/*AUTOINST*/
			  // Outputs
			  .idle			(idle),
			  .interno_alto		(interno_alto[2:0]),
			  .interno_bajo		(interno_bajo[2:0]),
			  // Inputs
			  .FIFO_empty		(FIFO_empty[9:0]),
			  .clk			(clk),
			  .init			(init),
			  .reset		(reset),
			  .umbral_alto		(umbral_alto[2:0]),
			  .umbral_bajo		(umbral_bajo[2:0]));

	// Probador
	probador_FSM probador(/*AUTOINST*/
			      // Outputs
			      .reset		(reset),
			      .clk		(clk),
			      .init		(init),
			      .umbral_alto	(umbral_alto[2:0]),
			      .umbral_bajo	(umbral_bajo[2:0]),
			      .FIFO_empty	(FIFO_empty[9:0]),
			      // Inputs
			      .idle		(idle),
			      .interno_alto	(interno_alto[2:0]),
			      .interno_bajo	(interno_bajo[2:0]));

endmodule
