module Adder1bit
(
    input wire A,
    input wire B,
    input wire cin,
    output wire sum,
    output wire cout
);

assign sum = A ^ B ^ cin;
assign cout = (A & B) | ((A ^ B) & cin );
    
endmodule