module mux_2x1(i0,i1,sel,y);
input i0,i1,sel;
output y;
not (n1,sel);
and (n2,n1,i0);
and (n3,sel,i1);
or (y,n2,n3);
endmodule

//dataflow modeling 
module mux_2x1(i0,i1,sel,y);
input i0,i1,sel;
output y;
assign y=(~sel&i0)|(sel&i1);
endmodule

//behavioral modeling 
module mux_2x1(i0,i1,sel,y);
input i0,i1,sel;
output reg y;
always@(*)begin 
	y=(~sel&i0)|(sel&i1);	
end
endmodule


