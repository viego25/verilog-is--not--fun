module tb_pass_amateur;
reg[7:0] g;
reg[7:0] p;
wire y;

pass_amateur uut (
    .g(g),
    .p(p),
    .y(y)
);

always @(g or p) begin
#1
if(y==1)
    $display("Password is matched");

else 
    $display("Password is not matched");
end

initial begin
       
  $dumpfile("tb_pass_amateur.vcd");
  $dumpvars(0, tb_pass_amateur);

  $display("g|p|y");
  $monitor("%b|%b|%b", g, p, y);

    g = 8'b00000000; p = 8'b01001110; #10;
    g = 8'b01101000; p = 8'b01001110; #10;
    g = 8'b01001110; p = 8'b01001110; #10;

$finish;
end
endmodule