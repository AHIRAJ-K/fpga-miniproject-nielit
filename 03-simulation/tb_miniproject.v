`timescale 1ns / 1ps
module tb_miniproject;
 reg CLK = 0;
 reg [3:0] I;
 wire [3:0] Y;
 // Instantiate the DUT (miniproject)
 miniproject dut (
 .CLK(CLK),
 .I(I),
 .Y(Y)
 );
 // Generate 100 MHz clock (10ns period)
 always #5 CLK = ~CLK;
 initial begin
 // Apply test inputs
 I = 4'b0001; #100;
 I = 4'b0010; #100;
 I = 4'b0100; #100;
 I = 4'b1000; #100;
 $stop;
 end
endmodule 