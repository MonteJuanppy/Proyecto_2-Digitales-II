//Proyecto II
//13-11-2021
//Version 1
//Modulo de Contadores

module contador 
(input Push,
  input clk,
  output cuenta);

initial cuenta = 0;

always @(posedge clk) begin
    //Por cada push se incrementa la cantidad de datos
  if (Push) cuenta = cuenta + 1;
endmodule

