module comparator (
  input [7:0] Vin,
  input [7:0] Vref,
  output A_grt_B
);
  assign A_grt_B = (Vin > Vref) ? 1'b1 : 1'b0;
endmodule