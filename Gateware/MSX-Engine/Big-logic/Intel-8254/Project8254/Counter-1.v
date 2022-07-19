module counter (
	input Readen,
	input clk,
	input [5:0] controlWord,
	input gate,
	inout reg [7:0]bus, //databus
    input writeEnable, //write enable
	input statusRead,
	input readback,
	output reg out
	
	
);

reg[5:0] controlWord_temp;

localparam m0 = 5'd0;
localparam m1 = 5'd1;
localparam m2 = 5'd2;
localparam m3 = 5'd3;
localparam m4 = 5'd4;
localparam m5 = 5'd5;

localparam initialization= 5'd6;
localparam m4_0= 5'd7;
localparam m4_1= 5'd8;
localparam m4_2= 5'd9;
localparam m4_3= 5'd10;

localparam m0_0= 5'd11;
localparam m0_1= 5'd12;
localparam m0_2= 5'd13;

localparam m1_0= 5'd14;
localparam m1_1= 5'd15;
localparam m1_2= 5'd16;

localparam m5_0= 5'd17;
localparam m5_1= 5'd18;
localparam m5_2= 5'd19;
localparam m5_3= 5'd20;

localparam m2_0= 5'd21;
localparam m2_1= 5'd22;
localparam m2_2= 5'd23;

localparam m3_0=5'd24;
localparam m3_1=5'd25;
localparam m3_2=5'd26;

wire statusLatch3;
reg [7:0]outbus;
wire[2:0] mode;
reg gateFlag=1'b1;
reg [15:0] N;
reg [15:0] Threshold;
reg OddFlag;
reg [15:0]count;
reg CRFlag = 1'b0;
assign mode = controlWord[3:1];
reg [15:0]CR;
reg latchcount=1'b0;
reg [1:0]readstatus=2'd3;//msb then lsb etc
reg [1:0]writestatus=2'd3;//msb then lsb etc
reg [4:0] state_reg;
reg [4:0] state_next;
reg statusReadr=1'b0;//flag to statusread
reg CRSignal;
wire [15:0] countLatch;
wire statusLatch;
reg  statusLatch1;
wire [5:0]statusLatch2;
assign bus=(Readen)?outbus:8'bz;
assign countLatch[15:0]=(latchcount==1'b0)?count[15:0]:countLatch[15:0];
assign statusLatch2[5:0]=(controlWord[5:4]!=00)?controlWord[5:0]:statusLatch2[5:0];
assign statusLatch=(statusReadr==1'b1)?statusLatch:out;
assign statusLatch3=(statusReadr==1'b0)?statusLatch1:statusLatch3;
always @(mode)
begin
	case(mode)
		m0: 
			out = 1'b0;
		m1: 
			begin
			out = 1'b1;
			gateFlag=1'b0;
			end
		m2:
			out=1'b1;
   		m3:
			out=1'b1;
   		m4: 
			out = 1'b1;
		m5:
			begin
    			out = 1'b1;
    			gateFlag=1'b0;
   			end
 	endcase
end

always @(posedge statusRead)
begin
	statusReadr=1'b1;
end

always @(posedge Readen)
begin
	if (statusReadr==1'b1)
		begin
		outbus[7:0]={statusLatch,statusLatch3,statusLatch2[5:0]};
		statusReadr=1'b0;
		end
	else
		begin
		if (readstatus==2'b11)
			begin
			if (statusLatch2[5:4]==2'b01)
				readstatus=2'd2;
			else if (statusLatch2[5:4]==2'b10)
				readstatus=2'd1;
			else if (statusLatch2[5:4]==2'b11)
				readstatus=2'd0;
			end 
		if (readstatus==2'd0)
			begin
			outbus[7:0]=countLatch[7:0];
			readstatus=2'd1;
			end
		else if (readstatus==2'd1)
			begin
			outbus[7:0]=countLatch[15:8];
			readstatus=2'd3;
			latchcount=1'b0;
			end
		else if (readstatus==2'd2)
			begin
			outbus[7:0]=countLatch[7:0];
			readstatus=2'd3;
			latchcount=1'b0;
			end
		end
end

always @(posedge writeEnable)
begin
	if (writestatus==2'd3)
		begin
		if (statusLatch2[5:4]==2'b01) 
			begin
			writestatus=2'd2;
			CR[15:8]=8'b0;
			end
		else if (statusLatch2[5:4]==2'b10)
			begin
			writestatus=2'd1;
			CR[15:8]=8'b0;
			end
		else if (statusLatch2[5:4]==2'b11)
			writestatus=2'd0;
		end
	if (writestatus==2'd0)
		begin
		CR[7:0]=bus[7:0];
		writestatus=2'd1;
		end
	else if (writestatus==2'd1)
		begin
		CR[15:8]=bus[7:0];
		writestatus=2'd3;
		CRSignal=1'b1;
		end
	else if (writestatus==2'd2)
		begin
		CR[7:0]=bus[7:0];
		writestatus=2'd3;
		CRSignal=1'b1;
		end
end

always @(controlWord)
begin
	if (controlWord[5:4]==2'b00)
		begin
		latchcount=1'b1;
		end
end
always @(posedge readback)
begin
latchcount=1'b1;
end
always @(posedge CRSignal)
begin
	CRFlag = 1'b1;
	statusLatch1=1'b1;
	CRSignal = 1'b0;
end

always @(negedge CRFlag)
begin
	statusLatch1=1'b0;
end

always @(posedge clk,CRFlag)
begin
	if(CRFlag)
		begin
    		if((state_reg===m5_3) || (state_reg===m5_1)||(state_reg===m1_1)||(state_reg===m1_2)||(state_reg===m2_1)||(state_reg===m2_2))
    			state_reg <= state_next;
    		else
			state_reg = initialization;
		end
	else
		state_reg <= state_next;
end



always @(gate)
begin
	gateFlag = 1'b1;
end

always @(state_reg,mode,count,CRFlag,gateFlag)
begin
	if (gateFlag==1'b1 && mode==3'd1)
		begin
		state_next=m1_1;
		count=CR;
		end
	else if (gateFlag==1'b1 && mode==3'd5)
		begin
		state_next=m5_1;
		count=CR;
		end
	else
		begin
		case(state_reg)
			initialization:
				begin
				case(mode)
				m0:
					state_next = m0_0;
				m1:
					state_next = m1_0;
				m2:
					state_next = m2_0;
	   			m3:
					state_next = m3_0;
				m4:
					state_next = m4_0;
				m5:
					state_next = m5_0 ;
				endcase
				end
			m0_0://Mode 0 states
				if(mode==3'b000)
					state_next = m0_1;
   			m0_1:
				if((mode==3'b000) && (CRFlag==1'b1))
					state_next = initialization;
				else if(count>16'd0)
					state_next = m0_1;
				else
				state_next = m0_2;
   			m0_2:
				if(mode==3'b000&& CRFlag==1'b0)
					state_next = m0_2;
				else if (mode==3'b000 && CRFlag==1'b1)
					state_next=initialization;
			//Mode 1 states
			m1_0:
				if(mode==3'b001 && (gateFlag==1'b1))
					state_next = m1_1;
				else
					state_next=m1_0;
			m1_1:
				if((mode==3'b001) && (gateFlag==1'b1))
					state_next = initialization;
				else if(count>16'd0)
       					state_next = m1_1;
				else
					state_next = m1_2;
			m1_2:
				if(mode==3'b001 && gateFlag==1'b0)
					state_next = m1_2;
				else if (mode==3'b001 && gateFlag==1'b1)
					state_next=initialization;
			m4_0://Mode 4 states
				if(mode==3'b100)
					state_next = m4_1;
			m4_1:
				if((mode==3'b100) && (CRFlag==1'b1))
					state_next = initialization;
				else if(count>16'd0)
					state_next = m4_1;
     				else
		       			state_next = m4_2;   
   			m4_2:
				if(mode==3'b100)
					state_next = m4_3;
			m4_3:
				if(mode==3'b100)
					if(CRFlag==1'b0)
						state_next = m4_3;
					else
						state_next = initialization;

			//Mode 5 states
   			m5_0:
				if((mode==3'b101) && (gateFlag==1'b1))
					state_next = m5_1;
				else
					state_next = m5_0;
			m5_1:
				if((mode==3'b101) && (gateFlag==1'b1))
					state_next = m5_0;
				else if(count>0)
					state_next = m5_1;
				else
					state_next = m5_2;
			m5_2:
				if(mode==3'b101)
					state_next = m5_3;
			m5_3:
				if(mode==3'b101)
					if(gateFlag==1'b1)
						state_next = m5_0;
					else
						state_next = m5_3;

			//Mode 2 states
			m2_0:
				if((mode==3'b010) && (gateFlag==1'b1))
					state_next=m2_1;
				else if(mode==3'b010)
					state_next=m2_0;
			m2_1:
				if((mode==3'b010) && (gateFlag==1'b1) && (count >16'd2))
					state_next=m2_1;
				else if ((mode==3'b010) && (gateFlag==1'b1) && (count  == 16'd2))
					state_next=m2_2;
				else if ((mode==3'b010) && (gateFlag==1'b0))
					state_next=m2_1;
			m2_2:
				if((mode==3'b010) && (gateFlag==1'b1))
					state_next=m2_0;
				else if((mode==3'b010))
					state_next=m2_2;
			//Mode 3 states
			m3_0:
				if((mode==3'b011) && (gateFlag==1'b1))
					state_next=m3_1;
				else if(mode==3'b011)
					state_next=m3_0;
			m3_1:
				if((mode==3'b011) && (gateFlag==1'b1) && (count > Threshold))
					state_next=m3_1;
				else if ((mode==3'b011) && (gateFlag==1'b1) && (count  == Threshold))
					state_next=m3_2;
				else if ((mode==3'b011) && (gateFlag==1'b0))
					state_next=m3_1;
   			m3_2:
				if((mode==3'b011) && (gateFlag==1'b1) && (count > 1))
					state_next=m3_2;
				else if ((mode==3'b011) && (gateFlag==1'b1) && (count  == 1))
					state_next=m3_0;
			default: ;
		endcase
	end
end


// Moore Output Logic
always @(state_reg,posedge clk)
begin
	case(state_reg)
		initialization:
			begin
			case(mode)
				m0:
					begin
					out=1'b0;
					CRFlag = 1'b0;
					end
      				m1: 
					begin
					out=1'b1;
					CRFlag = 1'b0;
					end
				m2: 
					begin
					out=1'b1;
					CRFlag = 1'b0;
      					end
				m3:
					begin
					out=1'b1;
					CRFlag = 1'b0;
					N=CR;
					if(CR[0]==1'b1)
						if(statusLatch2[0]==1'b0)
							Threshold=((N-1)>>>1)+1;
						else
							Threshold=(((N[15:12]*1000+N[11:8]*100+N[7:4]*10+N[3:0])-1)>>>1)+1;
					else
						if(statusLatch2[0]==1'b0)
							Threshold=((N)>>>1)+1;
						else
							Threshold=((N[15:12]*1000+N[11:8]*100+N[7:4]*10+N[3:0])>>>1)+1;
					end
					m4:
					begin
       					out=1'b1;
       						CRFlag = 1'b0;
      					end
					m5:
					begin
						out=1'b1;
						CRFlag = 1'b0;
					end
				default:;
			endcase
		end
		//Mode 0  
		m0_0:
			begin
			count = CR;
    			out = 1'b0;
			end
		m0_1:
			begin
			out=1'b0;
			if(gate)
				begin
				if(statusLatch2[0]==1'b0)
					count = count-1;
				else
					begin
					if(count[3:0]>4'h0)
						count[3:0]=count[3:0]-1;
					else
						begin
						count[3:0]=4'h9;
						if(count[7:4]>4'h0)
							count[7:4]=count[7:4]-1;
						else
							begin
							count[7:4]=4'h9;
							if(count[11:8]>4'h0)
								count[11:8]=count[11:8]-1;
							else
								begin
								count[11:8]=4'h9;
								count[15:12]=count[15:12]-1;
								end
							end
						end
					end
				end
			end
		m0_2:
			out = 1'b1;

		//Mode 1   
		m1_0:
			begin
			count = CR;
			out = 1'b1;
			end
  		m1_1:
			begin
   			out=1'b0;
				begin
				if(statusLatch2[0]==1'b0)
					count = count-1;
				else
					begin
					if(count[3:0]>4'h0)
						count[3:0]=count[3:0]-1;
					else
						begin
						count[3:0]=4'h9;
						if(count[7:4]>4'h0)
							count[7:4]=count[7:4]-1;
						else
							begin
							count[7:4]=4'h9;
							if(count[11:8]>4'h0)
								count[11:8]=count[11:8]-1;
							else
								begin
								count[11:8]=4'h9;
								count[15:12]=count[15:12]-1;
								end
							end
						end
					end
				end
			gateFlag=1'b0;
			end
		m1_2:
			out = 1'b1;
		//Mode 4
		m4_0:
			begin
			count = CR;
			out = 1'b1;
			end
		m4_1:
			begin
			out=1'b1;
			if(gate)
				begin
				if(statusLatch2[0]==1'b0)
					count = count-1;
				else
					begin
					if(count[3:0]>4'h0)
						count[3:0]=count[3:0]-1;
					else
						begin
						count[3:0]=4'h9;
						if(count[7:4]>4'h0)
							count[7:4]=count[7:4]-1;
						else
							begin
							count[7:4]=4'h9;
							if(count[11:8]>4'h0)
								count[11:8]=count[11:8]-1;
							else
								begin
								count[11:8]=4'h9;
								count[15:12]=count[15:12]-1;
								end
							end
						end
					end
				end
			end
		m4_2:
			out = 1'b0; 
		m4_3: 
			out = 1'b1;
		//Mode 5
		m5_0:
			begin
			count = CR;
			out = 1'b1;
			end
		m5_1:
			begin
			gateFlag = 1'b0;
			out = 1'b1;
			begin
				if(statusLatch2[0]==1'b0)
					count = count-1;
				else
					begin
					if(count[3:0]>4'h0)
						count[3:0]=count[3:0]-1;
					else
						begin
						count[3:0]=4'h9;
						if(count[7:4]>4'h0)
							count[7:4]=count[7:4]-1;
						else
							begin
							count[7:4]=4'h9;
							if(count[11:8]>4'h0)
								count[11:8]=count[11:8]-1;
							else
								begin
								count[11:8]=4'h9;
								count[15:12]=count[15:12]-1;
								end
							end
						end
					end
				end
			end
		m5_2:
			out = 1'b0;
		m5_3:
			out = 1'b1;
		//Mode 2
		m2_0:
		begin
			count = CR;
			out=1'b1; 
		end
		m2_1:
			begin
			out=1'b1; 
    			if(gate)
				begin
				if(statusLatch2[0]==1'b0)
					count = count-1;
				else
					begin
					if(count[3:0]>4'h0)
						count[3:0]=count[3:0]-1;
					else
						begin
						count[3:0]=4'h9;
						if(count[7:4]>4'h0)
							count[7:4]=count[7:4]-1;
						else
							begin
							count[7:4]=4'h9;
							if(count[11:8]>4'h0)
								count[11:8]=count[11:8]-1;
							else
								begin
								count[11:8]=4'h9;
								count[15:12]=count[15:12]-1;
								end
							end
						end
					end
				end
			end
		m2_2:
			begin
				out=1'b0;
			end
		//Mode 3
		m3_0:
			begin
			count = CR;
			out=1'b1; 
  			end
		m3_1:
			begin
   			out=1'b1;
			if(gate && (count  > Threshold))
				begin
				if(statusLatch2[0]==1'b0)
					count = count-1;
				else
					begin
					if(count[3:0]>4'h0)
						count[3:0]=count[3:0]-1;
					else
						begin
						count[3:0]=4'h9;
						if(count[7:4]>4'h0)
							count[7:4]=count[7:4]-1;
						else
							begin
							count[7:4]=4'h9;
							if(count[11:8]>4'h0)
								count[11:8]=count[11:8]-1;
							else
								begin
								count[11:8]=4'h9;
								count[15:12]=count[15:12]-1;
								end
							end
						end
					end
				end
			end
		m3_2:
			begin
   			out=1'b0;
			if(gate)
				begin
				if(statusLatch2[0]==1'b0)
					count = count-1;
				else
					begin
					if(count[3:0]>4'h0)
						count[3:0]=count[3:0]-1;
					else
						begin
						count[3:0]=4'h9;
						if(count[7:4]>4'h0)
							count[7:4]=count[7:4]-1;
						else
							begin
							count[7:4]=4'h9;
							if(count[11:8]>4'h0)
								count[11:8]=count[11:8]-1;
							else
								begin
								count[11:8]=4'h9;
								count[15:12]=count[15:12]-1;
								end
							end
						end
					end
				end
			end
		endcase
	end
endmodule
