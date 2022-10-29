`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.10.2022 21:22:42
// Design Name: 
// Module Name: multiplexer
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


module multiplexer(
input a,b,c,d,
input [1:0] s,
output reg out

    );
always @(*)
case(s)
2'b00:out=a;
2'b01:out=b;
2'b10:out=c;
2'b11:out=d;
endcase
endmodule
