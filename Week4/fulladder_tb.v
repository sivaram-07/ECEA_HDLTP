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
reg cin;
wire[1:0]sum;
wire cout;

fulladder uut(
.a(a),
.b(b),
.cin(cin),
.sum(sum),
.cout(cout));

initial
begin
c[0]=cin;
#10
a=2'b00;
b=2'b11;
cin=0;

#50
a=2'b01;
b=2'b10;
b=2'b10;
cin=0;

#50
a=2'b11;
b=2'b01;
cin=0;



#50 $finish;


end
endmodule
