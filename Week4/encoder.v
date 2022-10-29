`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.10.2022 12:14:27
// Design Name: 
// Module Name: encoder
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


module encoder(
input in1,in2,in3,in4,
output reg out1,out2
    );
always @(*)
case({in1,in2,in3,in4})
4'b0001: begin out1=0;out2=0; end
4'b0010: begin out1=0;out2=1; end
4'b0100: begin out1=1;out2=0; end
4'b1000: begin out1=1;out2=1; end
endcase

endmodule
