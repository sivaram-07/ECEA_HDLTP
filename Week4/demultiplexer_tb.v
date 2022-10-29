`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.10.2022 10:32:02
// Design Name: 
// Module Name: demultiplexer_tb
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


module demultiplexer_tb();
reg in;
reg [1:0] s;
wire a,b,c,d;

demultiplexer uut(
.a(a),
.b(b),
.c(c),
.d(d),
.s(s),
.in(in)
);

initial
begin
in=1;s=2'b10;
#10  s=2'b00;
#10  s=2'b11;
#10 $finish;
end
endmodule
