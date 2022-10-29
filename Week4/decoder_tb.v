`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.10.2022 11:57:21
// Design Name: 
// Module Name: decoder_tb
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


module decoder_tb();
reg in1,in2;
wire out1,out2,out3,out4;

decoder uut(
.in1(in1),
.in2(in2),
.out1(out1),
.out2(out2),
.out3(out3),
.out4(out4)
);
initial
begin
in1=0;in2=1;
#10 in1=0;in2=0;
#10 in1=1;in2=0;
#10 in1=1;in2=1;
#10 $finish;

end
endmodule
