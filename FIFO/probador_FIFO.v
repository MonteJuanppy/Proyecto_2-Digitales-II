//Proyecto II
//Desarrollo de Memoria
//7-11-2012
//Version 1.0

//Probador para FIFO

module probador_FIFO #(
            parameter DATA_WIDTH=12, //tamaño de datos FIFO_data_in
            parameter ADDR_WIDTH=8)  //tamaño de direcciones
                    
    (output reg clk, //Señal de reloj
    output reg Reset, //Señal de reset
    output reg Enable, //Señal de enable
    output reg write_enable, //Señal para habilitar escritura
    output reg [2:0] interno_bajo, //Señal de umbral baja para almost Empty
    output reg [2:0] interno_alto, //Señal de umbral alta para almost Full
    output reg read_enable, //Señal para habilitar lectura
    output reg [DATA_WIDTH-1:0] FIFO_data_in, //Entrada de datos
    input [DATA_WIDTH-1:0] FIFO_data_out, //Salida de datos
    input FIFO_empty, //Indica cuando queda mucho espacio en memoria
    input FIFO_almost_full,
    input FIFO_almost_empty,
    input FIFO_full); //Indica cuando queda poco espacio en memoria

    initial begin
        FIFO_data_in = 0;
        write_enable = 0;
        read_enable = 0;
        interno_bajo = 2;
        interno_alto = 6;
        clk = 0;
        Reset = 0;
        Enable = 0;
    end

    always #1 clk <= ~clk;

	initial begin
	$dumpfile("FIFO.vcd");
	$dumpvars;
    @(posedge clk);
    Enable = 1;
    repeat(2)
	@(posedge clk);
    Reset = 1;
    @(posedge clk);
    
    write_enable = 1;

    @(posedge clk);
    FIFO_data_in <= 12'hFFF;

    @(posedge clk);
    FIFO_data_in <= 12'hACF;

    @(posedge clk);
    FIFO_data_in <= 12'h1B7;

    @(posedge clk);
    FIFO_data_in <= 12'hB08;

    @(posedge clk);
    FIFO_data_in <= 12'h611;
    
    @(posedge clk);
    write_enable = 0;
    read_enable = 1;

    repeat(4)
	@(posedge clk);

	#3 $finish;
	end

endmodule