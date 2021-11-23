//Proyecto Circuitos Digitales II
//20-11-2021
//Módulo de la máquina de estados

module FSM (input reset,
            input clk,
            input init,
            input [2:0] umbral_alto,
            input [2:0] umbral_bajo,
            input [9:0] FIFO_empty,
            output reg idle,
            output reg [2:0] interno_alto,
            output reg [2:0] interno_bajo);

initial idle = 0;
parameter RESET = 0;
parameter INIT = 1;
parameter IDLE = 2;
parameter ACTIVE = 3;
reg [2:0] estado = 0;
reg [2:0] proximo_estado = 0;
reg [2:0] thr_alto = 6;
reg [2:0] thr_bajo = 2;

always @(posedge clk) begin
    
        if (!reset) estado <= RESET;
        else begin
                estado <= proximo_estado;
        end 
        end

always @(*) begin

    proximo_estado = estado;
    idle = 0;
    interno_alto = thr_alto;
    interno_bajo = thr_bajo;

    if (init) begin
        proximo_estado = INIT;
    end

    case (estado)
        RESET: begin
                idle = 0;
                proximo_estado = INIT;
                end

        INIT: begin

                interno_alto = umbral_alto;
                interno_bajo = umbral_bajo;
                proximo_estado = IDLE;

        end

        IDLE: begin

                if (FIFO_empty == 10'b1111111111) begin
                    idle = 1;
                end

                else begin
                    idle = 0;
                    proximo_estado = ACTIVE; 
                end
                
        end

        ACTIVE: begin

                if (FIFO_empty == 10'b1111111111) begin
                   proximo_estado = IDLE; 
                end
        end
        
        default:
        proximo_estado = RESET;
        endcase

        end

endmodule
