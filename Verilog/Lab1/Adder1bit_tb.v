`timescale 1ns/1ps
module Adder1bit_tb 
(

);

reg A;
reg B;
reg cin;
wire sum;
wire cout;


Adder1bit cir (A , B, cin , sum , cout);

initial begin
    A= 1'b1;
    B= 1'b0;
    cin = 1'b1;

    #20;
    A= 1'b0;
    B= 1'b1;
    cin = 1'b0;

    $finish;

end

initial begin
    $monitor("A = %d B=%d cin=%d || cout= %d sum = %d \n ", A,B,cin,cout,sum);
end

endmodule