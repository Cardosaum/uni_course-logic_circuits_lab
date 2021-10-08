module mux8_alt(
		input [7:0] dado,
		input [2:0] escolha,
		output saida
		);
		
		assign saida = dado[escolha];
endmodule
