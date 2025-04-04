`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.04.2025 22:34:56
// Design Name: 
// Module Name: Instruction_Control_Unit
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


`timescale 1ns / 1ps

module Instruction_Control_Unit (
    input [15:0] instr,      // 16-bit instruction from Instruction Memory
    output reg [12:0] addr,  // 13-bit Data Memory address
    output reg add_en,       // Enable signal for ADD
    output reg sub_en,       // Enable signal for SUB
    output reg mul_en,       // Enable signal for MUL
    output reg div_en        // Enable signal for DIV
);

    always @(*) begin
        addr = instr[15:3]; 
        
        add_en = 0;
        sub_en = 0;
        mul_en = 0;
        div_en = 0;
        
        case (instr[1:0]) 
            2'b00: add_en = 1;  // ADD
            2'b01: sub_en = 1;  // SUB
            2'b10: mul_en = 1;  // MUL
            2'b11: div_en = 1;  // DIV
        endcase
    end

endmodule
