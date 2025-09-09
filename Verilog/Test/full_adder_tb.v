`timescale 1ns/1ps
module full_adder_tb;
reg a,b,cin;
wire sum,cout;
full_adder FA1(a,b,cin,sum,cout);
integer i;
initial begin
$dumpfile("full_adder_tb.vcd");
$dumpvars(0,full_adder_tb);
end
initial begin
for(i=0;i<=7;i=i+1) begin
	{a,b,cin} = i;
	#1;
	$display(" Time = %0t a = %0b b = %0b cin = %0b cout = %0b sum = %0b",$time,a,b,cin,cout,sum);

	end
#10;
$finish;
end
endmodule
