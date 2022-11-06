`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.11.2022 20:18:55
// Design Name: 
// Module Name: sisosr_tb
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


module sisosr_tb();
reg rst,clk,si;
wire so;
wire [3:0]sr;

sisosr uut(.si(si),.clk(clk),.rst(rst),.so(so),.sr(sr));
initial
begin
clk=0;
#2 rst=1;
#10 rst=0;si=1;
#10 si=0;
#10 si=0;
#10 si=1;
#10 si=0;
#10 si=1;
#10 si=0;
#50 $finish;
end

always #5 clk=~clk;

endmodule
