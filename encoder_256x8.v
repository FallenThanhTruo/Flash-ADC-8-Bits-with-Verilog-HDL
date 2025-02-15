module encoder_256x8 (
    input [255:0] data_in,
    output reg [7:0] encoded_out
);
    integer i;
    
    always @(*) begin
        encoded_out = 8'b0;  // Default value
        for (i = 0; i < 256; i = i + 1) begin
            if (data_in[i]) begin
                encoded_out = i[7:0];
                //break;  // Break the loop once the highest bit is found
            end
        end
    end
endmodule
						 