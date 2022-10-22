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
    wire d,e,f;
    xor(sum[i],a[i],b[i],c[i]);
    and(d,a[i],b[i]);
    and(e,b[i],c[i]);
    and(f,a[i],c[i]);
    or(c[i+1],d,e,f);
    end
    endgenerate
    
 endmodule      