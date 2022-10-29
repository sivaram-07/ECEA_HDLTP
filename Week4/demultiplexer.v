`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.10.2022 10:27:27
// Design Name: 
// Module Name: demultiplexer
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


module demultiplexer(
    input in,
    input [1:0] s,
    output reg a,b,c,d
    );
  always @(*)
  case(s)
  2'b00: begin a=in;b=~in;c=~in;d=~in; end
  2'b01: begin a=~in;b=in;c=~in;d=~in; end
  2'b10: begin a=~in;b=~in;c=in;d=~in; end
  2'b11: begin a=~in;b=~in;c=~in;d=in; end
  endcase
 endmodule
