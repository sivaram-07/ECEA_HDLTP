# HDL-Training
## Week-1
      I've already have my laptop installed with Vivado 2020.3,iverilog and gtkwave as a part of my summer project.
      I did download the sample files of fulladder and created a project in Vivado.
      I've attached the screenshots of rtl_schematic and timing diagram in Week1 folder of this repo.
      
## Week-2(2-bit Adder)
      A fulladder gatelevel module is created with a,b and cin as input and sum and cout as output. sum is calculated using the logic sum=a(xor)b(xor)c and cout=a(and)b+b(and)c+a(and)c . wires d,e,f are assigned to hold the intermediate values (e.g.d=a(and)b).
     In this way one bit addition can be computed. To do,2_bit addition , ive created a generate varaible i and using for loop we can generate the same fulladder module 2 times.
     To do N bit addition ive generalised the size of input,output to be of  N.we can change the parameter N 
     The cout of first bit should be propagated as cin of next bit.This is acheived by assigning c[0]=cin and cout=c[N].
     In test bench , ive initialized the test values to the module fulladder via registers named a,b,cin and output is taken out via wires cout,sum.
     The fulladder module is instantiated in testbench. At time=0 the values for a,b are given as 0 and 3. After a delay of 50ns, the values are changed to 1 and 2.Afer 50ns it is changed to 2 and 2. The entire simulation is finished after a 50ns delay.
      We can see the sum,carry values in timing diagram attached.
      
##Week-3(2_bit Adder using different modelling styles)
      In Behavioral modelling, a case statement is used and if the input matches with anyone of the cases , the statements following that case will be executed. In this case the value of sum and cout is assigned with a value based on the input values.If we see the rtl diagram of this modelling we can see a rom.The statements to be executed after a case statements are stored in there.
      In behavioral testbench, ive toggled the values the values of input at specific time intervals to get a combination of all the inputs
      In dataflow modelling,the sum is calculated using the operator(^) and cout using operators(&,+).These operators acts on operands(a and b) and sum,cout is computed.assign statement is used to continously assign the datavalues to drive the output.
      The gatelevel modelling is similar to dataflow modelling except the operators are described by their gate structures.It is just a copy of the Week-2 task.
      
