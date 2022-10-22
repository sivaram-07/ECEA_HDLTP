`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.10.2022 23:20:43
// Design Name: 
// Module Name: fulladder_tb
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


module fulladder_tb();
reg[1:0]a,b;
wire[1:0]sum;
wire cout;

fulladder uut(
.a(a),
.b(b),
.sum(sum),
.cout(cout));

initial
begin
a[1]=0;
a[0]=0;
b[1]=0;
b[0]=0;
end

always #80 a[1]=!a[1];
always #40 a[0]=!a[0];
always #20 b[1]=!b[1];
always #10 b[0]=!b[0];

initial
#200 $finish;

endmodule


