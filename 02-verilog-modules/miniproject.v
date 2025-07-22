module miniproject (
 input CLK,
 input [3:0] I,
 output [3:0] Y
);
 wire [1:0] S;
 wire [3:0] dec_out;
 
 // Counter IP core instantiation
 c_counter_binary_0 my_counter (
 .CLK (CLK),
 .Q (S)
 );
 
 // MUX
 mux4to1 mux_inst (
 .D (I),
 .S (S),
 .Y (DATA)
 );

 // Decoder
 decoder2to4 dec_inst (
 .EN (DATA),
 .A (S),
 .Y (dec_out)
 );
 
 // Latch
 latch4 latch_inst (
 .CLK (CLK),
 .D (dec_out),
 .Q (Y)
 );
endmodule