module simple_cpu(
    input clk,
    input reset,
    input [7:0] instruction,
    input [7:0] data_in,
    output reg [7:0] data_out,
    output reg [7:0] address,
    output reg mem_read,
    output reg mem_write
);
    reg [7:0] regfile [0:3];
    reg [7:0] pc;
    reg [7:0] instr_reg;
    always @(posedge clk or posedge reset) begin
        if(reset) begin
            pc <= 0;
            regfile[0] <= 0;
            regfile[1] <= 0;
            regfile[2] <= 0;
            regfile[3] <= 0;
            mem_read <= 0;
            mem_write <= 0;
            data_out <= 0;
            address <= 0;
        end else begin
            instr_reg <= instruction;
            pc <= pc + 1;
            mem_read <= 0;
            mem_write <= 0;
            case(instr_reg[7:6])
                2'b00: begin
                    address <= instr_reg[3:0];
                    mem_read <= 1;
                    regfile[instr_reg[5:4]] <= data_in;
                end
                2'b01: begin
                    address <= instr_reg[3:0];
                    data_out <= regfile[instr_reg[5:4]];
                    mem_write <= 1;
                end
                2'b10: regfile[instr_reg[5:4]] <= regfile[instr_reg[5:4]] + regfile[instr_reg[3:2]];
                2'b11: regfile[instr_reg[5:4]] <= regfile[instr_reg[5:4]] - regfile[instr_reg[3:2]];
            endcase
        end
    end
endmodule
