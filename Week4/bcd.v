`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.10.2022 21:57:48
// Design Name: 
// Module Name: bcdadder
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


module bcdadder(
input [3:0]a,b,
input cin,
output reg [3:0] sum,
output reg cout,
output reg[4:0] y );

always @(*)
begin
y=a+b+cin;

if (y>5'b01001)
begin
sum = y + 4'b0110;
cout=1;
end
else
begin
sum=y;
cout=0;
end
end

endmodule

