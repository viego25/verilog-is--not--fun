module tb_mux_8x1;

reg[7:0] i;
reg x;
reg y;
reg z;

wire R;


mux_8x1 uut (.i(i),.x(x),.y(y),.z(z),.R(R));

initial begin

    $dumpfile("tb_mux_8x1.vcd");
    $dumpvars(0, tb_mux_8x1);
    $display("X|Y|Z|R");
    $monitor("%b|%b|%b|%b", x, y, z, R);
    
    i = 8'b00100001;
    x = 1;
    y = 0;
    z = 0;

    x=0; y=0; z=0; #10;
    x=0; y=0; z=1; #10;
    x=0; y=1; z=0; #10;
    x=0; y=1; z=1; #10;
    x=1; y=0; z=0; #10;
    x=1; y=0; z=1; #10;
    x=1; y=1; z=0; #10;
    x=1; y=1; z=1; #10;

   $finish;

end
endmodule