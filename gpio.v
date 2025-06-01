module gpio(
    input clk,
    input [7:0] gpio_in,
    input [7:0] gpio_dir,
    input [7:0] gpio_out_data,
    output reg [7:0] gpio_out,
    output reg [7:0] gpio_in_data
);
    always @(posedge clk) begin
        gpio_out <= gpio_out_data & gpio_dir;
        gpio_in_data <= gpio_in & ~gpio_dir;
    end
endmodule
