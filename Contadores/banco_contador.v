//Proyecto II
//14-11-2012
//Version 1.0

//Banco de pruebas para contador

// escala	unidad temporal (valor de "#1") / precisión
`timescale 	1ns	/ 100ps

// Se incluyen los archivos necesario
`include "contador.v"
`include "contador_synth.v"
`include "probador_contador.v"

module banco_contador;

    //Wires
    wire clk; //señal de reloj
	wire valid; //señal de valid
	wire valid_synth; //señal de valid
	wire req; //señal de request
	wire push0; //señal de push de FIFO 0
	wire push1; //señal de push de FIFO 1
	wire push2; //señal de push de FIFO 2
	wire push3; //señal de push de FIFO 3
	wire push4; //señal de push de FIFO 4
	wire [2:0] idx; //señal para indexar el contador
	wire [5:0]  data; //señal de cuenta
    wire [5:0]  data_synth; //señal de cuenta
    
	// Se instancia el módulo de memoria conductual
	contador conductual(/*AUTOINST*/
			    // Outputs
			    .data		(data[5:0]),
			    .valid		(valid),
			    // Inputs
			    .push0		(push0),
			    .push1		(push1),
			    .push2		(push2),
			    .push3		(push3),
			    .push4		(push4),
			    .req		(req),
			    .idx		(idx[2:0]),
			    .clk		(clk));

    contador_synth estructural(/*AUTOINST*/
			       // Outputs
			       .data		(data_synth[5:0]),
			       .valid		(valid_synth),
			       // Inputs
			       .clk		(clk),
			       .idx		(idx[2:0]),
			       .push0		(push0),
			       .push1		(push1),
			       .push2		(push2),
			       .push3		(push3),
			       .push4		(push4),
			       .req		(req));

	// Probador
	probador_contador probador(/*AUTOINST*/
				   // Outputs
				   .push0		(push0),
				   .push1		(push1),
				   .push2		(push2),
				   .push3		(push3),
				   .push4		(push4),
				   .req			(req),
				   .idx			(idx[2:0]),
				   .clk			(clk),
				   // Inputs
				   .data		(data[5:0]),
				   .valid		(valid));

endmodule
