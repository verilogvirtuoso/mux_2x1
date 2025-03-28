`include "d_2x1mux.v"
module tb;
reg i0,i1,sel;
wire y;
mux_2x11 dut(i0,i1,sel,y);
initial begin 
repeat(10)begin 
{i0,i1,sel}=$random;
#1;
$display("time=%t,i0=%b,i1=%b,sel=%b,y=%b",$time,i0,i1,sel,y);
end
end
endmodule



