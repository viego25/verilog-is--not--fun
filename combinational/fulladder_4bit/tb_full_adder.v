module tb_full_adder;
reg[4:1] a;
reg[4:1] b;
reg cin= 0;

wire[4:1] s;
wire[4:1] c;
wire cout;

full_adder FA1 (.a(a[1]), .b(b[1]), .cin(cin), .s(s[1]), .cout(c[1]));
full_adder FA2 (.a(a[2]), .b(b[2]), .cin(c[1]), .s(s[2]), .cout(c[2]));
full_adder FA3 (.a(a[3]), .b(b[3]), .cin(c[2]), .s(s[3]), .cout(c[3]));
full_adder FA4 (.a(a[4]), .b(b[4]), .cin(c[3]), .s(s[4]), .cout(c[4]));

initial begin

$dumpfile("full_adder_dump.vcd");
$dumpvars(0, tb_full_adder);

$display("A4|A3|A2|A1 + B4|B3|B2|B1 = Cout | Sum");
$monitor("%b + %b = %b %b", a, b, c[4], s);

a= 4'b1011; b= 4'b1111; #10;

$finish;

end 
endmodule

