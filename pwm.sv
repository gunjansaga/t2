module pwm(input logic clk, rst,
           input logic [7:0] duty,
           output logic pwm_out);
    logic [7:0] cnt;

    always_ff @(posedge clk)
        if (rst) cnt <= 0;
        else cnt <= cnt + 1;

    assign pwm_out = (cnt < duty);
endmodule
