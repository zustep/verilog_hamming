`timescale 1ns/1ns
`include "../src/hamming_decoder.v"

module test_hamming_decoder;

reg[6:0] a;
wire[2:0] b;
integer i;

hamming_decoder hamming(a, b);

initial begin

    $dumpfile("test_hamming_decoder.vcd");
    $dumpvars(0, test_hamming_decoder);

    a = 'b0101010;
    #5

    $display("Finished!");
end

endmodule