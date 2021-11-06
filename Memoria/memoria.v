//Proyecto II
//Desarrollo de Memoria
//5-11-2012
//Version 1.0
//Modulo tomado de: https://riptutorial.com/verilog/example/10519/single-port-synchronous-ram


module memoria #(
  parameter DATA_WIDTH=8, //tamaño de datos FIFO_data_in
  parameter ADDR_WIDTH=8)  //tamaño de direcciones

(input [(DATA_WIDTH-1):0] FIFO_data_in,  //entrada FIFO_data_in 
  input [(ADDR_WIDTH-1):0] wr_ptr,  //direccíón de escritura
  input [(ADDR_WIDTH-1):0] rd_ptr,  //direccíón de lectura
  input clk,   //señal de reloj
  output [(DATA_WIDTH-1):0] FIFO_data_out //salida FIFO_data_out
);

  initial FIFO_data_out = 0;

  reg [DATA_WIDTH-1:0] ram [2**ADDR_WIDTH-1:0]; //Tamaño de la memoria

  always @(posedge clk) begin 
        ram[wr_ptr] <= FIFO_data_in;//Escritura
        //FIFO_data_out = ram[rd_ptr]; //Lectura
      end
  assign FIFO_data_out = ram[rd_ptr]; 
endmodule