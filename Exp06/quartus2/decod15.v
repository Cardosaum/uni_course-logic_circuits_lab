module demux16(
	input In,
	input [3:0] Choice,
	output [15:0] Out);
	assign Out[0] = Choice==4'd0 ? In: 1'b0;
	assign Out[1] = Choice==4'd1 ? In: 1'b0;
	assign Out[2] = Choice==4'd2 ? In:1'b0;
	assign Out[3] = Choice==4'd3 ? In:1'b0;
	assign Out[4] = Choice==4'd4 ? In:1'b0;
	assign Out[5] = Choice==4'd5 ? In:1'b0;
	assign Out[6] = Choice==4'd6 ? In:1'b0;
	assign Out[7] = Choice==4'd7 ? In:1'b0;
	assign Out[8] = Choice==4'd8 ? In:1'b0;
	assign Out[9] = Choice==4'd9 ? In:1'b0;
	assign Out[10] = Choice==4'd10 ? In:1'b0;
	assign Out[11] = Choice==4'd11 ? In:1'b0;
	assign Out[12] = Choice==4'd12 ? In:1'b0;
	assign Out[13] = Choice==4'd13 ? In:1'b0;
	assign Out[14] = Choice==4'd14 ? In:1'b0;
	assign Out[15] = Choice==4'd15 ? In:1'b0;
endmodule