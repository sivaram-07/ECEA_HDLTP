`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.10.2022 12:25:44
// Design Name: 
// Module Name: encoder_tb
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


module encoder_tb();
reg in1,in2,in3,in4;
wire out1,out2;

encoder uut(
.in1(in1),
.in2(in2),
.in3(in3),
.in4(in4),
.out1(out1),
.out2(out2)
);

initial
begin
in1=0;in2=0;in3=0;in4=1;
#10 in1=0;in2=0;in3=1;in4=0;
#10 in1=0;in2=1;in3=0;in4=0;
#10 in1=1;in2=0;in3=0;in4=0;
#10 $finish;
end
endmodule
