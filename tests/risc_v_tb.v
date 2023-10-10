module tb_risc_v();

    reg clk;
    reg reset;
    wire [31:0] write_data;
    wire [31:0] address;
    wire mem_write_enable;

    risc_v risc_v(
        .clk (clk),
        .reset (reset),

        .write_data (write_data),
        .address (address),
        .mem_write_enable (mem_write_enable)
    );

localparam CLK_PERIOD = 10;
always #(CLK_PERIOD/2) clk=~clk;

    initial begin
        clk = 0;
        reset = 1;
        #15 reset = 0;
    end

    integer i = 0;

    // check results
    always @(negedge clk) begin
        if(mem_write_enable) begin
            if(address == 84 & write_data == 71) begin
                $display("Test passed");
                $stop;
            end
            else begin
                $display("Test failed");
                $stop;
            end
        end
    end

endmodule