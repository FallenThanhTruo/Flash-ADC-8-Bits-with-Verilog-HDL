module encoder_256x8_tb;

    // Inputs
    reg [255:0] data_in;

    // Outputs
    wire [7:0] encoded_out;

    // Instantiate the Unit Under Test (UUT)
    encoder_256x8 uut (
        .data_in(data_in),
        .encoded_out(encoded_out)
    );

    initial begin
        // Initialize Inputs
        data_in = 256'b0;

        // Wait 10 ns for global reset to finish
        #10;
        
        // Test case 1: Bit 0 is high
        data_in = 256'b1;
        #10;
		  
        $display("Test case 1: data_in = %b, encoded_out = %d", data_in, encoded_out);
      
        $stop;
    end
endmodule
