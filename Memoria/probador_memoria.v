//Proyecto II
//Desarrollo de Memoria
//5-11-2012
//Version 1.0

//Probador

module probador_memoria #(
            parameter DATA_WIDTH=8, //tamaño de datos FIFO_data_in
            parameter ADDR_WIDTH=8)  //tamaño de direcciones
                    
(output reg [(DATA_WIDTH-1):0] FIFO_data_in,  //entrada FIFO_data_in 
  output reg[(ADDR_WIDTH-1):0] wr_ptr,  //direccíón de escritura
  output reg[(ADDR_WIDTH-1):0] rd_ptr,  //direccíón de lectura
  output reg clk,   //señal de reloj
  output reg write_enable, //enable
  output reg read_enable, //enable
  input [(DATA_WIDTH-1):0] FIFO_data_out //salida FIFO_data_out
);
    initial begin
        FIFO_data_in <= 0;
        wr_ptr <= 0;
        rd_ptr <= 0;
        clk <= 0;
        write_enable <= 0;
        read_enable <= 0;
    end
    always #1 clk <= ~clk;

	initial begin
	$dumpfile("memoria.vcd");
	$dumpvars;

    @(posedge clk);
    write_enable <= 1;
    read_enable <= 1;
    @(posedge clk);
    FIFO_data_in <= 8'hFF;
    wr_ptr <= 8'h01;
    rd_ptr <= 8'h00;
    

    @(posedge clk);
    FIFO_data_in <= 8'hAF;
    wr_ptr <= 8'h05;
    rd_ptr <= 8'h00;

    @(posedge clk);
    FIFO_data_in <= 8'h17;
    wr_ptr <= 8'h06;
    rd_ptr <= 8'h01;

    @(posedge clk);
    FIFO_data_in <= 8'hB8;
    wr_ptr <= 8'h5C;
    rd_ptr <= 8'h05;

    @(posedge clk);
    FIFO_data_in <= 8'h6A;
    wr_ptr <= 8'h9F;
    rd_ptr <= 8'h06;

	#3 $finish;
    
	end

endmodule