`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.11.2022 10:55:36
// Design Name: 
// Module Name: hamming
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
//module piso(input [3:0]me,
//input clk,
//output reg so,
//output reg [1:0] count);

//initial
//begin
//count=2'b00;
//end
//always @(posedge clk)
//begin
//count<=count+1;
//case(count)
//2'b00:so<=me[3];
//2'b01:so<=me[2];
//2'b10:so<=me[1];
//2'b11:so<=me[0];
//endcase
//end
//endmodule

module hamming(
input clk,som,m,
output reg[6:0]o,
reg so,
reg[2:0]sr,reg[3:0]me, 
reg [2:0]count);


always @(posedge clk)
begin
me[3]<=me[2];
me[2]<=me[1];
me[1]<=me[0];
me[0]<=m;
end
always @ (posedge clk or posedge som)
if(som)
begin
sr<=3'b000;
count<=3'b000;
me<=4'b0000;
o<=6'b000000;
end
else
begin
count=count+1;
sr[2]<=sr[0]^m;
sr[1]<=sr[2]^(sr[0]^m);
sr[0]<=sr[1];
so<=sr[0];
if(count==3'b101)
begin
o={sr[2],sr[1],sr[0],me[3],me[2],me[1],me[0]};
count<=0;
end
end
endmodule
