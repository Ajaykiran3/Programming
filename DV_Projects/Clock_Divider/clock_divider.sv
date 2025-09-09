// Clock Divider Module
// Divides the input clock frequency by a parameterized divisor value
// to generate a slower clock output (for example, 1Hz from a 50MHz input clock).
// It supports a synchronous active-low reset to initialize the module.
//
// Parameters:
// - INPUT_CLOCK_FREQUENCY   : Frequency (Hz) of the input system clock (default 50 MHz).
// - OUTPUT_CLOCK_FREQUENCY  : Desired frequency (Hz) of the output clock (default 1 Hz).
//
// Inputs:
// - sys_clk : System clock input signal.
// - rstn    : Active-low synchronous reset input signal.
//
// Output:
// - clk_out : Output clock signal with frequency = INPUT_CLOCK_FREQUENCY / OUTPUT_CLOCK_FREQUENCY,
//             toggling with approximately 50% duty cycle.

module clock_divider #(
    parameter INPUT_CLOCK_FREQUENCY = 50000000,      // Input clock frequency in Hz
    parameter OUTPUT_CLOCK_FREQUENCY = 1              // Output clock frequency in Hz
)
(
    input sys_clk,                                    // Input system clock
    input rstn,                                       // Active-low synchronous reset
    output reg clk_out                                // Divided clock output
);

    // Calculate the divisor value (number of input clock cycles for one output clock period)
    localparam CLOCK_DIVISOR_VALUE = INPUT_CLOCK_FREQUENCY / OUTPUT_CLOCK_FREQUENCY;

    // Calculate the minimum number of bits required to represent CLOCK_DIVISOR_VALUE counts
    localparam COUNTER_WIDTH = $clog2(CLOCK_DIVISOR_VALUE);

    // Counter register to track input clock cycles; width determined by divisor
    reg [COUNTER_WIDTH-1:0] count = 0;

    // Sequential logic block triggered on rising edge of sys_clk
    always @(posedge sys_clk) begin
        if (!rstn) begin
            // On active-low reset, initialize counter and output clock to zero
            count <= 0;
            clk_out <= 0;
        end
        else begin
            if (count == CLOCK_DIVISOR_VALUE - 1) begin
                // When count reaches divisor minus one:
                // - Reset counter to zero
                // - Toggle output clock to generate the divided clock signal
                count <= 0;
                clk_out <= ~clk_out;
            end
            else begin
                // Otherwise, increment the counter
                count <= count + 1;
            end
        end
    end

endmodule
