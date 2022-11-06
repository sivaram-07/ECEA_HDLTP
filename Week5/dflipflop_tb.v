`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.11.2022 14:09:54
// Design Name: 
// Module Name: dflipflop_tb
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


module dflipflop_tb();
reg clk,d;
wire q,qd;

dflipflop uut(.d(d),.clk(clk),.q(q),.qd(qd));
initial
begin
clk=0;
d=0;
end
always #5 clk=~clk;
always #10 d=~d;
always #50 $finish;

endmodule
