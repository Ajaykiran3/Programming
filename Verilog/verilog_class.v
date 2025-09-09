/*.......................Verilog Syntax...................................
--> Lexical conventions in Verilog are similar to C in the sense that it contains a stream of tokens.
--> A lexical token may consist of one or more characters and tokens can be comments, keywords, numbers, strings or white space.
--> All lines should be terminated by a semi-colon ;
--> Verilog is case-sensitive, so var_a and var_A are different ( A != a )
...............Comments...................
--> There are two ways to write comments in Verilog.
--> A single line comment starts with // and tells Verilog compiler to treat everything after this point to the end of the line as a comment.
--> A multiple-line comment starts with and ends with  //and ''''cannot be nested.'''' 
//--> '''single line comments can be nested in a multiple line comment.'''
//................Code 1...................
// This is a single line comment
//integer a;   // Creates an int variable called a, and treats everything to the right of // as a comment


This is a
multiple-line or
block comment


 This is 
an invalid nested
block comment 


 However,
// this one is okay


// This is also okay
//////////////////////////////////////////// Still okay
*/
/*
...............White Spaces..............
--> White space is a term used to represent the characters for spaces, tabs, newlines and formfeeds, and is usually ignored by Verilog except when it separates tokens.
--> helps in the indentation of code to make it easier to read.
...............Code 2....................
module dut; // 'module' is a keyword and dut is an identifier
            reg [8*6:1]name = "Hello!"; // The 3 spaces in the begining are ignored
--> '''However blanks(spaces) and tabs (from TAB key) are not ignored in strings.'''
..............Code 3.....................
// There is no spaces in the beginning of this line,
// but there's a space in the string
reg [8*6*:1] addr = "Earth    ";
endmodule
*//*
......................Operators.............. 
--> There are three types of operators('''based on no of operands'''): unary, binary, and ternary or conditional.
--> Unary operators shall appear to the left of their operand (single operand) // y = -2;
--> Binary operators shall appear between their operands (binary - 2 operands)
--> '''Conditional operators have two separate operators that separate three operands'''
..................Code 4...................
x = ~y; // ~ is unary operator, and y is the operand
x = y|z; // | is a binary operator, where y and z are its operands
x = (y>5)?w:z; // ?: is a ternary operator, and the expression (y>5), w and z are its operands.
--> If the expression (y > 5) is true, then variable x will get the value in w, else the value z will assign to x.
a + b where a,b are operands and + is operator
*//*
..................Number Format............
--> We are most familiar with numbers being represented as decimals.
--> However, numbers can also be represented in binary, octal and hexadecimal.
--> '''By default, Verilog simulators treat numbers as decimals.'''
--> In order to represent them in a different radix, certain rules have to be followed.
................Code 5....................
16 // Number 16 in decimal
0x10 // Number 16 in Hexadecimal 
10000 // Number 16 in Binary
020 // Number 16 in Octal
*/
/*
..............Sized Numbers.............
--> Sized numbers are represented as shown below, 
--> '''where size is written only in decimal to specify the number of bits in the number.'''
--> Syntax : [size]'[base_format][number]
--> base_format can be either decimal ('d or 'D), binary ('b or 'B), hexadecimal ('h or 'H) and octal ('o or 'O) and specifies what base the number part represents.
--> number is specified as consecutive digits from 0, 1, 2 ... 9 for decimal base format and 0, 1, 2 .. 9, A, B, C, D, E, F for hexadecimal.
--> for octal 0 to 7 and for binary 0 to 1.
....................Code 6.........................
3'b010; // size is 3, base format is binary ('b), and the number is 010 (indicates value 2 in binary)
3'd4; // size is 3, base format is decimal ('d) and the number is 2 (specified in decimals) 10 - 2 bits ,010 - 3 bits, 
8'h70; // size is 8, base format is hexadecimal ('h) and the number is 0x70 (in hex) to represent decimal 112
9'h1FA; // size is 9, base format is hexadecimal ('h) and the number is 0x1FA (in hex) to represent decimal 506 
1_1111_1010
4'hA = 4'd10 = 4'b1010 = 4'o12	// Decimal 10 can be represented in any of the four formats
8'd234 = 8'D234 // Legal to use either lower case or upper case for base format
32'hFACE_47B2; // Underscore (_) can be used to separate 16 bit numbers for readability
--> Uppercase letters are legal for number specification when the base format is hexadecimal.
...................Code 7....................
16'hcafe;         // lowercase letters Valid
16'hCAFE;         // uppercase letters Valid
32'h1D40_CAFE;    // underscore can be used as separator between 4 letters Valid
*/
//............................Code 8................................
//Check Whether C Style is Working or not
/*
module tb;
    integer a,b,c,d;
        initial begin 
        a = 10;
        //b = 0xA; // syntax error // error: malformed statement
        c = 012;
        d = 1010;
        $display("a=%0d b=%0d c=%0d d=%0d",a,b,c,d); // Expected 10
    end
endmodule

//.........................Code 9......................................
//Wrong Step Big Blunder Super Thunder
module tb1;
    integer a,b,c,d;
initial begin
        #10;
        a = 3'b010; //010 warning: Numeric constant truncated to 1 bits.
        b = 1'd4; //100
        c = 2'o70; //111_000 //warning: extra digits given for sized octal constant.warning: Numeric constant truncated to 2 bits.
        d = 3'h1FA;// 0001_1111_1010 //warning: extra digits given for sized hex constant.// warning: Numeric constant truncated to 3 bits.
        $display("a=%0d b=%0b c=%0o d=%0h",a,b,c,d);
    end
endmodule
//.........................Code 10......................................
//Rectified....?
module tb2;
    integer a,b,c,d;
initial begin
        #10;
        a = 3'b010;
        b = 3'd4;//100
        c = 6'o70;//111_000
        d = 12'h1FA;//0001_1111_1010
        $display("a=%0b b=%0d c=%0O d=%0H",a,b,c,d);
    end
endmodule
//.........................Code 11......................................
//Rectified.....
module tb3;
    integer a,b,c,d;
initial begin
        #10;
        a = 2'b10;//10
        b = 3'd4;//100
        c = 6'o70;//111_000
        d = 9'h1FA;//1_1111_1010
        $display("a=%0b b=%0d c=%0O d=%0H",a,b,c,d);
    end
endmodule
//.........................Code 12......................................
// Using Cap baseformat and format specifier
module tb4;
    integer a,b,c,d;
initial begin
        #10;
        a = 2'B10;
        b = 3'D4;
        c = 6'O70;
        d = 9'H1FA;
        $display("a=%0D b=%0B c=%0O d=%0H",a,b,c,d);
    end
endmodule
//.........................Code 13......................................
// Check Equal or not
module tb5;
    integer a,b,c,d;
initial begin
        #10;
        a = 4'd10;
        b = 4'b1010;
        c = 4'o12;
        d = 4'hA;
        $display("a=%0d b=%0d c=%0d d=%0d",a,b,c,d);
    end
endmodule
//.........................Code 14......................................
// Using _ Underscore
module tb6;
    integer a,b,c,d;
initial begin
        #10;
        a = 4'd_1_0;
        b = 4'b_1_0_1_0;
        c = 4'o_1_2;
        d = 4'h_A;
        $display("a=%0d b=%0d c=%0d d=%0d",a,b,c,d);
    end
endmodule
--> We shouldnt use the _ immediately after the base format.
//.........................Code 15......................................
// Using _
module tb7;
    integer a,b,c,d;
initial begin
        #10;
        a = 4'd1_0;
        b = 4'b1_0_1_0;
        c = 4'o1_2;
        d = 16'hC_a_F_e;
        $display("a=%0d b=%0d c=%0d d=%0d",a,b,c,d);
    end
endmodule
*/







