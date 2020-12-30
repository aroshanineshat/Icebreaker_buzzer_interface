/***
    Programmer: Arash Roshanineshat
***/

`timescale 1ns / 1ps

module beat_scheduler(
    input wire clk,
    input wire toggle,

    output wire [3:0] NS,
    output wire enable
);

    localparam integer C_m = 0;
    localparam integer D_m = 1;
    localparam integer E_m = 2;
    localparam integer F_m = 3;
    localparam integer G_m = 4;
    localparam integer A_m = 5;
    localparam integer B_m = 6;
    localparam integer C2_m = 7;
    localparam integer S_m = 8;

    localparam numberofbeats_bits = 8;
    reg [numberofbeats_bits-1:0] note_index; 
    
    reg [3:0] NS_r;


    localparam integer BEAT_SPEED = 1000000; 
    always @(posedge clk) begin  
       case (note_index)  //JINGLE BELLS
            'd0: NS_r <= E_m; 
            'd1: NS_r <= E_m; 
            'd2: NS_r <= E_m; 
            'd3: NS_r <= S_m; 
            'd4: NS_r <= S_m; 
            'd5: NS_r <= S_m; 
            'd6: NS_r <= E_m; 
            'd7: NS_r <= E_m; 
            'd8: NS_r <= E_m; 
            'd9: NS_r <= S_m; 
            'd10: NS_r <= S_m; 
            'd11: NS_r <= S_m; 
            'd12: NS_r <= E_m; 
            'd13: NS_r <= E_m; 
            'd14: NS_r <= E_m; 
            'd15: NS_r <= E_m; 
            'd16: NS_r <= S_m; 
            'd17: NS_r <= S_m; 
            'd18: NS_r <= S_m; 
            'd19: NS_r <= S_m; 
            'd20: NS_r <= S_m; 
            'd21: NS_r <= S_m; 
            'd22: NS_r <= S_m; 
            'd23: NS_r <= E_m; 
            'd24: NS_r <= E_m; 
            'd25: NS_r <= E_m; 
            'd26: NS_r <= S_m; 
            'd27: NS_r <= S_m; 
            'd28: NS_r <= S_m; 
            'd29: NS_r <= E_m; 
            'd30: NS_r <= E_m; 
            'd31: NS_r <= E_m; 
            'd32: NS_r <= S_m; 
            'd33: NS_r <= S_m; 
            'd34: NS_r <= S_m; 
            'd35: NS_r <= E_m; 
            'd36: NS_r <= E_m; 
            'd37: NS_r <= E_m; 
            'd38: NS_r <= E_m; 
            'd39: NS_r <= S_m; 
            'd40: NS_r <= S_m; 
            'd41: NS_r <= S_m; 
            'd42: NS_r <= S_m; 
            'd43: NS_r <= S_m; 
            'd44: NS_r <= S_m; 
            'd45: NS_r <= S_m; 
            'd46: NS_r <= E_m; 
            'd47: NS_r <= E_m; 
            'd48: NS_r <= S_m; 
            'd49: NS_r <= S_m; 
            'd50: NS_r <= S_m; 
            'd51: NS_r <= S_m; 
            'd52: NS_r <= G_m; 
            'd53: NS_r <= G_m; 
            'd54: NS_r <= S_m; 
            'd55: NS_r <= S_m; 
            'd56: NS_r <= S_m; 
            'd57: NS_r <= S_m; 
            'd58: NS_r <= C_m; 
            'd59: NS_r <= C_m; 
            'd60: NS_r <= C_m; 
            'd61: NS_r <= S_m; 
            'd62: NS_r <= S_m; 
            'd63: NS_r <= S_m; 
            'd64: NS_r <= D_m; 
            'd65: NS_r <= D_m; 
            'd66: NS_r <= S_m; 
            'd67: NS_r <= S_m; 
            'd68: NS_r <= S_m; 
            'd69: NS_r <= S_m; 
            'd70: NS_r <= E_m; 
            'd71: NS_r <= E_m; 
            'd72: NS_r <= E_m; 
            'd73: NS_r <= E_m; 
            'd74: NS_r <= S_m; 
            'd75: NS_r <= S_m; 
            'd76: NS_r <= S_m; 
            'd77: NS_r <= S_m; 
            'd78: NS_r <= S_m; 
            'd79: NS_r <= S_m; 
            'd80: NS_r <= S_m; 
            'd81: NS_r <= S_m; 
            'd82: NS_r <= F_m; 
            'd83: NS_r <= F_m; 
            'd84: NS_r <= F_m; 
            'd85: NS_r <= S_m; 
            'd86: NS_r <= S_m; 
            'd87: NS_r <= S_m; 
            'd88: NS_r <= F_m; 
            'd89: NS_r <= F_m; 
            'd90: NS_r <= F_m; 
            'd91: NS_r <= S_m; 
            'd92: NS_r <= S_m; 
            'd93: NS_r <= S_m; 
            'd94: NS_r <= F_m; 
            'd95: NS_r <= F_m; 
            'd96: NS_r <= F_m; 
            'd97: NS_r <= S_m; 
            'd98: NS_r <= S_m; 
            'd99: NS_r <= S_m; 
            'd100: NS_r <= F_m; 
            'd101: NS_r <= F_m; 
            'd102: NS_r <= S_m; 
            'd103: NS_r <= S_m; 
            'd104: NS_r <= S_m; 
            'd105: NS_r <= S_m; 
            'd106: NS_r <= F_m; 
            'd107: NS_r <= F_m; 
            'd108: NS_r <= S_m; 
            'd109: NS_r <= S_m; 
            'd110: NS_r <= S_m; 
            'd111: NS_r <= S_m; 
            'd112: NS_r <= E_m; 
            'd113: NS_r <= E_m; 
            'd114: NS_r <= E_m; 
            'd115: NS_r <= S_m; 
            'd116: NS_r <= S_m; 
            'd117: NS_r <= S_m; 
            'd118: NS_r <= E_m; 
            'd119: NS_r <= E_m; 
            'd120: NS_r <= E_m; 
            'd121: NS_r <= S_m; 
            'd122: NS_r <= S_m; 
            'd123: NS_r <= S_m; 
            'd124: NS_r <= E_m; 
            'd125: NS_r <= E_m; 
            'd126: NS_r <= E_m; 
            'd127: NS_r <= S_m; 
            'd128: NS_r <= S_m; 
            'd129: NS_r <= S_m; 
            'd130: NS_r <= S_m; 
            'd131: NS_r <= S_m; 
            'd132: NS_r <= E_m; 
            'd133: NS_r <= E_m; 
            'd134: NS_r <= E_m; 
            'd135: NS_r <= S_m; 
            'd136: NS_r <= S_m; 
            'd137: NS_r <= S_m; 
            'd138: NS_r <= D_m; 
            'd139: NS_r <= D_m; 
            'd140: NS_r <= S_m; 
            'd141: NS_r <= S_m; 
            'd142: NS_r <= S_m; 
            'd143: NS_r <= S_m; 
            'd144: NS_r <= D_m; 
            'd145: NS_r <= D_m; 
            'd146: NS_r <= S_m; 
            'd147: NS_r <= S_m; 
            'd148: NS_r <= S_m; 
            'd149: NS_r <= S_m; 
            'd150: NS_r <= E_m; 
            'd151: NS_r <= E_m; 
            'd152: NS_r <= S_m; 
            'd153: NS_r <= S_m; 
            'd154: NS_r <= S_m; 
            'd155: NS_r <= S_m; 
            'd156: NS_r <= D_m; 
            'd157: NS_r <= D_m; 
            'd158: NS_r <= D_m; 
            'd159: NS_r <= D_m; 
            'd160: NS_r <= S_m; 
            'd161: NS_r <= S_m; 
            'd162: NS_r <= S_m; 
            'd163: NS_r <= S_m; 
            'd164: NS_r <= S_m; 
            'd165: NS_r <= S_m; 
            'd166: NS_r <= G_m; 
            'd167: NS_r <= G_m; 
            'd168: NS_r <= G_m; 
            'd169: NS_r <= G_m; 
            'd170: NS_r <= S_m; 
            'd171: NS_r <= S_m; 
            'd172: NS_r <= S_m; 
            'd173: NS_r <= S_m; 
            'd174: NS_r <= S_m; 
            'd175: NS_r <= S_m; 
            'd176: NS_r <= S_m; 
            'd177: NS_r <= S_m; 
       endcase 
    end  




    localparam integer STATE_Stop = 0;
    localparam integer STATE_Play = 1;

    reg toggle_r;


    reg CURRENT_STATE; 
    reg enable_r;

    reg [31:0] BEAT_Counter; 

    initial begin 
        CURRENT_STATE = STATE_Stop;
        enable_r = 0;
        BEAT_Counter = 0;
        NS_r = 0;
        toggle_r =0;
        note_index = 0;
    end



    always @(posedge clk) begin
        toggle_r <= toggle;
        case (CURRENT_STATE) 
            STATE_Stop:
                begin
                    if (!toggle_r == 1  && toggle == 1) begin
                        CURRENT_STATE <= STATE_Play;
                        enable_r <= 1;
                        BEAT_Counter <= 0;
                    end
                end
            STATE_Play:
                begin
                    if (!toggle_r == 1  && toggle == 1) begin
                        CURRENT_STATE <= STATE_Stop;
                        enable_r <= 0;
                    end

                    if (BEAT_Counter == BEAT_SPEED) begin
                        note_index <= note_index + 1;
                        BEAT_Counter <= 0;
                    end else begin
                        BEAT_Counter <= BEAT_Counter + 1;
                    end
                end
        endcase
    end

    assign NS = NS_r;
    assign enable = enable_r;


endmodule 