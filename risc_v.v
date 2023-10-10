module risc_v (
    input clk, // clock
    input reset, // reset

    output [31:0] write_data, // data to be written
    output [31:0] address, // data address
    output mem_write_enable // memory write enable
);
    
    wire [31:0] inst; // instruction
    wire [31:0] read_data; // data to be written
    wire [31:0] pc; // program counter


    processor risc (
        .clk (clk),
        .reset (reset),
        .inst (inst),
        .read_data (read_data),

        .pc (pc),
        .write_data (write_data),
        .alu_result (address),
        .mem_write (mem_write_enable)
    ); // instantiate processor

    imem imem(
        .addr (pc[7:2]),
        .inst (inst)
    ); // instantiate imem

    dmem dmem (
        .clk (clk),
        .addr (address[7:2]),
        .data_in (write_data),
        .write_enable (mem_write_enable),
        .data_out (read_data)
    ); // instantiate dmem

endmodule
