`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.11.2022 16:47:19
// Design Name: 
// Module Name: jkflipflop_tb
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


module jkflipflop_tb();
reg j,k,clk;
wire q;

jkflipflop uut(.j(j),.k(k),.clk(clk),.q(q));
initial
begin
clk=0;
j=0;k=1;
#10 j=1;k=0;
#10 j=0;k=0;
#10 j=0;k=1;
#30 $finish;
end 

always #5 clk=~clk;  
endmodule
