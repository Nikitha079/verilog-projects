//================ HALF ADDER =================
module half_adder (
    input a,
    input b,
    output sum,
    output carry
);
    xor (sum, a, b);
    and (carry, a, b);
endmodule


//========== FULL ADDER USING HALF ADDERS ==========
module full_adder_using_ha (
    input a,
    input b,
    input cin,
    output sum,
    output cout
);
    wire w1, w2, w3;

    half_adder HA1 (a, b, w1, w2);
    half_adder HA2 (w1, cin, sum, w3);

    or (cout, w2, w3);
endmodule
