module mux_8x1
(input[7:0] i, 
 input x, 
 input y, 
 input z,
 output R);

assign R= (~x&~y&~z&i[0]) | (~x&~y&z&i[1]) | (~x&y&~z&i[2]) | (~x&y&z&i[3]) | (x&~y&~z&i[4]) | (x&~y&z&i[5]) | (x&y&~z&i[6]) | (x&y&z&i[7]); 

endmodule