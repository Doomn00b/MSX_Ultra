module Read_Write(
       input Read,
       input Write,
       input ChipSelect,
       input A0,
       input A1,
       output [3:0] Read_Enable, // bit0 --> counter 0
                                 // bit1 --> counter 1
                                 // bit2 --> counter 2
                                 // bit3 --> control register
       output [3:0] Write_Enable
);

assign Read_Enable = ((Read == 1'b0 && Write == 1'b1) && {A1,A0} == 2'b00 && ChipSelect == 1'b0) ? 4'b0001 :
                     ((Read == 1'b0 && Write == 1'b1) && {A1,A0} == 2'b01 && ChipSelect == 1'b0) ? 4'b0010 :
                     ((Read == 1'b0 && Write == 1'b1) && {A1,A0} == 2'b10 && ChipSelect == 1'b0) ? 4'b0100 : 
                     ((Read == 1'b0 && Write == 1'b1) && {A1,A0} == 2'b11 && ChipSelect == 1'b0) ? 4'b1000 : 4'b0000 ;

assign Write_Enable = ((Read == 1'b1 && Write == 1'b0) && {A1,A0} == 2'b00 && ChipSelect == 1'b0) ? 4'b0001 :
                      ((Read == 1'b1 && Write == 1'b0) && {A1,A0} == 2'b01 && ChipSelect == 1'b0) ? 4'b0010 :
                      ((Read == 1'b1 && Write == 1'b0) && {A1,A0} == 2'b10 && ChipSelect == 1'b0) ? 4'b0100 : 
                      ((Read == 1'b1 && Write == 1'b0) && {A1,A0} == 2'b11 && ChipSelect == 1'b0) ? 4'b1000 : 4'b0000 ;

endmodule
