//module tb_adc8bit;
//	 reg [7:0] Vin;
//	 reg [7:0] Vref;
//	 wire [7:0] digital_out;
// // Instantiate the ADC module
// adc8bit uut (
//	 .Vin(Vin),
//	 .Vref(Vref),
//	 .digital_out(digital_out)
// );
// initial begin
// // Test case 1
//	 Vin = 8'd1;
//	 Vref = 8'd10;
//	  #10;
//	$display("Test case 1: Vin = %d, Vref = %d, digital_out = %d", Vin, Vref, digital_out);
//	  
//	 Vin = 8'd2;
//	 Vref = 8'd10;
//	  #10;
//	$display("Test case 1: Vin = %d, Vref = %d, digital_out = %d", Vin, Vref, digital_out);
//	Vin = 8'd3;
//	 Vref = 8'd10;
//	  #10;
//	$display("Test case 1: Vin = %d, Vref = %d, digital_out = %d", Vin, Vref, digital_out);
//	Vin = 8'd4;
//	 Vref = 8'd10;
//	  #10;
//	$display("Test case 1: Vin = %d, Vref = %d, digital_out = %d", Vin, Vref, digital_out);
// // Test case 2
//	 Vin = 8'd5;
//	 Vref = 8'd10;
//	 #10;
//	$display("Test case 2: Vin = %d, Vref = %d, digital_out = %d", Vin, Vref, digital_out);
//	Vin = 8'd6;
//	 Vref = 8'd10;
//	  #10;
//	$display("Test case 1: Vin = %d, Vref = %d, digital_out = %d", Vin, Vref, digital_out);
//	Vin = 8'd7;
//	 Vref = 8'd10;
//	  #10;
//	$display("Test case 1: Vin = %d, Vref = %d, digital_out = %d", Vin, Vref, digital_out);
//	Vin = 8'd8;
//	 Vref = 8'd10;
//	  #10;
//	$display("Test case 1: Vin = %d, Vref = %d, digital_out = %d", Vin, Vref, digital_out);
//	Vin = 8'd9;
//	 Vref = 8'd10;
//	  #10;
//	$display("Test case 1: Vin = %d, Vref = %d, digital_out = %d", Vin, Vref, digital_out);
// // Test case 3
//	 Vin = 8'd10;
//	 Vref = 8'd10;
//	 #10;
//	$display("Test case 3: Vin = %d, Vref = %d, digital_out = %d", Vin, Vref, digital_out);
//	
//	// Test case 4
//	 Vin = 8'd20;
//	 Vref = 8'd10;
//	 #10;
//	$display("Test case 3: Vin = %d, Vref = %d, digital_out = %d", Vin, Vref, digital_out);
// // Add more test cases as needed
//	$stop;
// end
//endmodule
module tb_adc8bit;

  reg [7:0] Vin;
  reg [7:0] Vref;
  wire [7:0] digital_out;

  // Instantiate the ADC module
  adc8bit uut (
    .Vin(Vin),
    .Vref(Vref),
    .digital_out(digital_out)
  );

  initial begin
    Vref = 8'd18; // Set the reference voltage

    // Test cases for Vin from 60 to 120
    for (Vin = 8'd6; Vin <= 8'd18; Vin = Vin + 1) begin
      #50; // Wait for 10 time units
      $display("Vin = %d, Vref = %d, digital_out = %b", Vin, Vref, digital_out);
    end

    $stop; // Stop the simulation
  end

endmodule
