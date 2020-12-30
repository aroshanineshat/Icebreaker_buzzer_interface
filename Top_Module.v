/***
    Programmer: Arash Roshanineshat
***/

`timescale 1ns/1ps

module top(
    input wire CLK,
    input wire P2_9,

    output wire P1B4
);

    wire [3:0] NS;
    wire enable;

    clk_divider inst1(
        .clk(CLK),
        .NS(NS),
        .enable (enable),
        .output_note(P1B4)
    );

    beat_scheduler inst2(
        .clk(CLK),
        .NS (NS),
        .toggle(P2_9),
        .enable(enable)
    );

endmodule 
