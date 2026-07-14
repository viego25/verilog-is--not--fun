module chip_select
(
    input A1,A0 ,
    output C0,C1,C2,C3
);

assign C0= ~A1 & ~A0 ;
assign C1= ~A1 & A0 ;
assign C2= A1 & ~A0 ;
assign C3= A1 & A0 ;

endmodule
