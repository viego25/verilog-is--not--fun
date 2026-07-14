module tb_mux_2x1;

reg a;
reg b;
reg x;

wire y;

mux_2x1 uut
(.a(a),.b(b),.x(x),.y(y));

initial begin

$dumpfile("mux_2x1.vcd");
$dumpvars(0,tb_mux_2x1);

$display("A|B|X|Y");
$monitor("%b,%b,%b,%b",a,b,x,y);

a=0; b=1; x=1; #10;
a=1; b=0; x=0; #10;
a=1; b=1; x=0; #10;
a=1; b=1; x=1; #10;
$finish;

end
endmodule