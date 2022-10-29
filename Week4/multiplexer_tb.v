`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.10.2022 21:32:53
// Design Name: 
// Module Name: multiplexer_tb
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


module multiplexer_tb();
reg a,b,c,d;
reg [1:0]s;
wire out;

multiplexer uut(
.a(a),
.b(b),
.c(c),
.d(d),
.s(s),
.out(out)
);

initial
begin
a=1;b=0;c=0;d=0;
s=2'b00;

#10 a=0;b=1;c=1;d=1;s=2'b00;
#10 a=0;b=0;c=0;d=1;
s=2'b11;
#10 $finish;
end

endmodule
