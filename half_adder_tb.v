module half_adder_tb;
reg a, b;
wire sum, carry;

// Instantiate design
half_adder DUT (
    .a(a),
    .b(b),
    .sum(sum),
    .carry(carry)
);

initial begin
    $display("time  a b sum carry");
  $display($time, "  a=%b b=%b sum=%b  carry=%b", a, b, sum, carry);

    a = 0; b = 0; #10;
    a = 0; b = 1; #10;
    a = 1; b = 0; #10;
    a = 1; b = 1; #10;

    #10 $finish;
end
  
  initial begin
  $dumpfile("dump.vcd");
    $dumpvars(0, half_adder_tb);
end
endmodule
  
  
  
  
  
  
  
