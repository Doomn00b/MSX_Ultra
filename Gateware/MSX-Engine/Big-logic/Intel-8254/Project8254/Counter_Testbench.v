`timescale 1ns/10ps
module counter_tb();
reg clk=1'b1;
reg gate;
reg [15:0]cr;
reg [5:0]cw;
reg ws;
wire out;
wire cl;
wire sl;
counter1 c(clk,cw,gate,cr,ws,out,cl,sl);
localparam period=10;
always
#(period/2) clk=~clk;
initial begin

cw=6'b000111;
gate=1'b1;
#(1*period) cr=16'd4; ws=1'b1;
//#(2*period) gate=1'b1;
//#(7*period) gate=1'b0;
//#(5*period) gate=1'b1;
//#(0.5*period) gate=1'b0;

//gate=1'b0;
//#(1*period) cr=16'd4; ws=1'b1;
//#(2*period) gate=1'b1;
//#(0.5*period) gate=1'b0; ws=1'b0;
//#(2*period)  cr=16'd3; ws=1'b1;
//#(6*period) gate=1'b1;
//#(0.5*period) gate=1'b0;

//gate=1'b0;
//#(1*period) cr=16'd3; ws=1'b1;
//#(2*period) gate=1'b1;
//#(0.5*period) gate=1'b0;
//#(1*period) gate=1'b1;
//#(0.5*period) gate=1'b0;

#(20*period)
$stop;
end
endmodule
