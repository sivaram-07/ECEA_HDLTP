`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.10.2022 09:43:20
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



module fulladder    #(parameter N=2)
    (input [N-1:0] a,
    input [N-1:0] b,
    input cin,
    output [N-1:0] sum,
    output cout);
    wire c[N:0];
    genvar i;
    assign c[0]=cin;
    assign cout=c[N];
    generate for(i=0;i<N;i=i+1)
    begin  
    assign sum[i]=a[i]^b[i]^c[i];
    assign c[i+1]=(a[i]&b[i])+(b[i]&c[i])+(a[i]&c[i]); 
    end
    endgenerate
    
 endmodule      