module rom(
    input [7:0] addr,
    output reg [7:0] data
);
    reg [7:0] mem [0:255];
    initial begin
        mem[0] = 8'b00000001;
        mem[1] = 8'b00010010;
        mem[2] = 8'b10000101;
        mem[3] = 8'b01000011;
        mem[4] = 8'b00000000;
        mem[5] = 8'b00000000;
    end
    always @(*) begin
        data = mem[addr];
    end
endmodule
