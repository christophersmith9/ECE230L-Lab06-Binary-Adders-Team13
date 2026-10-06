// Implement top level module
module top(
    input [7:0]sw,
    output [5:0]led
);

    light switch(
        .downstairs(sw[0]),
        .upstairs(sw[1]),
        .stair_light(led[0])
    );

    adder half_adder(
        .A(sw[2]),
        .B(sw[3]),
        .Y(led[1]),
        .Carry(led[2])
    );

    wire FA1to2;

    full_adder full_adder1(
        .A(sw[4]),
        .B(sw[6]),
        .Cin(0), // <- is 32 bit 0 and -> (1'b0) is 1 bit 0.  It works but takes more board space.
        .Y(led[3]),
        .Cout(FA1to2)
    );

    full_adder full_adder2(
        .A(sw[5]),
        .B(sw[7]),
        .Cin(FA1to2),
        .Y(led[4]),
        .Cout(led[5])
    );

endmodule