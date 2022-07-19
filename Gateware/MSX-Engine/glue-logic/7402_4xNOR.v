//Four NOR-gates

module cmos_7402 #(parameter BLOCKS = 4, DELAY_FALL = 8, DELAY_RISE = 12)
(
  input [BLOCKS-1:0] A,
  output [BLOCKS-1:0] Y
);

//----------//
reg [BLOCKS-1:0] computed;

always @(*)
begin
    computed = ~A;
end
//---------//

assign #(DELAY_RISE, DELAY_FALL) Y = computed;

endmodule