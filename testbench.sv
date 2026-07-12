module alu_tb;

reg [3:0] A;
reg [3:0] B;
reg [2:0] sel;

wire [3:0] result;

// Instantiate the ALU
alu uut (

    .A(A),
    .B(B),
    .sel(sel),
    .result(result)

);

initial begin
  
  $dumpfile("alu.vcd");
$dumpvars(0, alu_tb);

    // Addition
    A = 4'b0101;
    B = 4'b0011;
    sel = 3'b000;
    #10;
    $display("Addition      : A=%b B=%b SEL=%b RESULT=%b", A, B, sel, result);

    // Subtraction
    A = 4'b1001;
    B = 4'b0100;
    sel = 3'b001;
    #10;
    $display("Subtraction   : A=%b B=%b SEL=%b RESULT=%b", A, B, sel, result);

    // AND
    A = 4'b1010;
    B = 4'b1100;
    sel = 3'b010;
    #10;
    $display("AND           : A=%b B=%b SEL=%b RESULT=%b", A, B, sel, result);

    // OR
    A = 4'b1010;
    B = 4'b1100;
    sel = 3'b011;
    #10;
    $display("OR            : A=%b B=%b SEL=%b RESULT=%b", A, B, sel, result);

    // XOR
    A = 4'b1010;
    B = 4'b1100;
    sel = 3'b100;
    #10;
    $display("XOR           : A=%b B=%b SEL=%b RESULT=%b", A, B, sel, result);

    // NOT
    A = 4'b1010;
    sel = 3'b101;
    #10;
    $display("NOT           : A=%b SEL=%b RESULT=%b", A, sel, result);

    // Left Shift
    A = 4'b0101;
    sel = 3'b110;
    #10;
    $display("Left Shift    : A=%b SEL=%b RESULT=%b", A, sel, result);

    // Right Shift
    A = 4'b1010;
    sel = 3'b111;
    #10;
    $display("Right Shift   : A=%b SEL=%b RESULT=%b", A, sel, result);

    $finish;

end

endmodule