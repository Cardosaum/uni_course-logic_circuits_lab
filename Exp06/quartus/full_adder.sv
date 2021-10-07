module full_adder(
		input A,
		input B,
		input Cin,
		output Cout,
		output S
		);
		
		assign {Cout,S} = A + B + Cin;
endmodule