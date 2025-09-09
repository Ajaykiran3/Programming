/* Code : 1
#include <iostream> 
//using namespace std;
int main(){
    std::cout << "Ajay Kiran";
}
Output : Ajay Kiran
*/
/* Notes :
#include <iostream> // iostream - output to console
---> iostream removed and run the program - identifier "cout" is undefined"
---> No semicolon at end
}]
using namespace std;
int main(){ // main() is entry point of C++ Program
    cout << "Ajay Kiran";// Body of the main function
}*/

/*Code 2 : 
---> main is the entry point of the program
---> statements are executed one by one in main Function
---> No New Line character in code. So that the Output is Printed side by side.
---> std::cout and std::endl came from Library iostream.
#include <iostream>
int main(){
    std::cout << "Number1";
    std::cout << "Number2";
}
Output : Number1Number2
*/

/*Code 3 : 
---> std::endl is used to add the new line character.
#include <iostream>
int main(){
    std::cout << "Number1" << std::endl;
    std::cout << "Number2" << std::endl;
}
Output :
Number1
Number2
*/

/*Code 4 :
----> return statement is used the message to OS 
whether the Operation Performed Successfully or not
#include <iostream>
int main(){
    std::cout << "Number 1" << std::endl;
    std::cout << "Number 2" << std::endl;
    std::cout << "Number 3" << std::endl;
    return 0;
}
Output :
Number 1
Number 2
Number 3
*/

/*Problem : Print Your Name 10 times
#include <iostream>
int main(){
    std::cout << "Ajay Kiran" << std::endl;
    std::cout << "Ajay Kiran" << std::endl;
    std::cout << "Ajay Kiran" << std::endl;
    std::cout << "Ajay Kiran" << std::endl;
    std::cout << "Ajay Kiran" << std::endl;
    std::cout << "Ajay Kiran" << std::endl;
    std::cout << "Ajay Kiran" << std::endl;
    std::cout << "Ajay Kiran" << std::endl;
    std::cout << "Ajay Kiran" << std::endl;
    std::cout << "Ajay Kiran" << std::endl;
    return 0;
}
Output : 
Ajay Kiran
Ajay Kiran
Ajay Kiran
Ajay Kiran
Ajay Kiran
Ajay Kiran
Ajay Kiran
Ajay Kiran
Ajay Kiran
Ajay Kiran
*/

/*
Comments :
---> //  Black slash Black slash is used to comment
---> Makes the Code More Readable
---> Compilers Don't Care about the Comments
---> // One Line Comment
---> Multi Line Comments
---> Nesting of Comments is Not allowed and we get a Compiler Error
---> we can use single line comments in multiline comment but multiline can't be nested
Code 5 :
#include <iostream> // This iostream Library
int main(){
    // This is Going to Print the "Hello World" to Console
    std::cout << "Hello World" << std::endl;
    return 0;
    //Program Ends Here
}
Output : Hello World
*/

/*
===> Errors and Warnings in C++ :
---> There are Three Kinds of Errors or Warnings in C++
---> Compile Time Errors, Run Time Errors, Warnings
===> Compile Time Errors:
---> Syntax Errors like missing the ; are Compile Time Errors
---> We need to Fix those By going back to the Program.
===> Run Time Errors :
---> It is an Logical Error that is there in Our Program.
---> Un Expected Output
---> Some times it may crash nd Terminate the Program Immediately
===> Warning :
---> This is not the serious Thing for the Compiler.
---> Some Compilers May Show Error For Warning
#include <iostream>
int main(){
    // Compile Time Error
    std::cout << "Hello World " << std::endl;
    // Run Time Error
    int value = 7/0;
    std::cout << "Value : " << value << std::endl;
    return 0;
}
//Problem : expected a ; // Compile Time Error
//Output : Hello World //Run Time Error - Gives the Warnings
*/

/*
===> Statements :
---> Basic Unit of Computation in a C++ Program.
---> Every C++ Program is a Collection of Statements.
---> Statements in C++ Must end with ;
---> Statements are executed in a Order from top to Bottom.
===> Function :
---> Function is like a Machine which takes input and gives the output.
---> Functions Must be Defined Before it's Use.
---> Function is a Collection of Statements
---> We can Reuse the Function.
===> Function Declaration :
return_type function_name(parameters){
}
Code 6 : 
#include <iostream>
int main(){
    int first_number {3};//Statement
    int second_number {7};
    std::cout << "First Number : " << first_number << std::endl;
    std::cout << "Second Number : " << second_number << std::endl;
    return 0;
}
// Output : First Number : 3
Second Number : 7
Code 7 :
#include <iostream>
int main(){
    int first_number {13};
    int second_number {9};
    std::cout << "First Number : " << first_number << std::endl;
    std::cout << "Second Number : " << second_number << std::endl;
    int sum = first_number + second_number;
    std::cout << "Sum = " << sum << std::endl;
    return 0;

}
Output : First Number : 13
Second Number : 9
Sum = 22
Code 8 :
// Function Declaration
int addNumbers(int first_param,int second_param){
    int result = first_param + second_param;
    return result;
}
#include <iostream>
int main(){
    int first_number {13};
    int second_number {9};
    std::cout << "First Number : " << first_number << std::endl;//13
    std::cout << "Second Number : " << second_number << std::endl;//7
    int sum = first_number + second_number;
    std::cout << "Sum = " << sum << std::endl;//22
    sum = addNumbers(25,7); // Function Usage
    std::cout << "Sum = " << sum << std::endl;//32
    return 0;
}
Output :
First Number : 13
Second Number : 9
Sum = 22
Sum = 32
Code 9 :
// Function Declaration
int addNumbers(int first_param,int second_param){
    int result = first_param + second_param;
    return result;
}
#include <iostream>
int main(){
    int first_number {13};
    int second_number {9};
    std::cout << "First Number : " << first_number << std::endl;//13
    std::cout << "Second Number : " << second_number << std::endl;//7
    int sum = first_number + second_number;
    std::cout << "Sum = " << sum << std::endl;//22
    sum = addNumbers(25,7); // Function Usage
    std::cout << "Sum = " << sum << std::endl;//32
     sum = addNumbers(30,54); // Function Usage
    std::cout << "Sum = " << sum << std::endl;//84
    return 0;
}
Output :
First Number : 13
Second Number : 9
Sum = 22
Sum = 32
Sum = 84
Code 10 :
// Function Declaration
int addNumbers(int first_param,int second_param){
    int result = first_param + second_param;
    return result;
}
#include <iostream>
int main(){
    int first_number {13};
    int second_number {9};
    std::cout << "First Number : " << first_number << std::endl;//13
    std::cout << "Second Number : " << second_number << std::endl;//7
    int sum = first_number + second_number;
    std::cout << "Sum = " << sum << std::endl;//22
    sum = addNumbers(25,7); // Function Usage
    std::cout << "Sum = " << sum << std::endl;//32
     sum = addNumbers(30,54); // Function Usage
    std::cout << "Sum = " << sum << std::endl;//84
    std::cout << "Sum = " << addNumbers(3,42) << std::endl;//45
    return 0;
}
Output :
First Number : 13
Second Number : 9
Sum = 22
Sum = 32
Sum = 84
Sum = 45

Problem : Multiplying Two Numbers 
int mulNumbers(int num1_param,int num2_param){
    int result = num1_param*num2_param;
    return result;
}
#include <iostream>
int main(){
    int num1 {10};//10
    int num2 {20};//20
    std::cout << "Num 1 : " << num1 << std::endl;//10
    std::cout << "Num 2 : " << num2 << std::endl;//20
    int mul = num1*num2;
    std::cout << "Mul : " << mul << std::endl;//200
    mul = mulNumbers(2,3);
    std::cout << "Mul : " << mul << std::endl;//6
    mul = mulNumbers(23,2);
    std::cout << "Mul : " << mul << std::endl;//42
    std::cout << "Mul : " << mulNumbers(3,4) << std::endl;//12
    return 0;
}
Error Made : Redeclaration of mul (int mul done 2 times)
Output :
Num 1 : 10
Num 2 : 20
Mul : 200
Mul : 6
Mul : 46
Mul : 12
*/

/*
===>Input and Outputs :
---> std::cout - Printing data to the Console ( Terminal ) (<< - Stream Operator )
---> std::cin - Reading data from the Terminal (>> - input stream operator )
---> std::cerr - Printing errors to the Console (<<)
---> std::clog - Printing Log Message to the Console (<<)
---> chaining std::cin (std::cin >> name >> age)
---> Reading data With Spaces : std::getline(std::cin,name)
Code 11 :
#include <iostream>
#include <string> // string library
int main(){
    //Printing data 
    std::cout << "Hello C++20 " << std::endl;
    int age{21};
    std::cout << "Age : "<< age << std::endl;
    std::cerr << "Error Message : Something is Wrong"  << std::endl;
    std::clog << "Log Message : Something is Happened" << std::endl;

    // Getting Data
    int age1;
    std::string name;
    std::cout << "Please Type Your Name and Age : " << std::endl;
    std::cin >> name;
    std::cin >> age1;
    std::cout << "Hello " << name << "You are " << age1 << "Years Old!" << std::endl;
    return 0;
}
Output :
Hello C++20 
Age : 21
Error Message : Something is Wrong
Log Message : Something is Happened
Please Type Your Name and Age :
Ajay 20
Hello AjayYou are 20Years Old!
Code 12 :
#include <iostream>
#include <string> // string library
int main(){
    //Printing data 
    std::cout << "Hello C++20 " << std::endl;
    int age{21};
    std::cout << "Age : "<< age << std::endl;
    std::cerr << "Error Message : Something is Wrong"  << std::endl;
    std::clog << "Log Message : Something is Happened" << std::endl;

    // Getting Data
    int age1;
    std::string name;
    std::cout << "Please Type Your Name and Age : " << std::endl;
   // std::cin >> name;
   // std::cin >> age1;
    std::cin >> name >> age1;
    std::cout << "Hello " << name << "You are " << age1 << "Years Old!" << std::endl;
    return 0;
}
Output : 
Hello C++20 
Age : 21
Error Message : Something is Wrong
Log Message : Something is Happened
Please Type Your Name and Age :
Ajay Kiran 18
Hello AjayYou are 0Years Old!
Code 13 :
#include <iostream>
#include <string>
int main(){
    std::string full_name;
    int age1;
    std::cout << "Please type in your full name and age : " << std::endl;
    std::getline(std::cin,full_name);
    std::cin >> age1;
    std::cout << "Hello " << full_name 
    << "You are " << age1 << "Years Old!" << std::endl; // No Error
    return 0;
}
Output :
Please type in your full name and age : 
Ajay Kiran
20
Hello Ajay KiranYou are 20Years Old!
*/

/*
==> C++ Execution Model and Simplified Verison of Memory Model:
--> Program - Compiler - Binary executable file (rooster.exe)
--> Binary Language Understandable by Computer. Humans Cant able to understand
==> C++ Core Language Vs Standard Library Vs STL:
--> Core Features : how to declare, what we can do and cant do with c++
--> Standard Library : iostream, string etc which provide specilized components, 
To make work the programs very fast
--> STL : It is the Part of C++ library which is a collection of container types
*/

/*...........Variables and Data Types.........
==> Data Types :
--> int : whole numbers
--> double : decimal 
--> float : decimal
--> char : single characters
--> bool : True or False
--> void : Typeless Data type 
--> auto : not a data type...
*/

/*
.......Number Systems.....
---> Decimal to Binary and vice versa
---> Decimal, Binary-0b, Octal-0 and Hexadecimal-0x
---> Padding
---> All data is represented by a bunch of grouped cells of 0's and 1's in Memory
---> As the range of your data grows, so will the number of digits you need to represent in the data in memory
---> Hexa Decimal Number System Makes it a little easier for humans to handle streams of data with 1's and 0's
---> Octal has the same goal as the hexa decimal. But it's almost no longer used in modern times. It's Mentioned here for your awareness
Code 14 :
#include <iostream>
int main(){
    int dec = 15;// Decinal
    int oct = 017;// Octal
    int hex = 0x0F;// Hexa Decimal
    int bin = 0b00001111; // Binary
    std::cout << "dec = " << dec << std::endl;
    std::cout << "oct = " << oct << std::endl;
    std::cout << "Hex = " << hex << std::endl;
    std::cout << "Bin = " << bin << std::endl;
    return 0;
}
Output :
dec = 15
oct = 15
Hex = 15
Bin = 15
*/

/*...........Integers.........
--> Integers are represented by int.
--> Stores Whole Numbers
--> Typically occupies 4 bytes or more in memory
// Variable : A named piece of memory that you use to store specific types of data.
---> initialisation of variables are three types. (Works on all Data Type Variables)
---> Variable Braced Initialization {}
---> Functional variable Initilization ()
---> Assignment initilization =
//---> Size of a Type in memory - sizeof(datatype or variable_name)
//---> Rules of Variables :
---> A Variable Must Start With Letter or underscore
---> Variable Names can contain letters, numbers or underscore
---> Variable Names are Case Sensitive.
---> No Spaces and Special Characters are allowed in variable names
//---> General form of Declaring and Initilizing a variable : typename variable_name {initializer_value};
                                                              typename variable_name (initializer_value);
                                                              typename Variable_name = initializer_value;
Code 15 :                                                                                                                
#include <iostream>
int main(){
    // Braced Initializers
    int elephant_count; // Variable may contain random garbage Value. Warning
    int lion_count{}; // Initializes to zero
    int dog_count {10}; // Initializes to 10
    int cat_count {15}; // Initializes to 15
    // can use expression as Initializers
    int domesticated_animals {dog_count + cat_count};
    //int new_number{doesnt_exist};// Error: "identifier \"doesnt_exist\" is undefined"
    std::cout << "Elephant Count = " << elephant_count << std::endl;
    std::cout << "Lion Count = " << lion_count << std::endl;
    std::cout << "Dog Count = " << dog_count << std::endl;
    std::cout << "Cat Count = " << cat_count << std::endl;
    std::cout << "Domesticated Animals Count = " << domesticated_animals << std::endl;
    //int narrowing_conversion {2.9};// Error : "type 'double' cannot be narrowed to 'int' in initializer list [-Wc++11-narrowing]",
                                   // Warning : "implicit conversion from 'double' to 'int' changes value from 2.9 to 2 [-Wliteral-conversion]",
    //std::cout << "Narrowing Conversion : " << narrowing_conversion << std::endl;
    return 0;
}
Output :
Elephant Count = 1
Lion Count = 0
Dog Count = 10
Cat Count = 15
Domesticated Animals Count = 25

Code 16 : 
#include <iostream>
int main(){
    //Functional variable Initilization ()
    int elephant_count; // Variable may contain random garbage Value. Warning
   // int lion_count ( ); // Warning : "empty parentheses were disambiguated as a function declaration [-Wvexing-parse]"
    int dog_count (10); // Initializes to 10
    int cat_count (15); // Initializes to 15
    // can use expression as Initializers
    int domesticated_animals (dog_count + cat_count);
    //int new_number(doesnt_exist);// Error: "identifier \"doesnt_exist\" is undefined"
    std::cout << "Elephant Count = " << elephant_count << std::endl;
    //std::cout << "Lion Count = " << lion_count << std::endl;
    std::cout << "Dog Count = " << dog_count << std::endl;
    std::cout << "Cat Count = " << cat_count << std::endl;
    std::cout << "Domesticated Animals Count = " << domesticated_animals << std::endl;
    int narrowing_conversion (2.9);// Information Lost. Less safe than Braced Initializers ( No Error and Warnings)
    std::cout << "Narrowing Conversion : " << narrowing_conversion << std::endl;
    return 0;
}
Output :
Elephant Count = -575205376
Lion Count = 1
Dog Count = 10
Cat Count = 15
Domesticated Animals Count = 25
Narrowing Conversion : 2

Code 17 :
#include <iostream>
int main(){
    // Assignment initilization =
    int elephant_count; // Variable may contain random garbage Value. Warning
    //int lion_count = ; // "expected an expression",
    int dog_count = 10; // Initializes to 10
    int cat_count = 15; // Initializes to 15
    // can use expression as Initializers
    int domesticated_animals = dog_count + cat_count;
    //int new_number = doesnt_exist;// Error: "identifier \"doesnt_exist\" is undefined"
    std::cout << "Elephant Count = " << elephant_count << std::endl;
    //std::cout << "Lion Count = " << lion_count << std::endl;
    std::cout << "Dog Count = " << dog_count << std::endl;
    std::cout << "Cat Count = " << cat_count << std::endl;
    std::cout << "Domesticated Animals Count = " << domesticated_animals << std::endl;
    int narrowing_conversion = 2.9;// Information Lost. Less safe than Braced Initializers ( No Error and Warnings)
    std::cout << "Narrowing Conversion : " << narrowing_conversion << std::endl;
    return 0;
}
Output :
Elephant Count = 371396608
Dog Count = 10
Cat Count = 15
Domesticated Animals Count = 25
Narrowing Conversion : 2

Code 18 :
#include <iostream>
int main(){
    int num;
    std::cout << "Size of int : " << sizeof(int) << std::endl;// Int data Type
    std::cout << "Size of num : " << sizeof(num) << std::endl;// Int Variable
    return 0;
}
Output :
Size of int : 4
Size of num : 4
*/
/*
............................Integer Modifiers................................
............................positive and Negative numbers storage.................
--> signed range = -2^(n-1) to 2^(n-1)-1
--> unsigned range = 0 to 2^n - 1
--> signed and unsigned modifier for integer.
--> if we assign negative number to unsigned we get an error.
--> we can also flag our integer types with short(2 bytes) and long(4 or 8 bytes)
--> Note : These Modifiers only apply to integral types : those in which you can store decimal Numbers
Code 18:
#include <iostream>
int main(){
    signed int value1 {10};
    signed int value2 {-300};
    std::cout << "Value1 : " << value1 << std::endl;
    std::cout << "Value2 : " << value2 << std::endl;
    std::cout << "sizeof(Value1) : " << sizeof(value1) << std::endl;
    std::cout << "sizeof(Value2) : " << sizeof(value2) << std::endl;
    unsigned int value3 {4};
    //unsigned int value4 {-5}; // Compile Error : constant expression evaluates to -5 which cannot be narrowed to type 'unsigned int' [-Wc++11-narrowing]"
   //short and long
    short short_var {-32768} ; //  2 Bytes 
    short int short_int {455} ; // 
    signed short signed_short {122}; //
    signed short int signed_short_int {-456}; // 
    unsigned short int unsigned_short_int {456};
    
    int int_var {55} ; // 4 bytes
    signed signed_var {66};//
    signed int signed_int {77};//
    unsigned int unsigned_int{77};
    
    long long_var {88}; // 4 OR 8 Bytes
    long int long_int {33};
    signed long signed_long {44};
    signed long int signed_long_int {44};
    unsigned long int unsigned_long_int{44};

    long long long_long {888};// 8 Bytes
    long long int long_long_int {999};
    signed long long signed_long_long {444};
    signed long long int signed_long_long_int{1234};
    unsigned long long int unsigned_long_long_int{1234};


    std::cout << "Short variable : " << short_var<<  " , size : "
        << sizeof (short) << " bytes" << std::endl;

    std::cout << "Short Int : " << short_int << " , size : "
        << sizeof (short int) << " bytes" << std::endl;

    std::cout << "Signed short : " << signed_short
        << " , size : " << sizeof (signed short) << " bytes" << std::endl;

     std::cout << "Signed short int :  " << signed_short_int
        <<  " , size : " << sizeof (signed short int) << " bytes" << std::endl;
        
    std::cout << "unsigned short int :  " << unsigned_short_int
        <<  " , size : " << sizeof (unsigned short int) << " bytes" << std::endl;
        
    std::cout << "---------------------" << std::endl;
    std::cout << "Int variable :  " << int_var <<" , size : "
        << sizeof (int) << " bytes" << std::endl;

    std::cout << "Signed variable " << signed_var <<" , size : "
        << sizeof (signed) << " bytes" << std::endl;

    std::cout << "Signed int :  " << signed_int <<" , size : "
        << sizeof (signed int) << " bytes" << std::endl;
        
    std::cout << "unsigned int :  " << unsigned_int <<" , size : "
        << sizeof (unsigned int) << " bytes" << std::endl;
        
    std::cout << "---------------------" << std::endl;


    std::cout << "Long variable :  " << long_var << " , size : "
        << sizeof (long) << " bytes" <<std::endl;

    std::cout << "Long int :  " << long_int <<" , size : "
        << sizeof (long int) << " bytes" << std::endl;

    std::cout << "Signed long :  " << signed_long <<" , size : "
        << sizeof (signed long) << " bytes" << std::endl;

    std::cout << "Signed long int : " << signed_long_int <<" , size : "
        << sizeof (signed long int) << " bytes" << std::endl;
        
    std::cout << "unsigned long int : " << unsigned_long_int <<" , size : "
        << sizeof (unsigned long int) << " bytes" << std::endl;
        
    std::cout << "---------------------" << std::endl;



    std::cout << "Long long : " << long_long <<" , size : "
        << sizeof (long long) << " bytes" << std::endl;

    std::cout << "Long long int : " << long_long_int <<" , size : "
        << sizeof (long long int) << " bytes" << std::endl;

    std::cout << "Signed long long : " << signed_long_long <<" , size : "
        << sizeof (signed long long) << " bytes" <<std::endl;
        
    std::cout << "Signed long long int : " << signed_long_long_int <<" , size : "
        << sizeof (signed long long int) << " bytes" << std::endl;
        
    std::cout << "unsigned long long int : " << unsigned_long_long_int <<" , size : "
        << sizeof (unsigned long long int) << " bytes" << std::endl;
        
    std::cout << "---------------------" << std::endl;
   
    return 0;


}
Output : 
Value1 : 10
Value2 : -300
sizeof(Value1) : 4
sizeof(Value2) : 4
Short variable : -32768 , size : 2 bytes
Short Int : 455 , size : 2 bytes
Signed short : 122 , size : 2 bytes
Signed short int :  -456 , size : 2 bytes
unsigned short int :  456 , size : 2 bytes
---------------------
Int variable :  55 , size : 4 bytes
Signed variable 66 , size : 4 bytes
Signed int :  77 , size : 4 bytes
unsigned int :  77 , size : 4 bytes
---------------------
Long variable :  88 , size : 4 bytes
Long int :  33 , size : 4 bytes
Signed long :  44 , size : 4 bytes
Signed long int : 44 , size : 4 bytes
unsigned long int : 44 , size : 4 bytes
---------------------
Long long : 888 , size : 8 bytes
Long long int : 999 , size : 8 bytes
Signed long long : 444 , size : 8 bytes
Signed long long int : 1234 , size : 8 bytes
unsigned long long int : 1234 , size : 8 bytes
---------------------
*/
/*...................Fractional Numbers.....................
--> Floating points or Fractional Numbers:
    --> used to represent with fractional parts in c++.
    --> There are Three Types based on the size they occupy Generally. They are 
            1. float - 4 Bytes - 7 precision 
            2. Double - 8 Bytes - 15 precision - Recommended default
            3. long double - 12 Bytes - >double
    --> Precision tells the how many numbers that we can able to represent after the decimal point
    --> setprecision is used to control maximum precision that we can able to see.
    --> float number4 {19234568439}; // Compile error because more than 7 and we have braced initilization
    --> float number4 (18238130923); // No Compile error but we can see lost of data
    --> we can also use the scientific notation for floating numbers. 
    --> double number4 {1.924e8}; // 1.924 x 10^8
    --> IEEE_754 floating point representation
    --> n(floating point)/0 --> infinity(+/-) based on number
    --> 0.0/0.0 --> NaN (Not a Number)
    --> Remeber the suffixes when initializing floating point variables, otherwise the default will be double ( use f and l for float and double)
    --> Double works well in many situations, so you will see it used a lot
...............................Code 19.............................
#include <iostream>
#include <iomanip> // to use setprecision



int main(){

    //Declare and initialize the variables
    float number1 {1.12345678901234567890f}; // Precision : 7
    double number2 {1.12345678901234567890}; // Precision : 15
    long double number3  {1.12345678901234567890L};
    
    //Print out the sizes
    std::cout << "sizeof float : " << sizeof(float) << std::endl;
    std::cout << "sizeof double : " << sizeof(double) << std::endl;
    std::cout << "sizeof long double : " << sizeof(long double) << std::endl;



    //Precision
    std::cout << std::setprecision(20); // Control the precision from std::cout.
    std::cout << "number1 is : " << number1 << std::endl; //7 digits
    std::cout << "number2 is : " << number2 << std::endl; // 15'ish digits
    std::cout << "number3 is : " << number3 << std::endl; // 15+ digits


    //Float problems : The precision is usually too limited
    //for a lot of applications
    float number4 = 192400023.0f;               // Error : narrowing conversion

    std::cout << "number4 : " << number4 << std::endl;


    //Scientific notation
    //What we have seen so far in terms of floating point types
    //is fixed notation. There is another notation, scientific
    //that is handy if you have really huge numbers or small numbers
    //to represent

    std::cout << "-------------------------" << std::endl;
    
    double number5 {192400023};
    double number6 {1.92400023e8};
    double number7 {1.924e8};           // Can ommit the lower 00023
                                        // for simplicity if our application allows that.
    double number8 {0.00000000003498};
    double number9 {3.498e-11}; // multiply with 10 exp(-11)
    
    std::cout << "number5 is : " << number5 << std::endl;
    std::cout << "number6 is : " << number6 << std::endl;
    std::cout << "number7 is : " << number7 << std::endl;
    std::cout << "number8 is : " << number8 << std::endl;
    std::cout << "number9 is : " << number9 << std::endl;



    //Infinity and Nan
    std::cout << std::endl;
    std::cout << "Infinity and NaN" << std::endl;
    
    double number10{ -5.6 };
    double number11{};//Initialized to 0
    double number12{};  //Initialized to 0

    //Infinity
    double result { number10 / number11 };
    
    
    std::cout << number10 << "/" << number11 << "  yields " << result << std::endl;
    std::cout << result << " + " << number10 << " yields " << result + number10 << std::endl;
    
    //NaN
    result = number11 / number12;
    
    
    std::cout << number11 << "/" << number12 << " = " << result << std::endl;
    
   
    return 0;
}
Output :
Value1 : 10
Value2 : -300
sizeof(Value1) : 4
sizeof(Value2) : 4
Short variable : -32768 , size : 2 bytes
Short Int : 455 , size : 2 bytes
Signed short : 122 , size : 2 bytes
Signed short int :  -456 , size : 2 bytes
unsigned short int :  456 , size : 2 bytes
---------------------
Int variable :  55 , size : 4 bytes
Signed variable 66 , size : 4 bytes
unsigned int :  77 , size : 4 bytes
---------------------
Long variable :  88 , size : 4 bytes
Long int :  33 , size : 4 bytes
Signed long :  44 , size : 4 bytes
Signed long int : 44 , size : 4 bytes
unsigned long int : 44 , size : 4 bytes
---------------------
Long long : 888 , size : 8 bytes
Long long int : 999 , size : 8 bytes
Signed long long : 444 , size : 8 bytes
Signed long long int : 1234 , size : 8 bytes
unsigned long long int : 1234 , size : 8 bytes
---------------------
PS D:\Programming\C++>
                       .\c_pp.exe
sizeof float : 4
sizeof double : 8
sizeof long double : 16
number1 is : 1.1234568357467651367
number2 is : 1.1234567890123456912
number3 is : 1.1234567890123456789
number4 : 192400016
-------------------------
number5 is : 192400023
number6 is : 192400023
number7 is : 192400000
number8 is : 3.4979999999999998372e-11
number9 is : 3.4979999999999998372e-11

Infinity and NaN
-5.5999999999999996447/0  yields -inf
-inf + -5.5999999999999996447 yields -inf
0/0 = nan
PS D:\Programming\C++> .\c_pp.exe
sizeof float : 4
sizeof double : 8
sizeof long double : 16
number1 is : 1.1234568357467651367
number2 is : 1.1234567890123456912
number3 is : 1.1234567890123456789
number4 : 192400016
-------------------------
number5 is : 192400023
number6 is : 192400023
number7 is : 192400000
number8 is : 3.4979999999999998372e-11
number9 is : 3.4979999999999998372e-11

Infinity and NaN
5.5999999999999996447/0  yields inf
inf + 5.5999999999999996447 yields inf
0/0 = nan
PS D:\Programming\C++> .\c_pp.exe
sizeof float : 4
sizeof double : 8
sizeof long double : 16
number1 is : 1.1234568357467651367
number2 is : 1.1234567890123456912
number3 is : 1.1234567890123456789
number4 : 192400016
-------------------------
number5 is : 192400023
number6 is : 192400023
number7 is : 192400000
number8 is : 3.4979999999999998372e-11
number9 is : 3.4979999999999998372e-11

Infinity and NaN
-5.5999999999999996447/0  yields -inf
-inf + -5.5999999999999996447 yields -inf
0/0 = nan
*/
/*
.....................Boolean..................
--> True or False (1 or 0)
--> To Make Decision we use Boolean
--> Default the 0 or 1 gets printed
--> std::boolalpha --> Print result as true and false 
--> Boolean Occupy 8 bit
--> A Byte can store 256 different Values.
--> Using it Just to Cover two states (True/False) is wasteful, especially for devices with hard memory constraints(Think Embedded devices)
--> There are techniques to pack even more data in a byte. we'll learn more about these in a few upcoming chapters.
....................................Code 20.................................
#include <iostream>
int main(){
    bool red_light{true};
    bool green_light{false};
    if(red_light==true){
        std::cout << "Stop!"<<std::endl;
    }else{
        std::cout << "Go Through!" << std::endl;
    }
    return 0;
}
Output : Stop!
.......................................Code 21.......................................
#include <iostream>
int main(){
    bool red_light{true};
    bool green_light{false};
    if(red_light==true){
        std::cout << "Stop!"<<std::endl;
    }else{
        std::cout << "Go Through!" << std::endl;
    }
    if(green_light){
        std::cout << "The Light is Green"<<std::endl;
    }else{
        std::cout << "The Light is Not Green" << std::endl;
    }
    std::cout << sizeof(bool) << std::endl;
    std::cout << "Red Light : " << red_light << std::endl;
    std::cout << "Green Light : " << green_light << std::endl;
    std::cout << std::boolalpha;
    std::cout << "Red Light : " << red_light << std::endl;
    std::cout << "Green Light : " << green_light << std::endl;
    return 0;
}
Output : 
Stop!
The Light is Not Green
1
Red Light : 1
Green Light : 0
Red Light : true
Green Light : false
*/
/*
...........................Characters and Text................................
--> We use the data type char in C++ to represent characters.
--> We use ' ' for char
--> Occupies 1 byte in memory
--> 1 Byte - 256 Possible Values and Each Matched to Some Character
--> We have ascii Values
--> It is Possible to assign a valid ascii code to a char variable and the
corresponding character will be stored in. You can choose to interpret that
either as a character or a regular integrated value.
--> we use the static_cast<int>(value) to convert value from char to int.
.............................Code 22....................................
#include <iostream>
int main(){
    char character1 {'a'};
    char character2 {'r'};
    char character3 {'r'};
    char character4 {'o'};
    char character5 {'w'};
    std::cout << character1 << std::endl;
    std::cout << character2 << std::endl;
    std::cout << character3 << std::endl;
    std::cout << character4 << std::endl;
    std::cout << character5 << std::endl;
    std::cout << sizeof(char) << std::endl;
    char value {65};
    std::cout << "Value : " << value << std::endl;
    std::cout << "Value(int): " << static_cast<int>(value) << std::endl;
    return 0;
}
Output :

a
r
r
o
w
1
Value : A
Value(int): 65
*/
/*..........................Auto.........................
--> auto --> Let the Compiler deduce the type

#include <iostream>
int main(){
    auto var1{12};
    auto var2{13.0};
    auto var3{14.0f};
    auto var4{15.0l};
    auto var5{'e'};

    //int modifier suffixes
    auto var6{123u};
    auto var7{123ul};
    auto var8{123ll};
    std::cout << "var1 occupies : " << sizeof(var1) << " Bytes" << std::endl;
    std::cout << "var2 occupies : " << sizeof(var2) << " Bytes" << std::endl;
    std::cout << "var3 occupies : " << sizeof(var3) << " Bytes" << std::endl;
    std::cout << "var4 occupies : " << sizeof(var4) << " Bytes" << std::endl;
    std::cout << "var5 occupies : " << sizeof(var5) << " Bytes" << std::endl;
    std::cout << "var6 occupies : " << sizeof(var6) << " Bytes" << std::endl;
    std::cout << "var7 occupies : " << sizeof(var7) << " Bytes" << std::endl;
    std::cout << "var8 occupies : " << sizeof(var8) << " Bytes" << std::endl;
    return 0;

}
Output :
var1 occupies : 4 Bytes
var2 occupies : 8 Bytes
var3 occupies : 4 Bytes
var4 occupies : 16 Bytes
var5 occupies : 1 Bytes
var6 occupies : 4 Bytes
var7 occupies : 4 Bytes
var8 occupies : 8 Bytes
*/
/*..................Assignments..............................
--> We can reassign a variable again after its declaration and assignment
--> assigment auto can be assigned that particular value only or if we use other type value then it will be taken garbage values
#include <iostream>

int main(){

	int var1{123}; // Declare and initialize
    std::cout << "var1 : "  << var1 << std::endl;
    
    var1 = 55; // Assign
    std::cout << "var1 : "  << var1 << std::endl;
    
    std::cout << std::endl;

    std::cout << "----------------" << std::endl;

    double var2 {44.55}; // Declare and initialize
    std::cout << "var2 : " << var2 << std::endl;
    
    var2 = 99.99; // Assign
    std::cout << "var2 : " << var2 << std::endl;
    
    std::cout << std::endl;

    std::cout << "----------------" << std::endl;

    std::cout << std::endl;
    bool state{false}; // Declare and initialize
    std::cout << std::boolalpha;
    std::cout << "state : " << state << std::endl;
    
    state = true; // Assign
    
    std::cout << "state : " << state << std::endl;


    //Auto type deduction
    //Careful about auto assignments
    auto var3 {333u}; // Declare and initialize with type deduction
    
    var3 = -22; // Assign negative number. DANGER!
    
    std::cout << "var3 : " << var3 << std::endl;

   
    return 0;
}
Output :
var1 : 123
var1 : 55

----------------
var2 : 44.55
var2 : 99.99

----------------

state : false
state : true
var3 : 4294967274
*/
/*.........................Operations on Data............................*/