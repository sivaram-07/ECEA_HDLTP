`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.10.2022 22:26:33
// Design Name: 
// Module Name: bcdadder_tb
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


module bcdadder_tb();
reg [3:0] a,b;
reg cin;
wire[3:0] sum;
wire cout;
wire [3:0] y;
bcdadder uut(.a(a),.b(b),.cin(cin),.sum(sum),.cout(cout),.y(y));

initial
begin
a=4'b0001;b=4'b0100;cin=0;
#10 a=4'b1001;b=4'b0111;cin=0;
#10 $finish;
end

endmodule
