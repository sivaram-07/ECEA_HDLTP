`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.10.2022 09:43:20
// Design Name: 
// Module Name: fulladder
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



module fulladder  
    (input [1:0] a,
    input [1:0] b,
    output reg[1:0] sum,
    output reg cout);
    always @(a or b)
    begin
    case({a,b})
    4'b0000:begin sum=2'b00; cout=0; end
    4'b0001:begin sum=2'b01; cout=0; end
    4'b0010:begin sum=2'b10; cout=0; end
    4'b0011:begin sum=2'b11; cout=0; end
    4'b0100:begin sum=2'b01; cout=0; end
    4'b0101:begin sum=2'b10; cout=0; end
    4'b0110:begin sum=2'b11; cout=0; end
    4'b0111:begin sum=2'b00; cout=1; end
    4'b1000:begin sum=2'b10; cout=0; end
    4'b1001:begin sum=2'b11; cout=0; end
    4'b1010:begin sum=2'b00; cout=1; end
    4'b1011:begin sum=2'b00; cout=1; end
    4'b1100:begin sum=2'b11; cout=0; end
    4'b1101:begin sum=2'b00; cout=1; end
    4'b1110:begin sum=2'b00; cout=1; end
    4'b1111:begin sum=2'b00; cout=1; end
    default : begin sum=2'b00; cout=0; end
    endcase
    end
 
    
 
  
 
    
    
 endmodule      