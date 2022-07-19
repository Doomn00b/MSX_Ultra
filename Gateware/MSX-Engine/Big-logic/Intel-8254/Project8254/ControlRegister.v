module ControlRegister (
inout [7:0]  Data,
input ReadSignal,
input WriteSignal,
input [5:0] cw0_i,
input [5:0] cw1_i,
input [5:0] cw2_i,
input [2:0] EnabStatusLatches_i,
output [5:0] cw0_o,
output [5:0] cw1_o,
output [5:0] cw2_o,
output reg [2:0]readback,
output [2:0] EnabStatusLatches_o
);


reg [7:0] ControlWord;
reg [7:0] DataOut;

reg [1:0] ControlWord0;
reg [1:0] ControlWord1;
reg [1:0] ControlWord2;


assign cw0_o = (ControlWord[7:6] == 2'b00) ? ControlWord[5:0] : cw0_i;

assign cw1_o = (ControlWord[7:6] == 2'b01) ? ControlWord[5:0]: cw1_i;

assign cw2_o = (ControlWord[7:6] == 2'b10) ? ControlWord[5:0] :cw2_i;


assign EnabStatusLatches_o = (ControlWord[7:6] == 2'b11 && ControlWord[4]==1'b0 ) ? ControlWord[3:1] : EnabStatusLatches_i;


always @(posedge WriteSignal) begin
	ControlWord = Data;
	if(ControlWord[7:6]==2'b11)
	begin
		if(ControlWord[1]==1'b1 && ControlWord[5]==1'b0)
			readback[0]=1'b1;
		if(ControlWord[2]==1'b1 && ControlWord[5]==1'b0)
			readback[1]=1'b1;
		if(ControlWord[3]==1'b1 && ControlWord[5]==1'b0)
			readback[2]=1'b1;
	end
end

always @(negedge WriteSignal) begin
	readback=3'd0;
end

always @(posedge ReadSignal) begin
	DataOut = ControlWord;
end

assign Data = (ReadSignal==1'b1)?DataOut:8'hzz;

endmodule