module adc8bit (
	 input [7:0] Vin,
	 input [7:0] Vref,
	 output [7:0] digital_out
);
	wire [255:0] comparator_outputs;
	genvar i;
	// Assign 0 to the 0th comparator output
	assign comparator_outputs[0] = 1'b0;
 // Generate 256 comparators
 generate
	for (i = 1; i < 256; i = i + 1) begin: comparators
		 wire [7:0] Vref_i;
		 assign Vref_i = (i * Vref) / 256; // Adjust the Vref value for each comparator
		 comparator comp (
		 .Vin(Vin),
		 .Vref(Vref_i),
		 .A_grt_B(comparator_outputs[i])
 );
	end
 endgenerate
 
 // Instantiate encoder
 encoder_256x8 encoder (
	 .data_in(comparator_outputs),
	 .encoded_out(digital_out)
 );
endmodule
