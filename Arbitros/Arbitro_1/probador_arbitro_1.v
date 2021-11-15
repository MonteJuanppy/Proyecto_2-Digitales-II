//Proyecto II
//14-11-2012
//Version 1.0

//Probador 

module probador_arbitro_1
                    
(input [3:0] Pops,
  output reg clk,
  input [3:0] Push,
  output reg [3:0] FIFO_empty,
  output reg [3:0] Almost_full,
  output reg [1:0] dest);

    initial clk <= 0;
    initial FIFO_empty <= 0;
    initial Almost_full <= 0;
    initial dest <= 0;
    
    always #1 clk <= ~clk;

	initial begin
	$dumpfile("arbitro_1.vcd");
	$dumpvars;

    @(posedge clk);
    @(posedge clk);
    dest = 1;
    @(posedge clk);
    @(posedge clk);
    dest = 3;
    @(posedge clk);
    @(posedge clk);
    Almost_full = 4'b0100;
    @(posedge clk);
    @(posedge clk);
    Almost_full = 0;
    @(posedge clk);
    @(posedge clk);
    dest = 2;
    @(posedge clk);
    @(posedge clk);
    FIFO_empty = 1;
    @(posedge clk);
    @(posedge clk);

	#3 $finish;
    
	end

endmodule