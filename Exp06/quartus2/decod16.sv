module decod16(
	input [3:0] Choice,
	output [15:0] Out);
	
	assign Out[0] = Choice==4'd0 ? 1'b1: 1'b0;
	assign Out[1] = Choice==4'd1 ? 1'b1: 1'b0;
	assign Out[2] = Choice==4'd2 ? 1'b1:1'b0;
	assign Out[3] = Choice==4'd3 ? 1'b1:1'b0;
	assign Out[4] = Choice==4'd4 ? 1'b1:1'b0;
	assign Out[5] = Choice==4'd5 ? 1'b1:1'b0;
	assign Out[6] = Choice==4'd6 ? 1'b1:1'b0;
	assign Out[7] = Choice==4'd7 ? 1'b1:1'b0;
	assign Out[8] = Choice==4'd8 ? 1'b1:1'b0;
	assign Out[9] = Choice==4'd9 ? 1'b1:1'b0;
	assign Out[10] = Choice==4'd10 ? 1'b1:1'b0;
	assign Out[11] = Choice==4'd11 ? 1'b1:1'b0;
	assign Out[12] = Choice==4'd12 ? 1'b1:1'b0;
	assign Out[13] = Choice==4'd13 ? 1'b1:1'b0;
	assign Out[14] = Choice==4'd14 ? 1'b1:1'b0;
	assign Out[15] = Choice==4'd15 ? 1'b1:1'b0;
	
endmodule