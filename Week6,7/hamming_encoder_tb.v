`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.11.2022 12:10:18
// Design Name: 
// Module Name: piso_tb
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



module hamming_tb();
reg rst,clk;
reg si;
wire so;
wire [2:0] sr;
wire [6:0]o;

wire [2:0]count;
hamming uut(.m(si),.clk(clk),.som(rst),.so(so),.sr(sr),.o(o),.count(count));
initial
begin
clk=0;
#2 rst=1;
#10 rst=0;si=1;
#10 si=0;
#10 si=0;
#10 si=1;
#30 rst=1;
#10 rst=0;si=1;
#10 si=1;
#10 si=0;
#10 si=1;


#30 $finish;
end

always #5 clk=~clk;

endmodule





