module dice(clk,rst,roll,sum,win,lose,rb);
input clk,rst,rb;
input [3:0]sum;
output reg roll,win,lose;
reg [2:0]ps;
reg [2:0]ns;
parameter s0=3'b000;
parameter s1=3'b001;
parameter s2=3'b010;
parameter s3=3'b011;
parameter s4=3'b100;
parameter s5=3'b101;

initial@(rb or rst or sum or ps)
begin 
roll=0; 
win=0; 
lose=0;
ns=s0;
end 

always@(rb or rst or sum or ps)
begin
case(ps)
 
s0:

 if(rb==1)
 ns=s1;
 else
 ns=s0;
 
s1:
 begin
 if(rb==1)
 roll=1;
 if(roll==1)
 begin
 if(sum==7||sum==11)
 begin
 ns=s2;
 win=1;
 end
 else if(sum== 2 ||sum== 3 ||sum== 12)
 ns=s3;
 else
 ns=s4;
 end
 end

s2:
 begin
 win=1;
 if(rst==1)
 ns=s0;
 end
 
s3:
 begin
 lose=1;
 if(rst==1)
 ns=s0;
 end
 
s4:
 begin
 if(rb==1)
 ns=s5;
end
 
s5:
 begin
 if(rb==1)
 roll=1; 
 if(roll==1)
 begin 
 if(sum== 7 )
 ns=s3; 
 else
 ns=s4; 
 end 
end 

endcase
end
always@(posedge clk)
ps=ns;
endmodule
