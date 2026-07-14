module tb_bit4_comp;

reg[3:0] a;
reg[3:0] b;

bit4_comp uut(.a(a),.b(b));

always @(a or b) begin
if(a>b) begin
$display("a is greater than b");
end

else if(a<b) begin
$display("a is smaller than b");
end

else begin
$display("a is equal to b");
end
end

initial begin

$monitor("A= %b, B= %b", a, b); #1;

a= 4'b0010 ; b= 4'b1010 ; #10;
a= 4'b1110 ; b= 4'b0010 ; #10;
a= 4'b0110 ; b= 4'b0110 ; #10;


$finish;

end

endmodule
