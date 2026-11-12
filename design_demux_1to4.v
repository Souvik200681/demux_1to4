 design_demux_1to4
module demux_1to4(
  input wire s1,s2,I,
  output wire y0,y1,y2,y3
);
  assign y0=~s1&~s2&I;
  assign y1=~s1&s2&I;
  assign y2=s1&~s2&I;
  assign y3=s1&s2&I;
endmodule
  
  
  