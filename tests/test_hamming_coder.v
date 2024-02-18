`timescale 1ns/1ns
`include "../src/hamming_coder.v"

module test_hamming_coder;

reg[3:0] a;
wire[6:0] b;
integer i;

hamming_coder hamming(a, b);

initial begin

    $dumpfile("test_hamming_coder.vcd");
    $dumpvars(0, test_hamming_coder);

    a = 'b1010;
    #5;
    a = 'b1011;
    #5;

    $display("Finished!");
end

endmodule