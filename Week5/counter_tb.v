`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.11.2022 19:36:35
// Design Name: 
// Module Name: counter_tb
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


module counter_tb();
reg clk,rst;
wire [3:0] count;

counter uut(.clk(clk),.rst(rst),.count(count));

initial
begin
clk=0;
rst=0;
#10 rst=1;
#10 rst=0;
#200 $finish;
end
always #5 clk=~clk;


endmodule
