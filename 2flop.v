module top (input clk1,rst1,clk2,rst2,in, output reg out);
reg A,B_syn,B_rec;

always@(posedge clk1 or posedge rst1)
begin
    if(rst1)
    A <= 0;
    else
    A <= in;
end

always@(posedge clk2 or posedge rst2)
begin
    if(rst2)
        {B_syn,B_rec,out} <= 0;
    else begin
        B_syn <= A;
        B_rec <= B_syn;
        out <= B_rec;
    end
end
endmodule
