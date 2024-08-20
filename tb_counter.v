module tb_counter;
    reg rst, clk;
    wire [7:0] count;

    // Instantiate the counter module
    counter DUT (
        .rst(rst),
        .clk(clk),
        .count(count)
    );

    // Generate the clock signal
    always #10 clk = ~clk;

    initial begin
        // Initialize signals
        clk = 0;
        rst = 1; #50;  // Apply reset
        rst = 0; #200; // Run without reset
        rst = 1; #50;  // Apply reset again
        rst = 0; #500; // Run without reset
        $finish;
    end

    initial begin
        $dumpfile("counter.vcd");
        $dumpvars(0, tb_counter);
    end

    initial begin
        $monitor("rst=%b count=%d",rst, count);
    end
endmodule
