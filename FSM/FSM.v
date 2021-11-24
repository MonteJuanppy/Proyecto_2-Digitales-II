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

parameter RESET = 0;
parameter INIT = 1;
parameter IDLE = 2;
parameter ACTIVE = 3;
reg [2:0] estado;
reg [2:0] proximo_estado;
reg [2:0] interno_alto_d;
reg [2:0] interno_bajo_d;

always @(posedge clk) begin
    
        if (!reset)
        begin
                estado <= RESET;
                interno_alto_d <= 0;
                interno_bajo_d <= 0;
        end

        else begin
                estado <= proximo_estado;
                interno_alto_d <= interno_alto;
                interno_bajo_d <= interno_bajo;
        
        end 
        end

always @(*) begin

    proximo_estado = estado;
    idle = 0;
    interno_alto = interno_alto_d;
    interno_bajo = interno_bajo_d;

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
