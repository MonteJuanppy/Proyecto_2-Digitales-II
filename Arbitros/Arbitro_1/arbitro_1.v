//Proyecto II
//13-11-2021
//Version 1
//Modulo de Arbitro 1

module arbitro_1 #(
  parameter DATA_WIDTH=8, //width of data bus
  parameter ADDR_WIDTH=8) //width of addresses buses
(output reg [3:0] Pops,
  output reg [3:0] Push,
  input clk,
  input [3:0] FIFO_empty,
  input [3:0] Almost_full,
  input [1:0] dest);

reg [3:0] contador = 0; //Contador para llevar a cabo lógica de prioridad.
reg [1:0] count2 = 0;

always @(posedge clk) begin
  //Cuando el transmisor está Empty o algún receptor
  //está almost full, no hace pop.
  if (FIFO_empty || |Almost_full) Pops = 0;
  else if (FIFO_empty == 0) begin

  // El árbito 1 tiene el siguiente orden de prioridad cuando los todos los FIFOs no están vacíos
  // 4*PO, 3*P1, 2*P2, 1*P0

  if (contador <= 4)begin
    Pops <= 4'b0001;
  end
  
  else if ((contador >= 5) && (contador <= 7)) begin
    Pops <= 4'b0010;
  end

  else if ((contador >= 8) && (contador <= 9) )  begin
    Pops <= 4'b0100;
  end

  else if (contador == 10)  begin
    Pops <= 4'b1000;
    contador <= 0;
  end

  contador <= contador + 1;

  end

  else begin
  case (count2)
        0: if (!FIFO_empty[0]) Pops <= 4'b0001;
        1: if (!FIFO_empty[1]) Pops <= 4'b0010;
        2: if (!FIFO_empty[2]) Pops <= 4'b0100;
        3: if (!FIFO_empty[3]) Pops <= 4'b1000;
        default: Pops = 0;
  endcase

  end

  case (dest)
        0: Push = 4'b0001;
        1: Push = 4'b0010;
        2: Push = 4'b0100;
        3: Push = 4'b1000;
        default: Push = 0;
    endcase

  end

endmodule

