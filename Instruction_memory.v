`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.04.2025 22:05:58
// Design Name: 
// Module Name: Instruction_memory
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Instruction_memory(
    input [7:0] address,    // 8 bit program counter
    output reg [15:0] instr     // 16-bit instruction output
    );
    
    always @(*) begin
        case (address)
            // Format: { 13-bit Data Memory Address, 1-bit Reserved, 2-bit Opcode }
            8'd0:  instr = {13'd0, 1'b0, 2'b00};  // ADD  from Data Memory[0]
            8'd1:  instr = {13'd0, 1'b0, 2'b01};  // SUB  from Data Memory[0]
            8'd2:  instr = {13'd0, 1'b0, 2'b10};  // MUL  from Data Memory[0]
            8'd3:  instr = {13'd0, 1'b0, 2'b11};  // DIV  from Data Memory[0]

            8'd4:  instr = {13'd1, 1'b0, 2'b00};  // ADD  from Data Memory[1]
            8'd5:  instr = {13'd1, 1'b0, 2'b01};  // SUB  from Data Memory[1]
            8'd6:  instr = {13'd1, 1'b0, 2'b10};  // MUL  from Data Memory[1]
            8'd7:  instr = {13'd1, 1'b0, 2'b11};  // DIV  from Data Memory[1]

            8'd8:  instr = {13'd2, 1'b0, 2'b00};  // ADD  from Data Memory[2]
            8'd9:  instr = {13'd2, 1'b0, 2'b01};  // SUB  from Data Memory[2]
            8'd10: instr = {13'd2, 1'b0, 2'b10};  // MUL  from Data Memory[2]
            8'd11: instr = {13'd2, 1'b0, 2'b11};  // DIV  from Data Memory[2]

            8'd12: instr = {13'd3, 1'b0, 2'b00};  // ADD  from Data Memory[3]
            8'd13: instr = {13'd3, 1'b0, 2'b01};  // SUB  from Data Memory[3]
            8'd14: instr = {13'd3, 1'b0, 2'b10};  // MUL  from Data Memory[3]
            8'd15: instr = {13'd3, 1'b0, 2'b11};  // DIV  from Data Memory[3]

            8'd16: instr = {13'd4, 1'b0, 2'b00};  // ADD  from Data Memory[4]
            8'd17: instr = {13'd4, 1'b0, 2'b01};  // SUB  from Data Memory[4]
            8'd18: instr = {13'd4, 1'b0, 2'b10};  // MUL  from Data Memory[4]
            8'd19: instr = {13'd4, 1'b0, 2'b11};  // DIV  from Data Memory[4]

            8'd20: instr = {13'd5, 1'b0, 2'b00};  // ADD  from Data Memory[5]
            8'd21: instr = {13'd5, 1'b0, 2'b01};  // SUB  from Data Memory[5]
            8'd22: instr = {13'd5, 1'b0, 2'b10};  // MUL  from Data Memory[5]
            8'd23: instr = {13'd5, 1'b0, 2'b11};  // DIV  from Data Memory[5]

            8'd24: instr = {13'd6, 1'b0, 2'b00};  // ADD  from Data Memory[6]
            8'd25: instr = {13'd6, 1'b0, 2'b01};  // SUB  from Data Memory[6]
            8'd26: instr = {13'd6, 1'b0, 2'b10};  // MUL  from Data Memory[6]
            8'd27: instr = {13'd6, 1'b0, 2'b11};  // DIV  from Data Memory[6]

            8'd28: instr = {13'd7, 1'b0, 2'b00};  // ADD  from Data Memory[7]
            8'd29: instr = {13'd7, 1'b0, 2'b01};  // SUB  from Data Memory[7]
            8'd30: instr = {13'd7, 1'b0, 2'b10};  // MUL  from Data Memory[7]
            8'd31: instr = {13'd7, 1'b0, 2'b11};  // DIV  from Data Memory[7]

            8'd32: instr = {13'd8, 1'b0, 2'b00};  // ADD  from Data Memory[8]
            8'd33: instr = {13'd8, 1'b0, 2'b01};  // SUB  from Data Memory[8]
            8'd34: instr = {13'd8, 1'b0, 2'b10};  // MUL  from Data Memory[8]
            8'd35: instr = {13'd8, 1'b0, 2'b11};  // DIV  from Data Memory[8]

            8'd36: instr = {13'd9, 1'b0, 2'b00};  // ADD  from Data Memory[9]
            8'd37: instr = {13'd9, 1'b0, 2'b01};  // SUB  from Data Memory[9]
            8'd38: instr = {13'd9, 1'b0, 2'b10};  // MUL  from Data Memory[9]
            8'd39: instr = {13'd9, 1'b0, 2'b11};  // DIV  from Data Memory[9]

            8'd40: instr = {13'd10, 1'b0, 2'b00}; // ADD  from Data Memory[10]
            8'd41: instr = {13'd10, 1'b0, 2'b01}; // SUB  from Data Memory[10]
            8'd42: instr = {13'd10, 1'b0, 2'b10}; // MUL  from Data Memory[10]
            8'd43: instr = {13'd10, 1'b0, 2'b11}; // DIV  from Data Memory[10]

            // Default case: No operation (NOP)
            default: instr = 16'b0000000000000000; // No operation
        endcase
    end

endmodule
