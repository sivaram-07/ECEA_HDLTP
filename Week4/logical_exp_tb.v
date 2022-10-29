`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.10.2022 11:25:50
// Design Name: 
// Module Name: logicalexp_tb
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


module logicalexp_tb();
reg a,b,c;
wire x;

logicalexp uut(
.a(a),
.b(b),
.c(c),
.x(x)
);

initial
begin
a=1;b=0;c=1;
#10 a=1;b=0;c=0;
#10 a=1;b=1;c=1;
#10 $finish;
end
endmodule
