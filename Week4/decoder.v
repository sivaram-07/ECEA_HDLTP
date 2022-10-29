`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.10.2022 11:52:32
// Design Name: 
// Module Name: decoder
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


module decoder(
    input in1,
    input in2,
    output reg out1,out2,out3,out4
    );
always @(*)
case({in1,in2})
2'b00 : begin out1=0;out2=0;out3=0;out4=1; end
2'b01 : begin out1=0;out2=0;out3=1;out4=0; end
2'b10 : begin out1=0;out2=1;out3=0;out4=0; end
2'b11 : begin out1=1;out2=0;out3=0;out4=0; end

endcase
endmodule
