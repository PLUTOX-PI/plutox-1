module ram(
    input clk,
    input [8:0] addr,
    input [7:0] data_in,
    input write_enable,
    output reg [7:0] data_out
);
    reg [7:0] mem [0:511];
    always @(posedge clk) begin
        if(write_enable)
            mem[addr] <= data_in;
        data_out <= mem[addr];
    end
endmodule
