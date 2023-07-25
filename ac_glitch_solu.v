module top( input in1,in2,clk1,clk2,rst1,rst2, output reg out);

reg a,b,c;
wire AND;
always @( posedge clk1 or posedge rst1) begin
    if(rst1)
        {a,b,c} <= 0;
    else begin
        a <= in1;
        b <= in2;
        c <= AND;
    end
end

assign AND = a^b;

always @(posedge clk2 or posedge rst2)
    if(rst2)
        out <= 0;
    else
        out <= c;
endmodule
