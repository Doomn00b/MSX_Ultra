module Chip8254(

inout [7:0]  Data,
input RD,
input WR,
input CS,
input A0,
input A1,
input clk0,
input clk1,
input clk2,
input gate0,
input gate1,
input gate2,
output out0,
output out1,
output out2
);


wire [3:0] Read_Enable;
wire [3:0] Write_Enable;
wire [2:0] readback;
wire [5:0] cw0_i,cw1_i,cw2_i,cw0_o,cw1_o,cw2_o;
wire [2:0] EnabStatusLatches_i;
wire [2:0] EnabStatusLatches_o;

Read_Write RWM(RD,WR,CS,A0,A1,Read_Enable,Write_Enable);


counter c0(Read_Enable[0],clk0,cw0_o,gate0,Data,Write_Enable[0],readback[0],EnabStatusLatches_o[0],out0);
counter c1(Read_Enable[1],clk1,cw1_o,gate1,Data,Write_Enable[1],readback[1],EnabStatusLatches_o[1],out1);
counter c2(Read_Enable[2],clk2,cw2_o,gate2,Data,Write_Enable[2],readback[2],EnabStatusLatches_o[2],out2);

assign cw0_i=cw0_o;
assign cw1_i=cw1_o;
assign cw2_i=cw2_o;
assign EnabStatusLatches_i=EnabStatusLatches_o;

ControlRegister CRG(Data,Read_Enable[3],Write_Enable[3],cw0_i,cw1_i,cw2_i,EnabStatusLatches_i,cw0_o,cw1_o,cw2_o,readback,EnabStatusLatches_o);


endmodule


