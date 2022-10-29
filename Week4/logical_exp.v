`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.10.2022 11:23:57
// Design Name: 
// Module Name: logicalexp
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


module logicalexp(
    input a,
    input b,
    input c,
    output x
    );
 assign x=(a&b)+(a*c)+(a&b&c);
 endmodule
