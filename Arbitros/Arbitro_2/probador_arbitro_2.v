//Proyecto II
//14-11-2012
//Version 1.0

//Probador 

module probador_arbitro_2
                    
(input Pop,
  output reg clk,
  input [3:0] Push,
  output reg FIFO_empty,
  output reg [3:0] Almost_full,
  output reg [1:0] class);

    initial clk <= 0;
    initial FIFO_empty <= 0;
    initial Almost_full <= 0;
    initial class <= 0;
    
    always #1 clk <= ~clk;

	initial begin
	$dumpfile("arbitro_2.vcd");
	$dumpvars;

    @(posedge clk);
    @(posedge clk);
    class = 1;
    @(posedge clk);
    @(posedge clk);
    class = 3;
    @(posedge clk);
    @(posedge clk);
    Almost_full = 4'b0100;
    @(posedge clk);
    @(posedge clk);
    Almost_full = 0;
    @(posedge clk);
    @(posedge clk);
    class = 2;
    @(posedge clk);
    @(posedge clk);
    FIFO_empty = 1;
    @(posedge clk);
    @(posedge clk);

	#3 $finish;
    
	end

endmodule