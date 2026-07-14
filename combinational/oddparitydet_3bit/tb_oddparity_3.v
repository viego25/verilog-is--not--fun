module tb_oddparity_3bit;
 reg x,y,z;
 wire p;

oddparity_3bit uut
( .x(x), .y(y), .z(z), .p(p) );

initial begin

$dumpfile("oddparity_dump");
$dumpvars(0,tb_oddparity_3bit);

$display("X|Y|Z|P");
$monitor("%b|%b|%b|%b",x,y,z,p);

x=0 ; y=0 ; z=0; #10
x=0 ; y=0 ; z=1; #10
x=0 ; y=1 ; z=0; #10
x=0 ; y=1 ; z=1; #10
x=1 ; y=0 ; z=0; #10
x=1 ; y=0 ; z=1; #10
x=1 ; y=1 ; z=0; #10
x=1 ; y=1 ; z=1; #10

$finish;

end 
endmodule