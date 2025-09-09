`timescale 1ns / 1ps

module clock_divider_tb;

    // Testbench signals
    reg sys_clk;
    reg rstn;
    wire clk_out;

    // Parameters for actual requirement
    parameter INPUT_CLOCK_FREQUENCY   = 50_000_000; // 50 MHz input clock
    parameter OUTPUT_CLOCK_FREQUENCY  = 1;          // 1 Hz output clock

    // Instantiate DUT (Device Under Test)
    clock_divider #(
        .INPUT_CLOCK_FREQUENCY(INPUT_CLOCK_FREQUENCY),
        .OUTPUT_CLOCK_FREQUENCY(OUTPUT_CLOCK_FREQUENCY)
    ) dut (
        .sys_clk(sys_clk),
        .rstn(rstn),
        .clk_out(clk_out)
    );

    // Generate 50 MHz system clock: period = 20ns (toggle every 10ns)
    initial begin
        sys_clk = 0;
        forever #10 sys_clk = ~sys_clk;
    end

    // Apply reset and observe output
    initial begin
        rstn = 0;      // Assert reset
        #200;          // Hold reset for 200 ns
        rstn = 1;      // Deassert reset
        // Simulate long enough to observe several output cycles at 1 Hz
        #2_200_000_000; // 2.2 seconds simulation (adjust for longer or shorter runs)
        $finish;
    end

    // Monitor output and key signals
    initial begin
        $monitor("Time: %t ns, rstn = %b, clk_out = %b", $time, rstn, clk_out);
    end

    // Dump waveforms for viewing
    initial begin
        $dumpfile("clock_divider_tb.vcd");
        $dumpvars(0, clock_divider_tb);
    end

endmodule
