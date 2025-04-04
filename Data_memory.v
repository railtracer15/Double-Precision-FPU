`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.04.2025 21:45:18
// Design Name: 
// Module Name: Data_memory
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

module Data_memory (
    input [12:0] address,
    output reg [127:0] data
);

    always @(*) begin
        case (address)
            // IEEE-754 Floating Point Values
            13'd0:  data = {64'h4060000000000000, 64'hC060000000000000}; // (3.5, -3.5)
            13'd1:  data = {64'h405EDD2F1A9FBE77, 64'hC05EDD2F1A9FBE77}; // (123.456, -123.456)
            13'd2:  data = {64'h0000000000000001, 64'h0000000000000002}; // (Smallest denormalized, next smallest)
            13'd3:  data = {64'h7FF0000000000000, 64'hFFF0000000000000}; // (+Infinity, -Infinity)
            13'd4:  data = {64'h7FF8000000000000, 64'h7FF8000000000001}; // (NaN, Quiet NaN)
            13'd5:  data = {64'h0000000000000000, 64'h8000000000000000}; // (+0, -0)
            13'd6:  data = {64'h7FEFFFFFFFFFFFFF, 64'hFFEFFFFFFFFFFFFF}; // (Max double, Min negative double)
            13'd7:  data = {64'h0010000000000000, 64'h7FF0000000000000}; // (Min normal double, Infinity)
            13'd8:  data = {64'h3FF0000000000000, 64'h4000000000000000}; // (1.0, 2.0)
            13'd9:  data = {64'h4020000000000000, 64'h4030000000000000}; // (8.0, 16.0)
            13'd10: data = {64'h3FD999999999999A, 64'h3FE0000000000000}; // (0.4, 0.5)
            13'd11:data = {64'hDEADBEEFCAFEBABE, 64'hDEADBEEFCAFEBABE}; // Random Data
            
            // Assign rest of the locations to 0
            default: data = 128'h00000000000000000000000000000000;
        endcase
    end

endmodule