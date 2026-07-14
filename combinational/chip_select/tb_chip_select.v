module tb_chip_select;

reg A[1:0] ;
wire C3,C2,C1,C0 ;

chip_select uut (.A1(A[1]), .A0(A[0]), .C0(C0), .C1(C1), .C2(C2), .C3(C3));

//condition

always @(A[0] or A[1]) begin
if(C0==1) begin
$display("chip 0 is selected") ;
end

else if(C1==1) begin
$display("chip 1 is selected") ;
end

else if(C2==1) begin
$display("chip 2 is selected") ;
end

else if(C3==1) begin
$display("chip 3 is selected") ;
end

else begin
$display("no chip is selected") ;
end

end

initial begin

$dumpfile("chip_select_dump.vcd");
$dumpvars(0, tb_chip_select);

$display("A1 | A0----C3 | C2 | C1 | C0") ;
$monitor("%b| %b----%b| %b| %b| %b", A[1], A[0], C3 , C2 , C1 , C0);

//test 
A[1]= 0 ; A[0]=0 ; #10;
A[1]= 0 ; A[0]=1 ; #10;
A[1]= 1 ; A[0]=0 ; #10;
A[1]= 1 ; A[0]=1 ; #10;

$finish;

end
endmodule
