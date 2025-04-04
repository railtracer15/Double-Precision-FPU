`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.04.2025 22:23:41
// Design Name: 
// Module Name: Program_counter
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


module Program_counter(
    input clk, reset,
    output reg [7:0] pc
    );
    
    always @(posedge clk) begin
        if (reset)
            pc <= 8'b0000_0000;
        else
            pc <= pc + 8'b0000_0001;
    end
endmodule
