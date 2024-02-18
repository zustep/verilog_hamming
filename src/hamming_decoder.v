module hamming_decoder(input[6:0] in, output[2:0] out);

assign out[0] = in[0] ^ in[1] ^ in[3] ^ in[4];
assign out[1] = in[0] ^ in[2] ^ in[3] ^ in[5];
assign out[2] = in[1] ^ in[2] ^ in[3] ^ in[6];

endmodule