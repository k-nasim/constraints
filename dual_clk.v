`timescale 1ns/1ps
module top( input clk1,clk2,datain,sel1,sel2,
                    output dataout);

reg a,b;

wire clkout1,clkout2;

always@(posedge clkout1)
begin
    a <= datain;
end

always@(posedge clkout2)
begin
       b <= a;
end


assign clkout1 = (sel1)? clk1:clk2;
assign clkout2 = (~sel2)? clk2:clk1;
assign dataout = b;
endmodule
