`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.11.2022 20:07:45
// Design Name: 
// Module Name: sisosr
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


module sisosr(
input si,clk,rst,
output reg so, 
output reg[3:0]sr  );

always @ (posedge clk or posedge rst)
if(rst)
sr=4'b0000;
else
begin
sr[3]<=si;
sr[2]<=sr[3];
sr[1]<=sr[2];
sr[0]<=sr[1];
so<=sr[0];
end
endmodule
