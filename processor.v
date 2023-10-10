module processor(
    input clk, // clock
    input reset, // reset
    input [31:0] inst, // instruction
    input [31:0] read_data, // data to be written

    output mem_write, // memory write enable
    output [31:0] write_data, // data to be written
    output [31:0] alu_result, // data address in memory & alu result
    output [31:0] pc // program counter
);

    wire [2:0] alu_control; // alu control
    wire reg_write; // write enable
    wire [1:0] imm_src; // immediate source
    wire [1:0] result_src; // Result source
    wire alu_src; // ALU source
    wire pc_src; // PC source
    wire zero; // zero flag

    controller c(
        .op_code (inst[6:0]),
        .func3 (inst[14:12]),
        .func7b6 (inst[30]),
        .zero (zero),
        .alu_control (alu_control),
        .alu_src (alu_src),
        .reg_write (reg_write),
        .mem_write (mem_write),
        .imm_src (imm_src),
        .result_src (result_src),
        .pc_src (pc_src)
    ); // instantiate controller

    datapath dp(
        .clk (clk),
        .reset (reset),
        .write_enable (reg_write),
        .pc_src (pc_src),
        .alu_src (alu_src),
        .imm_src (imm_src),
        .result_src (result_src),
        .alu_control (alu_control),
        .inst (inst),
        .memory_read_data (read_data),

        .zero (zero),
        .pc (pc),
        .data_out (write_data),
        .alu_result (alu_result)
    ); // instantiate datapath

endmodule
