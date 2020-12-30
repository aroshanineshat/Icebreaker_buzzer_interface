/***
    Programmer: Arash Roshanineshat
***/

`timescale 1ns/1ps

module clk_divider (
    input wire clk,
    input wire [3:0] NS,
    input wire enable,

    output wire output_note
);

    reg output_note_r;

    localparam C_note_divider_value  = 12000000/2093 /2 ;
    localparam D_note_divider_value  = 12000000/2349 /2 ;
    localparam E_note_divider_value  = 12000000/2637 /2;
    localparam F_note_divider_value  = 12000000/2794 /2 ;
    localparam G_note_divider_value  = 12000000/3136 /2 ;
    localparam A_note_divider_value  = 12000000/3520 /2 ;
    localparam B_note_divider_value  = 12000000/3951 /2 ;
    localparam C2_note_divider_value = 12000000/4186 /2 ;

    reg [15:0] C_note_counter;
    reg [15:0] D_note_counter;
    reg [15:0] E_note_counter;
    reg [15:0] F_note_counter;
    reg [15:0] G_note_counter;
    reg [15:0] A_note_counter;
    reg [15:0] B_note_counter;
    reg [15:0] C2_note_counter;

    reg C_note_r;
    reg D_note_r;
    reg E_note_r;
    reg F_note_r;
    reg G_note_r;
    reg A_note_r;
    reg B_note_r;
    reg C2_note_r;

    initial begin
        output_note_r = 0;

        C_note_r = 0;
        D_note_r = 0;
        E_note_r = 0;
        F_note_r = 0;
        G_note_r = 0;
        A_note_r = 0;
        B_note_r = 0;
        C2_note_r = 0;

        C_note_counter  = 0;
        D_note_counter  = 0;
        E_note_counter  = 0;
        F_note_counter  = 0;
        G_note_counter  = 0;
        A_note_counter  = 0;
        B_note_counter  = 0;
        C2_note_counter  = 0;
    end

    always @(posedge clk) begin
        if (C_note_counter >= C_note_divider_value) begin
            C_note_r <= ~C_note_r;
            C_note_counter <= 0;
        end else begin 
            C_note_counter <= C_note_counter + 1;
        end

        if (D_note_counter >= D_note_divider_value) begin
            D_note_r <= ~D_note_r;
            D_note_counter <= 0;
        end else begin 
            D_note_counter <= D_note_counter + 1;
        end

        if (E_note_counter >= E_note_divider_value) begin
            E_note_r <= ~E_note_r;
            E_note_counter <= 0;
        end else begin 
            E_note_counter <= E_note_counter + 1;
        end

        if (F_note_counter >= F_note_divider_value) begin
            F_note_r <= ~F_note_r;
            F_note_counter <= 0;
        end else begin 
            F_note_counter <= F_note_counter + 1;
        end

        if (G_note_counter >= G_note_divider_value) begin
            G_note_r <= ~G_note_r;
            G_note_counter <= 0;
        end else begin 
            G_note_counter <= G_note_counter + 1;
        end

        if (A_note_counter >= A_note_divider_value) begin
            A_note_r <= ~A_note_r;
            A_note_counter <= 0;
        end else begin 
            A_note_counter <= A_note_counter + 1;
        end

        if (B_note_counter >= B_note_divider_value) begin
            B_note_r <= ~B_note_r;
            B_note_counter <= 0;
        end else begin 
            B_note_counter <= B_note_counter + 1;
        end

        if (C2_note_counter >= C2_note_divider_value) begin
            C2_note_r <= ~C2_note_r;
            C2_note_counter <= 0;
        end else begin 
            C2_note_counter <= C2_note_counter + 1;
        end
    end
    
    always @(posedge clk) begin
        if (enable == 1) begin
            case (NS)
                0: begin
                    output_note_r <= C_note_r;
                end
                1: begin
                    output_note_r <= D_note_r;
                end
                2: begin
                    output_note_r <= E_note_r;
                end
                3: begin
                    output_note_r <= F_note_r;
                end
                4: begin
                    output_note_r <= G_note_r;
                end
                5: begin
                    output_note_r <= A_note_r;
                end
                6: begin
                    output_note_r <= B_note_r;
                end
                7: begin
                    output_note_r <= C2_note_r;
                end
                default: begin
                    output_note_r <= 0;
                end
            endcase
        end else begin 
            output_note_r <= 0;
        end
    end

    assign output_note = output_note_r;

endmodule 