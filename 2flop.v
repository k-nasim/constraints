module top (input clk1,rst1,clk2,rst2,in, output reg out);
reg q1,q2,q3;

always@(posedge clk1 or posedge rst1)
begin
    if(rst1)
    q1 <= 0;
    else
    q1 = in;
end

always@(posedge clk2 or posedge rst2)
begin
    if(rst2) begin
        q2 <= 0;
        q3 <= 0;
        out <= 0;
    end
    else begin
        q2 <= q1;
        q3 <= q2;
        out <= q3;
    end
end
endmodule
