module TB;
  reg clk, rst, in;
  wire out;
  
  fsm_seq sd(clk, rst, in, out);
  initial clk = 0;   
  always #2 clk = ~clk;
    //clk should be given appropriate to the sequence or sequence should be matched for the clock
  initial begin
    $monitor("clk=%b rst=%b in=%b out=%b",clk,rst,in,out);
    in = 0;
    #1 rst = 0;
    #2 rst = 1;
    
    #3 in = 1;
    #4 in = 1;
    #4 in = 0;
    #4 in = 1;
    #4 in = 0;
    #4 in = 1;
    #4 in = 0;
    #4 in = 1;
    #4 in = 1;
    #4 in = 1;
    #4 in = 0;
    #4 in = 1;
    #4 in = 0;
    #4 in = 1;
    #4 in = 0;
    #10;
    $finish;
  end
  
  initial begin
    // Dump waves
    $dumpfile("dump.vcd");
    $dumpvars(0);
  end
endmodule
