module memoria #(
  parameter DATA_WIDTH=8,          //width of data bus
  parameter ADDR_WIDTH=8           //width of addresses buses
)(
  input  [(DATA_WIDTH-1):0] data,  //data to be written
  input  [(ADDR_WIDTH-1):0] addr,  //address for write/read operation
  input                     we,    //write enable signal
  input                     clk,   //clock signal
  output [(DATA_WIDTH-1):0] q      //read data
);

  reg [DATA_WIDTH-1:0] ram [2**ADDR_WIDTH-1:0];
  reg [ADDR_WIDTH-1:0] addr_r;

  always @(posedge clk) begin //WRITE
      if (we) begin
          ram[addr] <= data;
      end
      addr_r <= addr;
  end

  assign q = ram[addr_r]; //READ

endmodule