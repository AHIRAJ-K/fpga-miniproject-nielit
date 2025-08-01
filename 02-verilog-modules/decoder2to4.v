module decoder2to4 (
 input EN,
 input [1:0] A,
 output reg [3:0] Y
);
 always @(*) begin
 if (!EN)
 Y = 4'b0000;
 else begin
 case (A)
 2'b00: Y = 4'b0001;
 2'b01: Y = 4'b0010;
 2'b10: Y = 4'b0100;
 2'b11: Y = 4'b1000;
 endcase
 end
 end
endmodule