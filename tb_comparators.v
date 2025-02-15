module tb_comparators;

  // Inputs
  reg [7:0] Vin;
  reg [7:0] Vref;

  // Output
  wire A_grt_B;

  // Instantiate comparator module
  comparator dut (Vin, Vref, A_grt_B);

  initial begin
    // Test cases
    $display("Time\tVin\tVref\tA_grt_B");
    $monitor("%d\t%d\t%d\t%d", $time, Vin, Vref, A_grt_B);

    // Test case 1: Vin > Vref
    Vin = 8'b10100111; //167
    Vref = 8'b01101001; //105
    #10;

    // Test case 2: Vin < Vref
    Vin = 8'b00100110; //38
    Vref = 8'b01010111;//87
    #10;

    // Test case 3: Vin = Vref
    Vin = 8'b01010101;//85
    Vref = 8'b01010101;//85
    #10;

    $finish;
  end
endmodule
