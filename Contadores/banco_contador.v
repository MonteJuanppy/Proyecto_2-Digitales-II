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
	wire push; //señal de push
	wire [5:0]  cuenta; //señal de cuenta
    wire [5:0]  cuenta_synth; //señal de cuenta
    
	// Se instancia el módulo de memoria conductual
	contador conductual(/*AUTOINST*/
			    // Outputs
			    .cuenta		(cuenta[5:0] ),
			    // Inputs
			    .push		(push),
			    .clk		(clk));

    contador_synth estructural(/*AUTOINST*/
			       // Outputs
			       .cuenta	(cuenta_synth[5:0]),
			       // Inputs
			       .clk		(clk),
			       .push		(push));

	// Probador
	probador_contador probador(/*AUTOINST*/
				   // Outputs
				   .clk			(clk),
				   .push		(push),
				   // Inputs
				   .cuenta		(cuenta[5:0]),
				   .cuenta_synth	(cuenta_synth[5:0]));

endmodule
