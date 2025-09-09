/*
...............Linux Commands To Invoke Tools...............
PS D:\Programming\Verilog> cd Test         
PS D:\Programming\Verilog\Test> iverilog -o test.vvp test.v
PS D:\Programming\Verilog\Test> vvp test.vvp
Hello, World
test.v:5: $finish called at 0 (1s)
PS D:\Programming\Verilog\Test> iverilog -o full_adder.vvp full_adder.v
PS D:\Programming\Verilog\Test> vvp full_adder.vvp
PS D:\Programming\Verilog\Test> iverilog -o full_adder_tb.vcd full_adder_tb.v full_adder.v
PS D:\Programming\Verilog\Test> vvp full_adder_tb.vcd
VCD info: dumpfile full_adder_tb.vcd opened for output.
 Time = 1000 a = 0 b = 0 cin = 0 cout = 0 sum = 0
 Time = 2000 a = 0 b = 0 cin = 1 cout = 0 sum = 1
 Time = 3000 a = 0 b = 1 cin = 0 cout = 0 sum = 1
 Time = 4000 a = 0 b = 1 cin = 1 cout = 1 sum = 0
 Time = 5000 a = 1 b = 0 cin = 0 cout = 0 sum = 1
 Time = 6000 a = 1 b = 0 cin = 1 cout = 1 sum = 0
 Time = 7000 a = 1 b = 1 cin = 0 cout = 1 sum = 0
 Time = 8000 a = 1 b = 1 cin = 1 cout = 1 sum = 1
full_adder_tb.v:19: $finish called at 18000 (1ps)
PS D:\Programming\Verilog\Test> gtkwave

GTKWave Analyzer v3.3.100 (w)1999-2019 BSI

GTKWAVE | Use the -h, --help command line flags to display help.
WM Destroy
PS D:\Programming\Verilog\Test> 
*/
/*`````````````````````Verilog Syntax````````````````````
--> Lexical conventions in Verilog are similar to C in the sense that it contains a stream of tokens.
--> A lexical token may consist of one or more characters and tokens can be comments, keywords, numbers, strings or white space.
--> All lines should be terminated by a semi-colon ;
--> Verilog is case-sensitive, so var_a and var_A are different
...............Comments...................
--> There are two ways to write comments in Verilog.
--> A single line comment starts with // and tells Verilog compiler to treat everything after this point to the end of the line as a comment.
--> A multiple-line comment starts with  and ends with same and cannot be nested.
--> single line comments can be nested in a multiple line comment.
................Code 1...................
// This is a single line comment
integer a; // Creates a int variable called a,and treats everything to the right of // as a comment

This is a 
multiple -line or 
block comment

This is 
an invalid nested 
block comment 

 However,
//This one is okay
// This is also okay

///////////still okay 
Output : 
verilog.v:38: error: Possible nested comment.
verilog.v:43: error: Possible nested comment.
verilog.v:48: error: Possible nested comment.
verilog.v:51: syntax error
I give up.
...............White Spaces..............
--> White space is a term used to represent the characters for spaces, tabs, newlines and formfeeds, and is usually ignored by Verilog except when it separates tokens.
--> helps in the indentation of code to make it easier to read.
...............Code 2....................
module dut; // 'module' is a keyword and dut is an identifier
            reg [8*6:1]name = "Hello!"; // The 2 spaces in the begining are ignored
--> However blanks(spaces) and tabs (from TAB key) are not ignored in strings.
..............Code 3.....................
// There is no spaces in the beginning of this line,
// but there's a space in the string
reg [8*6*:1] addr = "Earth";
endmodule
......................Operators..............
--> There are three types of operators: unary, binary, and ternary or conditional.
--> Unary operators shall appear to the left of their operand
--> Binary operators shall appear between their operands
--> Conditional operators have two separate operators that separate three operands
..................Code 4...................
x = ~y; // ~ is unary operator, and y is the operand
x = y|z; // | is a binary operator, where y and z are its operands
x = (y>5)?w:z; // ?: is a ternary operator, and the expression (y>5), w and z are its operands.
--> If the expression (y > 5) is true, then variable x will get the value in w, else the value in z.
..................Number Format............
--> We are most familiar with numbers being represented as decimals
--> However, numbers can also be represented in binary, octal and hexadecimal.
--> By default, Verilog simulators treat numbers as decimals.
--> In order to represent them in a different radix, certain rules have to be followed.
................Code 5....................
16 // Number 16 in decimal
0x10 // Number 16 in Hexadecimal
10000 // Number 16 in Binary
020 // Number 16 in Octal
..............Sized.............
--> Sized numbers are represented as shown below, 
--> where size is written only in decimal to specify the number of bits in the number.
--> Syntax : [size]'[base_format][number]
--> base_format can be either decimal ('d or 'D), binary ('b or 'B), hexadecimal ('h or 'H) and octal ('o or 'O) and specifies what base the number part represents.
--> number is specified as consecutive digits from 0, 1, 2 ... 9 for decimal base format and 0, 1, 2 .. 9, A, B, C, D, E, F for hexadecimal.
....................Code 6.........................
3'b010; // size is 3, base format is binary ('b), and the number is 010 (indicates value 2 in binary)
3'd2; // size is 3, base format is decimal ('d) and the number is 2 (specified in decimals)
8'h70; // size is 8, base format is hexadecimal ('h) and the number is 0x70 (in hex) to represent decimal 112
9'h1FA; // size is 9, base format is hexadecimal ('h) and the number is 0x1FA (in hex) to represent decimal 506

4'hA = 4'd10 = 4'b1010 = 4'o12	// Decimal 10 can be represented in any of the four formats
8'd234 = 8'D234 // Legal to use either lower case or upper case for base format
32'hFACE_47B2; // Underscore (_) can be used to separate 16 bit numbers for readability
--> We shouldnt use the _ immediately after the base format.
--> Uppercase letters are legal for number specification when the base format is hexadecimal.
...................Code 7....................
16'hcafe;         // lowercase letters Valid
16'hCAFE;         // uppercase letters Valid
32'h1D40_CAFE;    // underscore can be used as separator between 4 letters Valid
c:\Users\RAPARTHI AJAYKIRAN\AppData\Local\Packages\Microsoft.ScreenSketch_8wekyb3d8bbwe\TempState\Recordings\20250823-1824-52.5536010.mp4
...................Negative...............
--> Negative numbers are specified by placing a minus - sign before the size of a number.
--> It is illegal to have a minus sign between base_format and number.
....................Code 9................
-6'd3; // 8-bit negative number stored as two's complement of 3
-6'sd9;           // For signed maths
8'd-4;            // Illegal
...................Strings..................
--> A sequence of characters enclosed in a double quote " " is called a string.
--> It cannot be split into multiple lines.
--> Every character in the string take 1-byte to be stored.
................Code 10.....................
"Hello World!"        // String with 12 characters -> require 12 bytes
"x + z"               // String with 5 characters
"How are you
feeling today ?"      // Illegal for a string to be split into multiple lines
...................Identifiers..............
--> Identifiers are names of variables so that they can be referenced later on.
--> They are made up of alphanumeric characters [a-z][A-Z][0-9], underscores _ or dollar sign $
--> They are Case Sensitive.
--> They cannot start with a digit or a dollar sign.
....................Code 11..................
integer var_a;        // Identifier contains alphabets and underscore -> Valid
integer $var_a;       // Identifier starts with $ -> Invalid
integer v$ar_a;       // Identifier contains alphabets and $ -> Valid
integer 2var;         // Identifier starts with a digit -> Invalid
integer var23_g;      // Identifier contains alphanumeric characters and underscore -> Valid
integer 23;           // Identifier contains only numbers -> Invalid
......................Key Words...........................
--> Keywords are special identifiers reserved to define the language constructs and are in lower case.
--> A list of important Keywords is given below.
.......................Verilog Revisions...........................
*/
/*
`````````````````````Verilog Data Types`````````````````````
--> The primary intent of data-types in the Verilog language is to represent data storage elements like bits in a flip-flop and transmission elements like wires that connect between logic gates and sequential structures.
................ What Values do Variables Hold........?
--> Almost all data-types can only have one of the four different values as given below except for real and event data types.
--> 0 - represents a logic zero, or a false condition
--> 1 - represents a logic one, or a true condition
--> x - represents an unknown logic value (can be zero or one)
--> z - represents a high-impedance state
--> Where Green is For 0 and 1.
--> Most simulators use this convention where red stands for X and orange in the middle stands for high-impedance or Z.
................what does the Verilog Value-set imply....................
--> Since Verilog is essentially used to describe hardware elements like flip-flops and combinational logic like NAND and NOR, it has to model the value system found in hardware. 
--> A logic one would represent the voltage supply Vdd which can range anywhere between 0.8V to more than 3V based on the fabrication technology node. 
--> A logic zero would represent ground and hence a value of 0V.
--> X or x means that the value is simply unknown at the time, and could be either 0 or 1. This is quite different from the way X is treated in boolean logic, where it means "don't care".
--> As with any incomplete electric circuit, the wire that is not connected to anything will have a high-impedance at that node and is represented by Z or z. Even in verilog, any unconnected wire will result in a high impedance.
................Nets and Variables................
--> Nets and variables are the two main groups of data types which represent different hardware structures and differ in the way they are assigned and retain values.
.................Nets..........................
--> Nets are used to connect between hardware entities like logic gates
--> It do not store any value on its own.
--> There are different types of nets each with different characteristics
--> but the most popular and widely used net in digital designs is of type wire
..................wire.........................
--> A wire is a Verilog data-type used to connect elements and to connect nets that are driven by a single gate or continuous assignment.
--> The wire is similar to the electrical wire that is used to connect two components on a breadboard.
--> When there is a requirement for mulitple nets, they can be bunched together to form a single wire.
...... Syntax : wire a; //scalar or single bit wire...........
...... Syntax : wire [3:0] b; // 4 bit wire and this is a vector............
--> It is illegal to redeclare a name already declared by a net, parameter or variable as shown in the code below.
................Code 12......................
module design;
wire abc;
wire a;
wire b;
wire c;
wire abc; // Error: Identifier "abc" previously declared
assign abc = a & b | c;
endmodule
.............Variables..............
--> A variable on the other hand is an abstraction of a data storage element and can hold values.
--> A flip-flop is a good example of a storage element.
................Reg.................
--> Verilog data-type reg can be used to model hardware registers since it can hold values between assignments.
--> Note that a reg need not always represent a flip-flop because it can also be used to represent combinational logic.
................Other Data Types.................
..................Integers....................
--> An integer is a general purpose variable of 32-bits wide that can be used for other purposes while modeling hardware and stores integer values.
...............Code 13...........
integer     count; // Count is an integer value > 0
.................Time.......................
--> A time variable is unsigned, 64-bits wide and can be used to store simulation time quantities for debugging purposes
--> realtime variable simply stores time as a floating point quantity.
...................Code 14.................
time        end_time;           // end_time can be stored a time value like 50ns
realtime    rtime;              // rtime = 40.25ps
.......................Real..........................
--> A real variable can store floating point values and can be assigned the same way as integer and reg.
....................Code 15..................
real        float;              // float = 12.344  - can store floating numbers
...................... Code 15 Data Types Example........................
module testbench;
integer int_a; // Integer variable
real real_b; // Real variable
time time_c; // Time variable
initial begin 
    int_a = 32'hcafe_1234; // Assign an integer value
    real_b = 0.123456789; // Assign a floating point value
    #20; // Advance simulation time by 20 units
    time_c = $time; // Assign current simulation time
    // Now print all variables using $display system task
    $display("int_a = 0x%0h",int_a);
    $display("real_b = %0.5f",real_b);
    $display("time_c = %0t",time_c);
end
endmodule
Output : 
int_a = 0xcafe1234
real_b = 0.12346
time_c = 20
...................Verilog Strings..............
--> Strings are stored in reg and the width of the reg variable has to be large enough to hold the string
--> Each character in a string represents an ASCII value and requires 1 byte. 
--> If the size of the variable is smaller than the string, then Verilog truncates the leftmost bits of the string. 
--> If the size of the variable is larger than the string, then Verilog adds zeros to the left of the string.
.....................Code 16..................
// "Hello World" requires 11 bytes
reg [8*11:1] str = "Hello World";         // Variable can store 11 bytes, str = "Hello World"
reg [8*5:1]  str = "Hello World";         // Variable stores only 5 bytes (rest is truncated), str = "World"
reg [8*20:1] str = "Hello World";         // Variable can store 20 bytes (rest is padded with zeros), str = "         Hello World"
..................Code 17 Strings..............
module testbench;
    reg [8*11:1] str1;
    reg [8*5:1] str2;
    reg [8*20:1] str3;
    initial begin
        str1 = "Hello World";
        str2 = "Hello World";
        str3 = "Hello World";
        $display("str1 = %s",str1);
        $display("str2 = %s",str2);
        $display("str3 = %s",str3);
    end
endmodule
Output : 
str1 = Hello World
str2 = World
str3 =          Hello World
--> Note that str1 has the right size to store all 11 bytes of the string "Hello World" and hence the whole string gets printed.
--> However str2 can store only 5 bytes and hence the upper 6 bytes get truncated and end up with storing only "World".
--> The third variable str3 is larger than 11 bytes and pads empty spaces to the left and hence the value stored in it becomes "        Hello World".
*/
/*
``````````````````````Verilog Scalars and Vectors```````````````````````````
--> Verilog needs to represent individual bits as well as groups of bits.
--> For example, a single bit sequential element is a flip-flop. However a 16-bit sequential element is a register that can hold 16 bits.
--> For this purpose, Verilog has scalar and vector nets and variables.
....................Scalar and Vectors....................
--> A net or reg declaration without a range specification is considered 1-bit wide and is a scalar. 
--> If a range is specified, then the net or reg becomes a multibit entity known as a vector.
.......................Code 18..........................
wire 	    o_nor;           // single bit scalar net
wire [7:0]  o_flop;          // 8-bit vector net
reg         parity;          // single bit scalar variable
reg  [31:0] addr;            // 32 bit vector variable to store address
--> The range gives the ability to address individual bits in a vector.
--> The most significant bit of the vector should be specified as the left hand value in the range while the least significant bit of the vector should be specified on the right.
.....................Code 19...........................
wire  [msb:lsb]   name;
integer           my_msb;

wire [15:0]        priority;      // msb = 15, lsb = 0
wire [my_msb: 2]   prior;         // illegal
--> A 16 bit wide net called priority will be created in the example above.
--> Note that the msb and lsb should be a constant expression and cannot be substituted by a variable. 
--> But they can be any integer value - positive, negative or zero;
--> And the lsb value can be greater than, equal to or less than msb value.
.......................Bit Selects........................
--> Any bit in a vectored variable can be individually selected and assigned a new value as shown below. This is called as a bit-select.
--> If the bit-select is out of bounds or the bit-select is x or z, then the value returned will be x.
.......................Code 20............................
reg [7:0]      addr;         // 8-bit reg variable [7, 6, 5, 4, 3, 2, 1, 0]

addr [0] = 1;                // assign 1 to bit 0 of addr
addr [3] = 0;                // assign 0 to bit 3 of addr
addr [8] = 1;                // illegal : bit8  does not exist in addr
.......................Part Selects...................................
--> A range of contiguous bits can be selected and is known as a part-select.
--> There are two types of part-selects, one with a constant part-select and another with an indexed part-select.
..........................Constant Part Selects......................
......................Code 21..........................
reg [31:0]    addr;

addr [23:16] = 8'h23;         // bits 23 to 16 will be replaced by the new value 'h23 -> constant part-select
.......................Indexed part Select or Variable Part Select...................
--> Having a variable part-select allows it to be used effectively in loops to select parts of the vector.
--> Although the starting bit can be varied, the width has to be constant.
-->  Syntax : 
                [<start_bit> +: <width>]     // part-select increments from start-bit
                [<start_bit> -: <width>]     // part-select decrements from start-bit
...................Code 22................................
module des;
    reg [31:0] data;
    integer i;
    initial begin
        data = 32'hCaFe_FACE;
        for(i=0;i<4;i=i+1)begin
            $display("data[8*%0d+:8] = 0x%0h",i,data[8*i+:8]);
        end
        $display("data[7:0] = 0x%0h", data[7:0]);
        $display("data[15:8] =  0x%0h",data[15:8]);
        $display("data[23:16] = 0x%0h",data[23:16]);
        $display("data[31:24] = 0x%0h",data[31:24]);
    end
endmodule
Output :
data[8*0+:8] = 0xce
data[8*1+:8] = 0xfa
data[8*2+:8] = 0xfe
data[8*3+:8] = 0xca
data[7:0] = 0xce
data[15:8] =  0xfa
data[23:16] = 0xfe
data[31:24] = 0xca
.............Common Errors............
module tb;
   reg [15:0]    data;

   initial begin
      $display ("data[0:9] = 0x%0h", data[0:9]);   // Error : Reversed part-select index expression ordering
   end
endmodule
...................Code 23................................
module des;
    reg [0:31] data;
    integer i;
    initial begin
        data = 32'hCaFe_FACE;
        for(i=4;i>=1;i=i-1)begin
            $display("data[8*%0d-:8] = 0x%0h",i,data[8*i-1-:8]);
        end
        $display("data[24:31] = 0x%0h", data[24:31]);
        $display("data[16:23] =  0x%0h",data[16:23]);
        $display("data[8:15] = 0x%0h",data[8:15]);
        $display("data[0:7] = 0x%0h",data[0:7]);
    end
endmodule
Output : 
data[8*4-:8] = 0xce
data[8*3-:8] = 0xfa
data[8*2-:8] = 0xfe
data[8*1-:8] = 0xca
data[24:31] = 0xce
data[16:23] =  0xfa
data[8:15] = 0xfe
data[0:7] = 0xca
*/
/*
....................Verilog Arrays and Memories........................
....................What is a Verilog Array............................
--> An array declaration of a net or variable can be either scalar or vector. 
--> Any number of dimensions can be created by specifying an address range after the identifier name and is called a multi-dimensional array. 
--> Arrays are allowed in Verilog for reg, wire, integer and real data types.
...........................Code 24.....................................
reg        y1 [11:0];        // y is an scalar reg array of depth=12, each 1-bit wide
wire [0:7] y2 [3:0]          // y is an 8-bit vector net with a depth of 4
reg  [7:0] y3 [0:1][0:3];    // y is a 2D array rows=2,cols=4 each 8-bit wide
--> An index for every dimension has to be specified to access a particular element of an array and can be an expression of other variables.
--> An array can be formed for any of the different data-types supported in Verilog.
--> Note that a memory of n 1-bit reg is not the same as an n-bit vector reg.
......................Array Assignment.......................................
........................Code 25.................................
y1 = 0; 						// Illegal - All elements can't be assigned in a single go

y2[0] = 8'ha2; 			// Assign 0xa2 to index=0
y2[2] = 8'h1c; 			// Assign 0x1c to index=2
y3[1][2] = 8'hdd; 	// Assign 0xdd to rows=1 cols=2
y3[0][0] = 8'haa; 	// Assign 0xaa to rows=0 cols=0
.........................Array Example.......................
--> The code shown below simply shows how different arrays can be modeled, assigned and accessed.
--> mem1 is an 8-bit vector
--> mem2 is an 8-bit array with a depth of 4 (specified by the range [0:3])
--> mem3 is a 16-bit vector 2D array with 4 rows and 2 columns. 
--> These variables are assigned different values and printed.
.........................Code 26..............................
module des();
    reg [7:0] mem1; // reg vector 8-bit wide
    reg [7:0] mem2 [3:0]; // 8-bit wide vector array with depth=4
    reg [7:0] mem3 [0:3][0:1]; // 16-bit wide vector 2D array with rows=4,cols=2
    initial begin
        mem1 = 8'ha9;
        $display("Mem1 = 0x%h",mem1);
        mem2[0] = 8'haa;
        mem2[1] = 8'hbb;
        mem2[2] = 8'hcc;
        mem2[3] = 8'hdd;
        for( integer i = 0; i<4; i=i+1) begin
            $display("mem[%0d]=0x%h",i,mem2[i]);
        end
        for(integer i = 0; i<4; i = i+1)begin
            for(integer j = 0; j<2; j = j+1)begin
                mem3[i][j] = i+j;
                $display("mem3[%0d][%0d]=0x%h",i,j,mem3[i][j]);
            end
        end
    end
endmodule
Output : 
Mem1 = 0xa9
mem[0]=0xaa
mem[1]=0xbb
mem[2]=0xcc
mem[3]=0xdd
mem3[0][0]=0x00
mem3[0][1]=0x01
mem3[1][0]=0x01
mem3[1][1]=0x02
mem3[2][0]=0x02
mem3[2][1]=0x03
mem3[3][0]=0x03
mem3[3][1]=0x04
.........................What are Memories..............................
--> Memories are digital storage elements that help store a data and information in digital circuits.
--> RAMs and ROMs are good examples of such memory elements.
--> Storage elements can be modeled using one-dimensional arrays of type reg and is called a memory
--> Each element in the memory may represent a word and is referenced using a single array index.
.....................Code 27...........................
reg [7:0] mem [256] // 256 registers with size 8 bit
.......................Register Vector..............................
--> Verilog vectors are declared using a size range on the left side of the variable name and these get realized into flops that match the size of the variable.
--> In the code shown below, the design module accepts clock, reset and some control signals to read and write into the block.
--> It contains a 16-bit storage element called register which simply gets updated during writes and returns the current value during reads.
--> The register is written when sel and wr are high on the same clock edge.
--> It returns the current data when sel is high and wr is low.
...........................Code 28.......................................

module des(
    input clk,
    input rstn,
    input wr,
    input sel,
    input [15:0] wdata,
    output [15:0] rdata);
    reg[15:0] register;
    always@(posedge clk) begin
        if(!rstn) 
            register <= 0;
        else begin
            if(sel & wr) 
                register <= wdata;
            else
                register <= register;
        end
    end
    assign rdata = (sel & ~wr)?register:0;
endmodule
--> The hardware schematic shows that a 16-bit flop is updated when control logic for writes are active
--> And the current value is returned when control logic is configured for reads.
.......................Memory Example..................................
--> In this example, register is an array that has four locations with each having a width of 16-bits.
--> The design module accepts an additional input signal which is called addr to access a particular index in the array.
.......................Code 29.........................
module des(
    input clk,
    input rstn,
    input [1:0] addr,
    input wr,
    input sel,
    input [15:0] wdata,
    output [15:0] rdata
);
    reg [15:0] register [0:3];
    integer i;
    always@(posedge clk) begin
        if(!rstn) begin
            for(i = 0; i < 4; i = i + 1) begin
                register[i] <= 0;
            end
        end else begin
            if(sel & wr) 
                register[addr] <= wdata;
            else
                register[addr] <= register[addr];
        end
    end
    assign rdata = (sel & ~wr)? register[addr] : 0;
endmodule
--> It can be seen in the hardware schematic that each index of the array is a 16-bit flop 
--> And the input address is used to access a particular set of flops.
*/
/*............Verilog Net Types................
...............Net Types........................
--> In Verilog, net types are used to model physical connections between components in digital circuits.
--> They do not store values, its value is determined by the values of its drivers 
--> The default value of a net is typically 'z' (high impedance) when left unconnected.
.........Net Type and its Description...................
--> wire --- Connects elements with continuous assignment
--> tri  --- Connects elements with multiple drivers
--> wor	 --- Creates wired OR configurations
--> wand --- Creates wired AND configurations
--> trior --- Creates wired OR configurations with multiple drivers
--> triand --- Creates wired AND configurations with multiple drivers
--> tri0 --- Models nets with resistive pulldown devices
--> tri1 --- Models nets with resistive pullup devices
--> trireg --- ores a value and is used to model charge storage nodes
--> uwire --- Models nets that can should be driven only by a single driver
--> supply0	--- Models power supply with a low level of strength
--> supply1	--- Models power supply with a high level of strength
................Wire and tri nets.................
--> Wire and tri are two types of nets in Verilog that serve as connections between elements in a digital circuit model.
--> While they are functionally identical and share the same syntax, they are given different names to help designers convey the intended purpose of the net within the model.
--> Wire nets :
    --> Typically used for connections driven by a single source
    --> Ideal for representing nets controlled by one gate or one continuous assignment
    --> The name "wire" suggests a simple, unidirectional connection
--> Tri (short for tristate) nets:
    --> Commonly used for nets that may have multiple drivers
    --> Suitable for modeling buses or other shared connections where different components might drive the net at different times
    --> The name tri implies the possibility of multiple drivers and the potential use of high-impedance states
--> When multiple drivers of the same strength drive conflicting values on a wire or tri net in Verilog, the result is indeed an unknown (x) value.
--> wire and tri nets : 0  0 = 0, 0  1 = x, 0  x = x, 0  z = 0,
                        1  0 = x, 1  1 = 1, 1  x = x, 1  z = 1,
                        x  0 = x, x  1 = x, x  x = x, x  z = x,
                        z  0 = 0, z  1 = 1, z  x = x, z  z = z,
.......................Wired Nets...........................
--> Wired nets are of type wor, wand, trior and triand and are used to model wired logic configurations.
--> wor/trior : 0 + 0 = 0, 0 + 1 = 1, 0 + x = x, 0 + z = 0,
                1 + 0 = 1, 1 + 1 = 1, 1 + x = 1, 1 + z = 1,
                x + 0 = x, x + 1 = 1, x + x = x, x + z = x,
                z + 0 = 0, z + 1 = 1, z + x = x, z + z = z.
--> The wor and trior nets are designed to implement wired OR configurations, ensuring that the net's value becomes 1 whenever any of the drivers outputs a 1.
--> wand/triand : 0 . 0 = 0, 0 . 1 = 0, 0 . x = 0, 0 . z = 0,
                  1 . 0 = 0, 1 . 1 = 1, 1 . x = x, 1 . z = 1,
                  x . 0 = 0, x . 1 = x, x . x = x, x . z = x,
                  z . 0 = 0, z . 1 = 1, z . x = x, z . z = z.
--> The wand and triand nets are designed to implement wired AND configurations, ensuring that the net's value becomes 0 whenever any of the drivers outputs a 0.
--> The simulation shown below illustrates how these net types are different compared to a normal wire when there are multiple drivers on the same net.
...................Code 30............................

module tb;
  wor  		wor_net;
  wand 		wand_net;
  trior 	trior_net;
  triand 	triand_net;

  wire      normal_net;

  reg 		driver_1;
  reg 		driver_2;
  reg [3:0] values;

  assign wor_net = driver_1;
  assign wor_net = driver_2;

  assign trior_net = driver_1;
  assign trior_net = driver_2;

  assign wand_net = driver_1;
  assign wand_net = driver_2;

  assign triand_net = driver_1;
  assign triand_net = driver_2;

  assign normal_net = driver_1;
  assign normal_net = driver_2;

  initial
    $monitor("[%0t] driver_1=%0b driver_2=%0b normal=%0b wor=%0b wand=%0b trior=%0b triand=%0b", $time, driver_1, driver_2, normal_net, wor_net, wand_net, trior_net, triand_net);

  initial begin
    values = {1'bZ, 1'bX, 1'b1, 1'b0};

    for (integer i = 0; i < 4; i+=1) begin
      for (integer j = 0; j < 4; j+=1) begin

      	driver_1 = values[i];
        driver_2 = values[j];
      	#10;
      end
    end
  end

endmodule
Output : 
[0] driver_1=0 driver_2=0 normal=0 wor=0 wand=0 trior=0 triand=0
[10] driver_1=0 driver_2=1 normal=x wor=1 wand=0 trior=1 triand=0
[20] driver_1=0 driver_2=x normal=x wor=x wand=0 trior=x triand=0
[30] driver_1=0 driver_2=z normal=0 wor=0 wand=0 trior=0 triand=0
[40] driver_1=1 driver_2=0 normal=x wor=1 wand=0 trior=1 triand=0
[50] driver_1=1 driver_2=1 normal=1 wor=1 wand=1 trior=1 triand=1
[60] driver_1=1 driver_2=x normal=x wor=1 wand=x trior=1 triand=x
[70] driver_1=1 driver_2=z normal=1 wor=1 wand=1 trior=1 triand=1
[80] driver_1=x driver_2=0 normal=x wor=x wand=0 trior=x triand=0
[90] driver_1=x driver_2=1 normal=x wor=1 wand=x trior=1 triand=x
[100] driver_1=x driver_2=x normal=x wor=x wand=x trior=x triand=x
[110] driver_1=x driver_2=z normal=x wor=x wand=x trior=x triand=x
[120] driver_1=z driver_2=0 normal=0 wor=0 wand=0 trior=0 triand=0
[130] driver_1=z driver_2=1 normal=1 wor=1 wand=1 trior=1 triand=1
[140] driver_1=z driver_2=x normal=x wor=x wand=x trior=x triand=x
[150] driver_1=z driver_2=z normal=z wor=z wand=z trior=z triand=z
......................TriReg Net..................................
--> The trireg net in Verilog is a special type of net that is used to model charge storage nodes.
--> Unlike standard nets that do not store values, a trireg net can hold its last driven value when no drivers are active.
--> This makes it suitable for modeling storage elements like capacitors.
--> A trireg net can be in one of two states:
        --> Driven State: When at least one driver outputs a value (either 0, 1, or x), the trireg net takes on that value.
        --> Capacitive State: When all drivers are in a high-impedance state (z), the trireg retains its last driven value.
--> The strength of the value held by a trireg net in the capacitive state can be specified as small, medium, or medium. This strength is determined at the time of declaration
...........................tri0 and tri1 Nets..................................
--> tri0 and tri1 are specialized net types used to model nets with specific pull strengths.
--> tri0 :      0  0 = 0, 0  1 = x, 0  x = x, 0  z = 0,
                1  0 = x, 1  1 = 1, 1  x = x, 1  z = 1,
                x  0 = x, x  1 = x, x  x = x, x  z = x,
                z  0 = 0, z  1 = 1, z  x = x, z  z = 0.
--> The tri0 net is equivalent to a wire net that has a continuous resistive pulldown device connected to it.
--> When no driver is connected to a tri0 net, its value is 0, reflecting the continuous pull-down effect.
--> If any driver outputs a 1, the value of the tri0 net will be 1, 
--> But if all drivers are inactive or in high-impedance state (z), it will hold at 0.
--> tri1 :      0  0 = 0, 0  1 = x, 0  x = x, 0  z = 0,
                1  0 = x, 1  1 = 1, 1  x = x, 1  z = 1,
                x  0 = x, x  1 = x, x  x = x, x  z = x,
                z  0 = 0, z  1 = 1, z  x = x, z  z = 1.
--> The tri1 net is similar to a wire net but includes a continuous resistive pullup device.
--> When no driver is connected to a tri1 net, its value is 1 due to the pull-up effect.
--> If any driver outputs a 0, the value of the tri1 net will change to 0, 
--> But if all drivers are inactive or in high-impedance state (z), it will remain at 1.
--> The simulation shown below illustrates how these net types are different compared to a normal wire when there are multiple drivers on the same net.
............................Code 31...............................
module tb;
  tri0 		tri0_net;
  tri1 		tri1_net;

  wire      normal_net;

  reg 		driver_1;
  reg 		driver_2;
  reg [3:0] values;

  assign tri0_net = driver_1;
  assign tri0_net = driver_2;

  assign tri1_net = driver_1;
  assign tri1_net = driver_2;

  assign normal_net = driver_1;
  assign normal_net = driver_2;

  initial
    $monitor("[%0t] driver_1=%0b driver_2=%0b normal=%0b tri0=%0b tri1=%0b", $time, driver_1, driver_2, normal_net, tri0_net, tri1_net);

  initial begin
    values = {1'bZ, 1'bX, 1'b1, 1'b0};

    for (integer i = 0; i < 4; i+=1) begin
      for (integer j = 0; j < 4; j+=1) begin

      	driver_1 = values[i];
        driver_2 = values[j];
      	#10;
      end
    end
  end
endmodule
Output :
[0] driver_1=0 driver_2=0 normal=0 tri0=0 tri1=0
[10] driver_1=0 driver_2=1 normal=x tri0=x tri1=x
[20] driver_1=0 driver_2=x normal=x tri0=x tri1=x
[30] driver_1=0 driver_2=z normal=0 tri0=0 tri1=0
[40] driver_1=1 driver_2=0 normal=x tri0=x tri1=x
[50] driver_1=1 driver_2=1 normal=1 tri0=1 tri1=1
[60] driver_1=1 driver_2=x normal=x tri0=x tri1=x
[70] driver_1=1 driver_2=z normal=1 tri0=1 tri1=1
[80] driver_1=x driver_2=0 normal=x tri0=x tri1=x
[90] driver_1=x driver_2=1 normal=x tri0=x tri1=x
[100] driver_1=x driver_2=x normal=x tri0=x tri1=x
[110] driver_1=x driver_2=z normal=x tri0=x tri1=x
[120] driver_1=z driver_2=0 normal=0 tri0=0 tri1=0
[130] driver_1=z driver_2=1 normal=1 tri0=1 tri1=1
[140] driver_1=z driver_2=x normal=x tri0=x tri1=x
[150] driver_1=z driver_2=z normal=z tri0=0 tri1=1
....................Unresolved Nets.............................
--> A uwire net is an unresolved or unidriver wire used to model nets that allow only a single driver.
--> If more than one driver attempts to drive a uwire, it results in a compile-time error.
--> This restriction helps prevent contention and ambiguity in signal assignment.
.....................Supply Nets...................
--> The supply0 and supply1 nets can be used to model the power supplies in a circuit. 
--> These nets shall have supply strengths.
*/
/*..................Verilog Strength..............................
--> In Verilog, the strength of driving a net refers to the relative power or capability of a driver to influence the value of a net.
--> Two types of strengths can be specified in a net declaration
....................Charge Strength.........................
--> Charge strength is specifically used with trireg nets to model charge storage. 
--> It indicates the relative size of the capacitance associated with the net indicated by either small, medium or large.
--> This strength determines how quickly a charge can decay on the net when it is not actively driven, allowing for more accurate simulation of real-world behavior in circuits that involve capacitive elements.
--> The default charge strength of a trireg net is medium.
--> The simulation time for charge decay should be defined in the delay specification for the trireg net.
...................Code 32...................
trireg                          a_net;    // strength medium by default
trireg   (medium) #(0, 0, 100)  cap1;     // strength medium, charge decay time of 100 time units
trireg   (large)  [3:0]         cap2;     // strength large, no decay time
..........................Drive Strength........................
--> Drive strength refers to the capability of a driver to influence the value of a net.
--> It indicates how strongly a signal is driven on the output terminals of a gate or net.
--> Drive strength is crucial in resolving conflicts when multiple drivers attempt to control a net. 
--> The net will take on the value from the strongest driver. 
--> And if there are conflicting values from drivers of the same strength, the result will be unknown (x).
--> When using the assign statement, you can specify the driving strength explicitly. The syntax for this is:
    Syntax : assign(strength1,strength0) net = expression;
    --> strength1: The strength when the net is driven to logic 1.
    --> strength0: The strength when the net is driven to logic 0.
--> If no strengths are specified, the default drive strength is typically strong, which means that the net will take on the value from a strong driver if multiple drivers are present.
--> If multiple drivers with different strengths attempt to drive a net, the net will take on the value of the strongest driver. 
--> If two or more drivers have the same strength but different values, the result will be unknown (x).
...............................Code 33............................
wire out;

assign (strong1, weak0) out = a & b; // Drives 'out' with strong1 when true
--> In this example, 
    if a & b evaluates to 1, out will be driven with a strong signal, 
    if it evaluates to 0, it will be driven weakly.
....................Verilog Strength Keywords....................
.......................supply0........................
--> The supply0 net is a net that is always driven to a logic low (0) value.
--> It is typically used to represent a ground connection or a negative power supply in a circuit.
--> When connected to other components, it ensures that those components see a consistent low voltage level.
--> f no other driver is present, the value of a supply0 net remains 0.
--> It can be used in simulations to model scenarios where certain parts of the circuit are grounded.
......................supply1..................................
--> The supply1 net is a net that is always driven to a logic high (1) value. 
--> It represents a positive power supply connection, ensuring that connected components receive a consistent high voltage level.
--> Similar to supply0, if no other driver is present, the value of a supply1 net remains 1.
--> This is useful for modeling scenarios where certain parts of the circuit are powered.
.....................strong0........................
--> The strong0 keyword indicates that the driver will actively drive the net to a logic low (0) with strong strength. 
--> When a net is assigned a value using strong0, it signifies that the driver has a robust capability to pull the net down to 0, overriding weaker drivers.
......................strong1..................................
--> The strong1 keyword signifies that the driver will actively drive the net to a logic high (1) with strong strength.
--> When a net is assigned a value using strong1, it indicates that the driver can effectively pull the net up to 1, overpowering any weaker drivers.
--> If multiple drivers are connected to the same net, the net will take on the value from the strongest driver.
--> If there are conflicting values from drivers of equal strength, the result will be unknown (x).
...........................Code 34................................
assign (strong1, weak0) my_net = some_signal;    // Drives my_net high with strong strength
assign (weak1, strong0) my_net = another_signal; // Drives my_net low with strong strength
........................pull0..........................
--> The pull0 strength indicates that a net has a resistive pull-down device connected to it. 
--> When a net is assigned the pull0 strength, it will be driven to a logic low (0) when no other drivers are actively driving it high.
--> This ensures that the net defaults to 0 if left floating.
--> If no drivers are present or if all drivers are in a high-impedance state (z), the net will resolve to 0 due to the pull-down effect.
......................pull1................................
--> The pull1 strength signifies that a net has a resistive pull-up device connected to it. 
--> When assigned the pull1 strength, the net will be driven to a logic high (1) when no other drivers are actively driving it low
--> This ensures that the net defaults to 1 if left floating.
--> Similar to pull0, if no drivers are present or all are in high-impedance state (z), the net will resolve to 1 due to the pull-up effect.
--> If a net with pull strengths experiences conflicting values from active drivers, the strongest driver will take precedence. 
--> If two drivers of equal strength drive different values, the result will be unknown (x).
...................Code 35................................
assign (pull1, pull0) my_net = some_signal; // Pulls up to 1 unless driven low
...........................weak0...........................
--> The weak0 strength indicates that a net will be driven to a logic low (0) with a weak driving capability.
--> When a net is assigned the weak0 strength, it signifies that the driver can pull the net down to 0, but it is not as strong as other driving strengths like strong0 or pull0. 
--> This is useful in situations where you want to allow for the possibility of other stronger drivers to take precedence.
--> If no stronger drivers are present, the net will resolve to 0 when driven by weak0.
............................weak1................................
--> The weak1 strength indicates that a net will be driven to a logic high (1) with a weak driving capability. 
--> When assigned the weak1 strength, it means that the driver can pull the net up to 1, but again, it is weaker than other driving strengths like strong1 or pull1.
--> This allows for potential overriding by stronger drivers.
--> If no stronger drivers are present, the net will resolve to 1 when driven by weak1.
--> In cases where multiple drivers are connected to a single net, the net will take on the value from the strongest driver.
--> If two or more drivers of equal strength drive conflicting values, the result will be unknown (x).
...........................Code 36..........................
assign (weak1, weak0) my_net = some_signal; // Drives my_net with weak strengths
...............................highz0................................
--> The highz0 strength indicates that a net is in a high-impedance state while being driven to a logic low (0).
--> It is typically used when modeling nets that can be disconnected or tri-stated, allowing the net to effectively "float" at 0 when no active drivers are present.
--> When a net is assigned the highz0 strength, it means that it can be driven to 0 but will also enter a high-impedance state if no active drivers are present.
..............................highz1.....................................
--> The highz1 strength signifies that a net is in a high-impedance state while being driven to a logic high (1). 
--> Similar to highz0, this strength is used in scenarios where the net can be tri-stated and should float at 1 when not actively driven.
--> When assigned the highz1 strength, the net can be driven to 1 but will enter a high-impedance state if there are no active drivers.
..............................Code 37.................................
assign (highz1, pull0) my_net = some_signal; // Drives my_net with high impedance when not driven
--> The following two rules shall constrain the use of drive strength specifications:
    --> The strength specifications (highz1, highz0) and (highz0, highz1) shall be treated as illegal constructs.
    --> If drive strength is not specified, it shall default to (strong1, strong0).
.............................Code 38.............................................
.............................Verilog Strength Example................................
module tb;

    // Declare nets with different strengths
    reg a, b, c, d;

    wire strong0_net, strong1_net;
    wire pull0_net, pull1_net;
    wire weak0_net, weak1_net;
    wire highz0_net, highz1_net;
    reg [1:0] values = {1'b1, 1'b0};
    integer idx;

    // Assign strong drivers
    assign (strong1, weak0) strong1_net = a; // Strongly drives high if 'a' is 1
    assign (weak1, strong0) strong0_net = b; // Strongly drives low if 'b' is 0

    // Assign pull drivers
    assign (pull1, pull0) pull1_net = c; // Pulls up to 1 unless driven low
    assign (pull0, pull1) pull0_net = d; // Pulls down to 0 unless driven high

    // Assign weak drivers
    assign (weak1, weak0) weak1_net = a; // Weakly drives high if 'a' is 1
    assign (weak0, weak1) weak0_net = b; // Weakly drives low if 'b' is 0

    // Assign high impedance drivers
    assign (highz1, pull0) highz1_net = a; // High impedance when not driven
    assign (highz0, pull1) highz0_net = b; // High impedance when not driven

    initial begin
      repeat (10) begin
        #10;
        idx = $random % 2;
        a = values[idx];
        idx = $random % 2;
        b = values[idx];
        idx = $random % 2;
        c = values[idx];
        idx = $random % 2;
        d = values[idx];
      end
    end

    initial
      $monitor("[%0t] a=%0b b=%0b c=%0b d=%0b strong1=%0b strong0=%0b pull1=%0b pull0=%0b weak1=%0b weak0=%0b highz1=%0b highz0=%0b", $time, a, b, c, d, strong1_net, strong0_net, pull1_net, pull0_net, weak1_net, weak0_net, highz1_net, highz0_net);

endmodule
Output :
[0] a=x b=x c=x d=x strong1=x strong0=x pull1=x pull0=x weak1=x weak0=x highz1=x highz0=x
[10] a=0 b=x c=x d=x strong1=0 strong0=x pull1=x pull0=x weak1=0 weak0=x highz1=0 highz0=x
[20] a=1 b=1 c=x d=0 strong1=1 strong0=1 pull1=x pull0=0 weak1=1 weak0=1 highz1=z highz0=1
[30] a=1 b=1 c=0 d=1 strong1=1 strong0=1 pull1=0 pull0=1 weak1=1 weak0=1 highz1=z highz0=1
[40] a=1 b=0 c=1 d=0 strong1=1 strong0=0 pull1=1 pull0=0 weak1=1 weak0=0 highz1=z highz0=z
[50] a=x b=0 c=1 d=x strong1=x strong0=0 pull1=1 pull0=x weak1=x weak0=0 highz1=x highz0=z
[60] a=0 b=1 c=0 d=0 strong1=0 strong0=1 pull1=0 pull0=0 weak1=0 weak0=1 highz1=0 highz0=1
[70] a=0 b=x c=0 d=x strong1=0 strong0=x pull1=0 pull0=x weak1=0 weak0=x highz1=0 highz0=x
[80] a=x b=x c=x d=0 strong1=x strong0=x pull1=x pull0=0 weak1=x weak0=x highz1=x highz0=x
[90] a=0 b=0 c=0 d=x strong1=0 strong0=0 pull1=0 pull0=x weak1=0 weak0=0 highz1=0 highz0=z
[100] a=0 b=x c=x d=x strong1=0 strong0=x pull1=x pull0=x weak1=0 weak0=x highz1=0 highz0=x
*/
/* ..........................Verilog Module............................
--> A module is a block of Verilog code that implements a certain functionality. 
--> Modules can be embedded within other modules 
--> And a higher level module can communicate with its lower level modules using their input and output ports.
............................Syntax.......................................
--> A module should be enclosed within module and endmodule keywords.
--> Name of the module should be given right after the module keyword 
--> And an optional list of ports may be declared as well.
--> Note that ports declared in the list of port declarations cannot be redeclared within the body of the module.
--> Syntax : 
            module <name> ([port_list]);
	        // Contents of the module
            endmodule

            // A module can have an empty portlist
            module name;
	        // Contents of the module
            endmodule
--> All variable declarations, dataflow statements, functions or tasks and lower module instances 
    if any, must be defined within the module and endmodule keywords.
--> There can be multiple modules with different names in the same file and can be defined in any order.
--> Example :
        --> The module dff represents a D flip flop which has three input ports d , clk , rstn and one output port q . 
        --> Contents of the module describe how a D flip flop should behave for different combinations of inputs. 
        --> Here, input d is always assigned to output q at positive edge of clock if rstn is high because it is an active low reset.
        ..................................Code 39........................................
        // Module called "dff" has 3 inputs and 1 output port
        module dff ( 	input 			d,
							input 			clk,
							input 			rstn,
							output reg	q);

	        // Contents of the module
	        always @ (posedge clk) begin
		        if (!rstn)
			        q <= 0;
		        else
			        q <= d;
	            end
            endmodule
--> Note that you cannot have any code written outside a module !
.........................What is the purpose of a module.................................
--> A module represents a design unit that implements certain behavioral characteristics and will get converted into a digital circuit during synthesis. 
--> Any combination of inputs can be given to the module and it will provide a corresponding output. 
--> This allows the same module to be reused to form bigger modules that implement more complex hardware.
--> For example, the DFF shown above can be chained to form a shift register.
.................................Code 40......................................
module shift_reg ( 	input 	d,
										input  	clk,
										input 	rstn,
										output 	q);

	wire [2:0] q_net;
	dff u0 (.d(d), 				.clk(clk), .rstn(rstn), .q(q_net[0]));
	dff u1 (.d(q_net[0]), .clk(clk), .rstn(rstn), .q(q_net[1]));
	dff u2 (.d(q_net[1]), .clk(clk), .rstn(rstn), .q(q_net[2]));
	dff u3 (.d(q_net[2]), .clk(clk), .rstn(rstn), .q(q));

endmodule
...............................Hardware Schematic...................................
--> Note that the dff instances are connected together with wires as described by the Verilog RTL module.
--> Instead of building up from smaller blocks to form bigger design blocks, the reverse can also be done.
--> Consider the breakdown of a simple GPU engine into smaller components such that each can be represented as a module that implements a specific feature.
--> The GPU engine shown below can be divided into five different sub-blocks where each perform a specific functionality.
--> The bus interface unit gets data from outside into the design, which gets processed by another unit to extract instructions.
--> Other units down the line process data provided by previous unit.
--> Graphical processing Unit
        Bus interface Unit --> Command and Processor --> Texture Mapping --> Raster --> Display Controller
--> Each sub-block can be represented as a module with a certain set of input and output signals for communication with other modules and each sub-block can be further divided into more finer blocks as required.
..............................What are Top Level Modules...................................
--> A top-level module is one which contains all other modules.
--> A top-level module is not instantiated within any other module.
--> For example, design modules are normally instantiated within top level testbench modules so that simulation can be run by providing input stimulus. 
--> But, the testbench is not instantiated within any other module because it is a block that encapsulates everything else and hence is the top-level module.
..............................Design Top Level.......................................
--> The design code shown below has a top-level module called design. 
--> This is because it contains all other sub-modules requried to make the design complete.
--> The submodules can have more nested sub-modules like mod3 inside mod1 and mod4 inside mod2.
--> Anyhow, all these are included into the top level module when mod1 and mod2 are instantiated.
--> So this makes the design complete and is the top-level module for the design.
......................................Code 41.........................................
//---------------------------------
//  Design code
//---------------------------------
module mod3 ( [port_list] );
	reg c;
	// Design code
endmodule

module mod4 ( [port_list] );
	wire a;
	// Design code
endmodule

module mod1 ( [port_list] );	 	// This module called "mod1" contains two instances
	wire 	y;

	mod3 	mod_inst1 ( ... ); 	 		// First instance is of module called "mod3" with name "mod_inst1"
	mod3 	mod_inst2 ( ... );	 		// Second instance is also of module "mod3" with name "mod_inst2"
endmodule

module mod2 ( [port_list] ); 		// This module called "mod2" contains two instances
	mod4 	mod_inst1 ( ... );			// First instance is of module called "mod4" with name "mod_inst1"
	mod4 	mod_inst2 ( ... );			// Second instance is also of module "mod4" with name "mod_inst2"
endmodule

// Top-level module
module design ( [port_list]); 		// From design perspective, this is the top-level module
	wire 	_net;
	mod1 	mod_inst1 	( ... ); 			// since it contains all other modules and sub-modules
	mod2 	mod_inst2 	( ... );
endmodule
................................Testbench Top Level..........................................
--> The testbench module contains stimulus to check functionality of the design and is primarily used for functional verification using simulation tools.
--> Hence the design is instantiated and called d0 inside the testbench module. 
--> From a simulator perspective, testbench is the top level module.
.....................................Code 42....................................
//-----------------------------------------------------------
// Testbench code
// From simulation perspective, this is the top-level module
// because 'design' is instantiated within this module
//-----------------------------------------------------------
module testbench;
	design d0 ( [port_list_connections] );

	// Rest of the testbench code
endmodule
...........................Hierarchical Names...................................
--> A hierarchical structure is formed when modules can be instantiated inside one another, and hence the top level module is called the root.
--> Since each lower module instantiations within a given module is required to have different identifier names, there will not be any ambiguity in accessing signals.
--> A hierarchical name is constructed by a list of these identifiers separated by dots . for each level of the hierarchy.
--> Any signal can be accessed within any module using the hierarchical path to that particular signal.
...............................Code 43....................................
// Take the example shown above in top level modules
design.mod_inst1 					// Access to module instance mod_inst1
design.mod_inst1.y 					// Access signal "y" inside mod_inst1
design.mod_inst2.mod_inst2.a		// Access signal "a" within mod4 module

testbench.d0._net; 					// Top level signal _net within design module accessed from testbench
*/
/*.......................Verilog Ports................................
--> Ports are a set of signals that act as inputs and outputs to a particular module and are the primary way of communicating with it. 
--> Think of a module as a fabricated chip placed on a PCB and it becomes quite obvious that the only way to communicate with the chip is through its pins.
--> Ports are like pins and are used by the design to send and receive signals from the outside world.
..........................Types of Ports..............................
--> Ports and its Description
    --> Input	The design module can only receive values from outside using its input ports
    --> Output	The design module can only send values to the outside using its output ports
    --> Inout	The design module can either send or receive values using its inout ports
--> Ports are by default considered as nets of type wire.
........................Syntax...........................
--> Ports declared as inout can act as both input and output.
.........................Code 44.........................
input  [net_type] [range] list_of_names; 	// Input port
inout  [net_type] [range] list_of_names; 	// Input & Output port
output [net_type] [range] list_of_names; 	// Output port driven by a wire
output [var_type] [range] list_of_names; 	// Output port driven by a variable
..........................Example........................
--> In the code shown below, there are three input ports, one output port and one inout port.
.................................Code 45..................................
module  my_design ( input wire			clk,
                    input 					en,
                    input 					rw,
                    inout [15:0]	  data,
                    output 					int );

	// Design behavior as Verilog code

endmodule
--> It is illegal to use the same name for multiple ports.
.................................Code 46............................
input  aport;         // First declaration - valid
input  aport;         // Error - already declared
output aport;         // Error - already declared
...............................Signed Ports.................................
--> The signed attribute can be attached to a port declaration or a net/reg declaration or both
--> Implicit nets are by default unsigned.
...............................Code 47..............................
module ( input      a,
                    b,
         output     c);

	// ports a, b, and c are by default unsigned
endmodule
--> If either the net/reg declaration has a signed attribute, then the other shall also be considered signed.
................................Code 48........................................
module ( input signed a, b,
         output c);
	wire a, b;          // a, b are signed from port declaration
	reg signed c;       // c is signed from reg declaration
endmodule
................................Port Variations...........................
................................Verilog 1995..............................
--> Verilog has undergone a few revisions and the original IEEE version in 1995 had the following way for port declaration. 
--> Here, module declaration had to first list the names of ports within the brackets
--> And then direction of those ports defined later within the body of the module.
.................................Code 49................................
module test (a, b, c);

	input 	[7:0] a;            // inputs "a" and "b" are wires
	input 	[7:0] b;
	output 	[7:0] c; 			// output "c" by default is a wire

	// Still, you can declare them again as wires to avoid confusion
	wire 	[7:0] a;
	wire 	[7:0] b;
	wire 	[7:0] c;
endmodule


module test (a, b, c);

	input  [7:0] a, b;
	output [7:0] c;           // By default c is of type wire

	// port "c" is changed to a reg type
	reg    [7:0] c;
endmodule
.............................Verilog 2001 onwards.........................
--> ANSI-C style port naming was introduced in 2001 
--> And allowed the type to be specified inside the port list.
.........................Code 50......................................
module test ( input [7:0]	a,
                            b, 		// "b" is considered an 8-bit input
              output [7:0]  c);

	// Design content
endmodule

module test ( input wire [7:0]	a,
              input wire [7:0]  b,
              output reg [7:0]  c);

	// Design content
endmodule
--> If a port declaration includes a net or variable type, then that port is considered to be completely declared
--> It is illegal to redeclare the same port in a net or variable type declaration.
................................Code 51...................................
module test ( input      [7:0] a,       // a, e are implicitly declared of type wire
	          output reg [7:0] e );

   wire signed [7:0] a;     // illegal - declaration of a is already complete -> simulator dependent
   wire        [7:0] e;     // illegal - declaration of e is already complete

   // Rest of the design code
endmodule
--> If the port declaration does not include a net or variable type, then the port can be declared in a net or variable type declaration again.
..........................Code 52.......................................
module test ( input      [7:0] a,
              output     [7:0] e);

     reg [7:0] e;              // Okay - net_type was not declared before

     // Rest of the design code
endmodule
*/
/*..................................Verilog Module instantiation.................................
--> As we saw in a previous article , bigger and complex designs are built by integrating multiple modules in a hierarchical manner.
--> Modules can be instantiated within other modules.
--> And ports of these instances can be connected with other signals inside the parent module.
--> These port connections can be done via an ordered list or by name.
...............................Port Connection by Ordered list.................................
--> One method of making the connection between the port expressions listed in a module instantiation with the signals inside the parent module is by the ordered list.
.....................................Code 53............................................
module mydesign ( input  x, y, z,     // x is at position 1, y at 2, x at 3 and
                  output o);          // o is at position 4

endmodule

module tb_top;
	wire [1:0]  a;
	wire        b, c;

	mydesign d0  (a[0], b, a[1], c);  // a[0] is at position 1 so it is automatically connected to x
	                                  // b is at position 2 so it is automatically connected to y
	                                  // a[1] is at position 3 so it is connected to z
	                                  // c is at position 4, and hence connection is with o
endmodule
--> mydesign is a module instantiated with the name d0 in another module called tb_top.
--> Ports are connected in a certain order which is determined by the position of that port in the port list of the module declaration.
--> For example, b in the testbench is connected to y of the design simply because both are at the second position in the list of ports.
--> Order of ports in the design module should be known for a correct connection.
--> This is very inconvenient because the order might change if a new port is added to the list or when the number of ports in the design is very large.
......................Port Connection by name..................................
--> A better way to connect ports is by explicitly linking ports on both the sides using their port name.
--> The dot . indicates that the port name following the dot belongs to the design.
--> The signal name to which the design port has to be connected is given next within parentheses ( ).
.................................Code 54..................................
module design_top;
	wire [1:0]  a;
	wire        b, c;

	mydesign d0  ( .x (a[0]),    // signal "x" in mydesign should be connected to "a[0]" in this module (design_top)
	               .y (b),       // signal "y" in mydesign should be connected to "b" in this module (design_top)
	               .z (a[1]),
	               .o (c));
endmodule
--> It is recommended to code each port connection in a separate line so that any compilation error message will correctly point to the line number where the error occured. 
--> This is much easier to debug and resolve compared to not knowing which port created the error had they been all in the same line.
--> Because these connections are made by name, the order in which they appear is irrelevant.
--> Multiple module instance port connections are not allowed.
..................................Code 55.......................................
module design_top;
	mydesign d0 ( .x (a[0]),
	              .z (a[1]),     // z at second position is okay because of explicit connection
	              .y (a[1]),
	              .x (b),        // illegal - x is already connected to a[0]
	              .o (c));
endmodule
................................Unconnected/Floating Ports.................................
--> Ports that are not connected to any wire in the instantiating module will have a value of high-impedance.
................................Code 56................................................
module design_top;
	mydesign d0   (              // x is an input and not connected, hence a[0] will be Z
	              .y (a[1]),
	              .z (a[1]),
	              .o ());        // o has valid value in mydesign but since
	                             // it is not connected to "c" in design_top, c will be Z
endmodule
..........................Example...............................
............................Code 57......................................
--> Let us take the shift register example we had seen before , and leave some ports unconnected.
module shift_reg (   input   d,
                    input    clk,
                    input   rstn,
                    output   q);

  wire [2:0] q_net;

  dff u0 (.d(d),         .clk(clk), .rstn(rstn), .q(q_net[0]));
  dff u1 (.d(q_net[0]), .clk(clk), .rstn(rstn), .q()); 						// Output q is left floating
  dff u2 (.d(q_net[1]), .clk(clk), .rstn(rstn), .q()); 						// Output q is left floating
  dff u3 (.d(q_net[2]), .clk(clk), .rstn(rstn), .q(q));

endmodule
--> Note that outputs from instances u1 and u2 are left unconnected in the RTL schematic obtained after synthesis
--> Since the input d to instances u2 and u3 are now connected to nets that are not being driven by anything it is grounded.
--> In simulations, such unconnected ports will be denoted as high impedance ('hZ) typically shown in waveforms as an orange line vertically aligned in the middle.
--> All port declarations are implicitly declared as wire and hence the port direction is sufficient in that case.
--> However output ports that need to store values should be declared as reg data type and can be used in a procedural block like always and initial only.
--> Ports of type input or inout cannot be declared as reg because they are being driven from outside continuously and should not store values, rather reflect the changes in the external signals as soon as possible.
--> It is perfectly legal to connect two ports with varying vector sizes, but the one with lower vector size will prevail and the remaining bits of the other port with a higher width will be ignored.
..............................Code 58......................................
// Case #1 : Inputs are by default implicitly declared as type "wire"
module des0_1	(input wire clk ...); 		// wire need not be specified here
module des0_2 	(input clk, ...); 			// By default clk is of type wire

// Case #2 : Inputs cannot be of type reg
module des1 (input reg clk, ...); 		// Illegal: inputs cannot be of type reg

// Case #3: Take two modules here with varying port widths
module des2 (output [3:0] data, ...);	// A module declaration with 4-bit vector as output
module des3 (input [7:0] data, ...); 	// A module declaration with 8-bit vector as input

module top ( ... );
	wire [7:0] net;
	des2  u0 ( .data(net) ... ); 		// Upper 4-bits of net are undriven
	des3  u1 ( .data(net) ... );
endmodule

// Case #4 : Outputs cannot be connected to reg in parent module
module top_0 ( ... );
	reg [3:0] data_reg;

	des2 ( .data(data) ...); 	// Illegal: data output port is connected to a reg type signal "data_reg"
endmodule
*/
/*..................................Verilog Assignment Statements.........................................
--> Signals of type wire or a similar wire like data type requires the continuous assignment of a value. 
--> For example, consider an electrical wire used to connect pieces on a breadboard. 
--> As long as the +5V battery is applied to one end of the wire, the component connected to the other end of the wire will get the required voltage.
--> In Verilog, this concept is realized by the assign statement where any wire or other similar wire like data-types can be driven continuously with a value.
--> The value can either be a constant or an expression comprising of a group of signals.
..................................Assign Syntax..................................................
--> The assignment syntax starts with the keyword assign followed by the signal name which can be either a single signal or a concatenation of different signal nets.
--> The drive strength and delay are optional and are mostly used for dataflow modeling than synthesizing into real hardware.
--> The expression or signal on the right hand side is evaluated and assigned to the net or expression of nets on the left hand side.
--> Syntax :
            assign <net_expression> = [drive_strength] [delay] <expression of different signals or constant value>
--> Delay values are useful for specifying delays for gates and are used to model timing behavior in real hardware because the value dictates when the net should be assigned with the evaluated value.
....................................Rules....................................................
--> There are some rules that need to be followed when using an assign statement:
    --> LHS should always be a scalar or vector net or a concatenation of scalar or vector nets and never a scalar or vector register.
    --> RHS can contain scalar or vector registers and function calls.
    --> Whenever any operand on the RHS changes in value, LHS will be updated with the new value.
    --> assign statements are also called continuous assignments and are always active
--> Example 1 : 
    --> In the following example, a net called out is driven continuously by an expression of signals. i1 and i2 with the logical AND & form the expression
    ..................................Code 59.....................................
    module behaviour;
    wire i1,i2;
    wire out;
    assign out = i1&i2; 
    endmodule
    --> If the wires are instead converted into ports and synthesized, we will get an RTL schematic like the one shown below after synthesis.
--> Continuous assignment statement can be used to represent combinational gates in Verilog.
--> Example 2 :
    --> The module shown below takes two inputs and uses an assign statement to drive the output z using part-select and multiple bit concatenations. 
    --> Treat each case as the only code in the module, else many assign statements on the same signal will definitely make the output become X.
    ....................................Code 60.........................................
*/
/*
module xyz;
    reg [3:0]x;// x is a 4-bit vector net
    reg y;
    wire [4:0] z;// y is a scalar net (1-bit)
    wire [1:0] a;// z is a 5-bit vector net
    wire b;
*/
/*...........................Case 1..........................................
// Assume one of the following assignments are chosen in real design
// If x='hC and y='h1 let us see the value of z

// Case #1: 4-bits of x and 1 bit of y is concatenated to get a 5-bit net
// and is assigned to the 5-bit nets of z. So value of z='b11001 or z='h19
    initial begin
        x = 'hC;
        y = 'h1;
    end
    assign z = {x,y};
    initial $display("z = %0b",z);
endmodule
Output : z = 11001
*/
/*.............................Case 2.................................
// Case #2: 4-bits of x and 1 bit of y is concatenated to get a 5-bit net
// and is assigned to selected 3-bits of net z. Remaining 2 bits of z remains
// undriven and will be high-imp. So value of z='bZ001Z
initial begin
        x = 'hC;
        y = 'h1;
    end
    assign z[3:1] = {x, y};
    initial $monitor("z = %0b",z);
endmodule
Output : z = z001z
*/
/*..............................Case 3................................
// Case #3: The same statement is used but now bit4 of z is driven with a constant
// value of 1. Now z = 'b1001Z because only bit0 remains undriven
initial begin
        x = 'hC;
        y = 'h1;
    end
    assign z[3:1] = {x, y};
    assign z[4] = 1;
    initial $monitor("z = %0b",z);
endmodule
Output : z = 1001z
*/
/*...............................Case 4.....................................
// Case #4: Assume bit3 is driven instead, but now there are two drivers for bit3,
// and both are driving the same value of 0. So there should be no contention and
// value of z = 'bZ001Z
initial begin
        x = 'hC;
        y = 'h1;
    end
    assign z[3:1] = {x, y};
    assign z[3] = 0;
    initial $monitor("z = %0b",z);
endmodule
Output : z = z001z
*/
/*.................................Case 5...............................
// Case #5: Assume bit3 is instead driven with value 1, so now there are two drivers
// with different values, where the first line is driven with the value of X which
// at the time is 0 and the second assignment where it is driven with value 1, so
// now it becomes unknown which will win. So z='bZX01Z
initial begin
        x = 'hC;
        y = 'h1;
    end
    assign z[3:1] = {x, y};
    assign z[3] = 1;
    initial $monitor("z = %0b",z);
endmodule
Output : z = zx01z
*/
/*......................................Case 6............................................
// Case #6: Partial selection of operands on RHS is also possible and say only 2-bits
// are chosen from x, then z = 'b00001 because z[4:3] will be driven with 0
initial begin
        x = 'hC;
        y = 'h1;
    end
    assign z = {x[1:0], y};
    initial $monitor("z = %4b",z);
endmodule
Output : z = 00001
*/
/*........................................Case 7......................................
// Case #7: Say we explicitly assign only 3-bits of z and leave remaining unconnected
// then z = 'bZZ001
initial begin
        x = 'hC;
        y = 'h1;
    end
    assign z[2:0] = {x[1:0], y};
    initial $monitor("z = %b",z);
endmodule
Output : z = zz001
*/
/*.......................................Case 8........................................
// Case #8: Same variable can be used multiple times as well and z = 'b00111
// 3{y} is the same as {y, y, y}
initial begin
        x = 'hC;
        y = 'h1;
    end
    assign z = {3{y}};
    initial $monitor("z = %b",z);
endmodule
Output : z = 00111
*/
/*..........................................Case 9.............................................
// Case #9: LHS can also be concatenated: a is 2-bit vector and b is scalar
// RHS is evaluated to 11001 and LHS is 3-bit wide so first 3 bits from LSB of RHS
// will be assigned to LHS. So a = 'b00 and b ='b1
initial begin
        x = 'hC;
        y = 'h1;
    end
    assign {a,b} = {x,y};
    initial $monitor("a = %b b = %b",a,b);
endmodule
Output : a = 00 b = 1
*/
/*............................................Case 10............................................
// Case #10: If we reverse order on LHS keeping RHS same, we get a = 'b01 and b='b0
initial begin
        x = 'hC;
        y = 'h1;
    end
    assign {b,a} = {x,y};
    initial $monitor("a = %b b = %b",a,b);
endmodule
Output : a = 01 b = 0
*/
/*..............................Assign reg Variables.......................................
--> It is illegal to drive or assign reg type variables with an assign statement.
--> This is because a reg variable is capable of storing data and does not require to be driven continuously. reg signals can only be driven in procedural blocks like initial and always.
.................................Implicit Continuous Assignment....................................
--> When an assign statement is used to assign the given net with some value, it is called explicit assignment.
-->  Verilog also allows an assignment to be done when the net is declared and is called implicit assignment.
................................Code 61............................
wire [1:0] a;
assign a = x & y; 			// Explicit assignment

wire [1:0] a = x & y; 	// Implicit assignment
..............................Combinational Logic Design..................................
--> Consider the following digital circuit made from combinational gates and the corresponding Verilog code.
--> Combinational logic requires the inputs to be continuously driven to maintain the output unlike sequential elements like flip flops where the value is captured and stored at the edge of a clock.
--> So an assign statement fits the purpose the well because the output o is updated whenever any of the inputs on the right hand side change.
.................................Code 62......................................
module combo (	input 	a, b, c, d,
								output  o);

  assign o = ~((a & b) | c ^ d);

endmodule
................................Hardware Schematic.......................................
--> After design elaboration and synthesis, we do get to see a combinational circuit that would behave the same way as modeled by the assign statement.
--> See that the signal o becomes 1 whenever the combinational expression on the RHS becomes true.
--> Similarly o becomes 0 when RHS is false. 
--> Output o is X from 0ns to 10ns because inputs are X during the same time.
*/
/*.............................................Verilog assign examples...............................................
...............................................Combinational Logic with assign.......................................
--> The verilog assign statement is typically used to continuously drive a signal of wire datatype and gets synthesized as combinational logic.
--> Here are some more design examples using the assign statement.
..............................Example 1 : Simple Combinationational Logic...................................
--> The code shown below implements a simple digital combinational logic which has an output wire z that is driven continuously with an assign statement to realize the digital equation.
...............................Code 1.................................................
module combo ( 	input 	a, b, c, d, e,
								output 	z);

	assign z = ((a & b) | (c ^ d) & ~e);

endmodule
--> The module combo gets elaborated into the following hardware schematic using synthesis tools and can be seen that the combinational logic is implemented with digital gates.
............................Test Bench..............................................
--> The testbench is a platform for simulating the design to ensure that the design does behave as expected.
--> All combinations of inputs are driven to the design module using a for loop with a delay statement of 10 time units so that the new value is applied to the inputs after some time.
...............................Code 2.........................................................




















*/
/*
...................................Verilog Operators..........................................
--> Data that cannot be processed is quite useless, there'll always be some form of calculation required in digital circuits and computer systems. 
--> Let's look at some of the operators in Verilog that would enable synthesis tools realize appropriate hardware elements.
...................................Verilog Arithmetic Operators.........................................
--> If the second operand of a division or modulus operator is zero, then the result will be X.
--> If either operand of the power operator is real, then the result will also be real. 
--> The result will be 1 if the second operand of a power operator is 0 (a^0).
--> 
        Operator        Description
        a + b	        a plus b
        a - b	        a minus b
        a * b	        a multiplied by b
        a / b	        a divided by b
        a % b	        a modulo b
        a ** b	        a to the power of b
--> An example of how arithmetic operators are used is given below.
.............................................Code 63.............................................
module des;
    reg[7:0] data1;
    reg[7:0] data2;
    initial begin
        data1 = 45;
        data2 = 9;
        $display("Add + = %d",data1+data2);
        $display("Sub - = %d",data1-data2);
        $display("Mul * = %d",data1*data2);
        $display("Div / = %d",data1/data2);
        $display("Mod %% = %d",data1%data2);
        $display("pow ** = %d",data1**data2);
        $display("data1/0 = %0d",data1/0);
        $display("data2%%0 = %0d",data2%0);
        $display("pow(data2,2.0) = %f",data2**2.00);
        $display("data1**0 = %0d ",data1**0);
    end
endmodule
Output :
Add + =  54
Sub - =  36
Mul * = 149
Div / =   5
Mod % =   0
pow ** = 205
data1/0 = x
data2%0 = x
pow(data2,2.0) = 81.000000
data1**0 = 1
*/
/*........................................Verilog Relational Operators.....................................
--> An expression with the relational operator will result in a 1 if the expression is evaluated to be true, and 0 if it is false.
--> If either of the operands is X or Z, then the result will be X.
--> Relational operators have a lower precedence than arithmetic operators
--> And all relational operators have the same precedence.
--> 
    Operator	Description
    a < b	    a less than b
    a > b	    a greater than b
    a <= b	    a less than or equal to b
    a >= b	    a greater than or equal to b
...........................................Code 64.........................................
module des;
  reg [7:0]  data1;
  reg [7:0]  data2;

  initial begin
    data1 = 45;
    data2 = 9;
    $display ("Result for data1 >= data2 : %0d", data1 >= data2);

    data1 = 45;
    data2 = 45;
    $display ("Result for data1 <= data2 : %0d", data1 <= data2);

    data1 = 9;
    data2 = 8;
    $display ("Result for data1 > data2 : %0d", data1 > data2);

    data1 = 22;
    data2 = 22;
    $display ("Result for data1 < data2 : %0d", data1 < data2);
  end
endmodule

Output :
Result for data1 >= data2 : 1
Result for data1 <= data2 : 1
Result for data1 > data2 : 1
Result for data1 < data2 : 0
*/
/*..................................Verilog Equality Operators............................................
--> Equality operators have the same precedence amongst them and are lower in precedence than relational operators. 
--> The result is 1 if true, and 0 if false.
--> If either of the operands of logical-equality (==) or logical-inequality (!=) is X or Z, then the result will be X.
--> You may use case-equality operator (===) or case-inequality operator (!==) to match including X and Z and will always have a known value.
--> 
    Operator	        Description
    a === b	            a equal to b, including x and z
    a !== b	            a not equal to b, including x and z
    a == b	            a equal to b, result can be unknown
    a != b	            a not equal to b, result can be unknown
..............................................Code 65.................................................
module des;
  reg [7:0]  data1;
  reg [7:0]  data2;

  initial begin
    data1 = 45;     data2 = 9;      $display ("Result for data1(%0d) === data2(%0d) : %0d", data1, data2, data1 === data2);
    data1 = 'b101x; data2 = 'b1011; $display ("Result for data1(%0b) === data2(%0b) : %0d", data1, data2, data1 === data2);
    data1 = 'b101x; data2 = 'b101x; $display ("Result for data1(%0b) === data2(%0b) : %0d", data1, data2, data1 === data2);
    data1 = 'b101z; data2 = 'b1z00; $display ("Result for data1(%0b) !== data2(%0b) : %0d", data1, data2, data1 !== data2);
    data1 = 39;     data2 = 39;     $display ("Result for data1(%0d) == data2(%0d) : %0d", data1, data2, data1 == data2);
    data1 = 14;     data2 = 14;     $display ("Result for data1(%0d) != data2(%0d) : %0d", data1, data2, data1 != data2);
  end
endmodule
Output :
Result for data1(45) === data2(9) : 0
Result for data1(101x) === data2(1011) : 0
Result for data1(101x) === data2(101x) : 1
Result for data1(101z) !== data2(1z00) : 1
Result for data1(39) == data2(39) : 1
Result for data1(14) != data2(14) : 0
*/
/*.................................Verilog Logical Operators.............................................
--> The result of a logical and (&&) is 1 or true when both its operands are true or non-zero. 
--> The result of a logical or (||) is 1 or true when either of its operands are true or non-zero.
--> If either of the operands is X, then the result will be X as well.
--> The logical negation (!) operator will convert a non-zero or true operand into 0 and a zero or false operand into 1, while an X will remain as an X.
-->
    Operator	        Description
    a && b	            evaluates to true if a and b are true
    a || b	            evaluates to true if a or b are true
    !a	                Converts non-zero value to zero, and vice versa
................................................Code 66......................................................
module des;
  reg [7:0]  data1;
  reg [7:0]  data2;

  initial begin
    data1 = 45;     data2 = 9; $display ("Result of data1(%0d) && data2(%0d) : %0d", data1, data2, data1 && data2);
    data1 = 0;      data2 = 4; $display ("Result of data1(%0d) && data2(%0d) : %0d", data1, data2, data1 && data2);
    data1 = 'dx;    data2 = 3; $display ("Result of data1(%0d) && data2(%0d) : %0d", data1, data2, data1 && data2);
    data1 = 'b101z; data2 = 5; $display ("Result of data1(%0d) && data2(%0d) : %0d", data1, data2, data1 && data2);
    data1 = 45;     data2 = 9; $display ("Result of data1(%0d) || data2(%0d) : %0d", data1, data2, data1 || data2);
    data1 = 0;      data2 = 4; $display ("Result of data1(%0d) || data2(%0d) : %0d", data1, data2, data1 || data2);
    data1 = 'dx;    data2 = 3; $display ("Result of data1(%0d) || data2(%0d) : %0d", data1, data2, data1 || data2);
    data1 = 'b101z; data2 = 5; $display ("Result of data1(%0d) || data2(%0d) : %0d", data1, data2, data1 || data2);
    data1 = 4;                 $display ("Result of !data1(%0d) : %0d", data1, !data1);
    data1 = 0;                 $display ("Result of !data1(%0d) : %0d", data1, !data1);
  end
endmodule
Output :
Result of data1(45) && data2(9) : 1
Result of data1(0) && data2(4) : 0
Result of data1(x) && data2(3) : x
Result of data1(Z) && data2(5) : 1
Result of data1(45) || data2(9) : 1
Result of data1(0) || data2(4) : 1
Result of data1(x) || data2(3) : 1
Result of data1(Z) || data2(5) : 1
Result of !data1(4) : 0
Result of !data1(0) : 1
*/
/*.................................Verilog Bit wise Operators...........................................
--> This operator will combine a bit in one operand with its corresponding bit in the other operand to calculate a single bit result.
--> 
        &	0	1	x	z
        0	0	0	0	0
        1	0	1	x	x
        x	0	x	x	x
        z	0	x	x	x
--> 
       |	0	1	x	z
        0	0	1	x	x
        1	1	1	1	1
        x	x	1	x	x
        z	x	1	x	x 
...............................................Code 67...............................................
module des;
  reg 	data1 [3:0] ;
  reg 	data2 [3:0] ;
  integer 		 i, j;

  initial begin
    data1[0] = 0;  data2[0] = 0;
    data1[1] = 1;  data2[1] = 1;
    data1[2] = 1'bx; data2[2] = 1'bx;
    data1[3] = 1'bz; data2[3] = 1'bz;

    for (i = 0; i < 4; i = i+1) begin
      for (j = 0; j < 4; j = j+1) begin
        $display ("data1(%0d) & data2(%0d) = %0d", data1[i], data2[j], data1[i] & data2[j]);
      end
    end
  end
endmodule
Output :
data1(0) & data2(0) = 0
data1(0) & data2(1) = 0
data1(0) & data2(x) = 0
data1(0) & data2(z) = 0
data1(1) & data2(0) = 0
data1(1) & data2(1) = 1
data1(1) & data2(x) = x
data1(1) & data2(z) = x
data1(x) & data2(0) = 0
data1(x) & data2(1) = x
data1(x) & data2(x) = x
data1(x) & data2(z) = x
data1(z) & data2(0) = 0
data1(z) & data2(1) = x
data1(z) & data2(x) = x
data1(z) & data2(z) = x
*/
/*.........................................Verilog Shift Operators...............................................
--> There are two kinds of shift operators:
--> Logical shift operators     : <<  and >>
--> Arithmetic shift operators : <<< and >>>
.............................................Code 68.............................................................
module des;
  reg [7:0] data;
  integer      i;

  initial begin
    data = 8'h1;
    $display ("Original data = 'd%0d or 'b%0b", data, data);
    for (i = 0; i < 8; i +=1 ) begin
      $display ("data << %0d = 'b%b", i, data << i);
    end

    data = 8'h80;
    $display ("Original data = 'd%0d or 'b%0b", data, data);
    for (i = 0; i < 8; i +=1 ) begin
      $display ("data >> %0d = 'b%b", i, data >> i);
    end

    data = 8'h1;
    $display ("data >> 1 = 'b%b", data >> 1);
  end
endmodule
Output :
Original data = 'd1 or 'b1
data << 0 = 'b00000001
data << 1 = 'b00000010
data << 2 = 'b00000100
data << 3 = 'b00001000
data << 4 = 'b00010000
data << 5 = 'b00100000
data << 6 = 'b01000000
data << 7 = 'b10000000
Original data = 'd128 or 'b10000000
data >> 0 = 'b10000000
data >> 1 = 'b01000000
data >> 2 = 'b00100000
data >> 3 = 'b00010000
data >> 4 = 'b00001000
data >> 5 = 'b00000100
data >> 6 = 'b00000010
data >> 7 = 'b00000001
data >> 1 = 'b00000000
*/