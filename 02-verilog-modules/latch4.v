module latch4 (
 input CLK,
 input [3:0] D,
 output reg [3:0] Q
);
 always @(CLK or D) begin
 if (CLK)
 Q = D;
 end
endmodule 