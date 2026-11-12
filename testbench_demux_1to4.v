testbench_demux_1to4
module testbench;
  reg s1,s2,I;
  wire y0,y1,y2,y3;
  integer k;
  demux_1to4 dut(.s1(s1),.s2(s2),.I(I),.y0(y0),.y1(y1),.y2(y2),.y3(y3));
  initial begin 
    $monitor("time=%0t,s1=%b,s2=%b,I=%b,y0=%b,y1=%b,y2=%b,y3=%b",$time,s1,s2,I,y0,y1,y2,y3);
    for(k=1;k<=8;k=k+1) begin
      {s1,s2,I}=k;
      #10;
    end
    $finish;
  end
endmodule  