
//--> call by value using task

module tb;
  task swap(input bit[2:0] a,b);
    bit [2:0] temp;
    temp = a;
    a = b;
    b = temp;
    $display(" value a = %0d b = %0d",a,b);
  endtask
  
  bit [2:0] a,b,temp;
  initial begin
    a = 5;
    b = 7;
    swap(a,b);
    $display(" value a = %0d b = %0d",a,b);
  end
endmodule
/*
 value a = 7 b = 5
 value a = 5 b = 7

------------------------------------------------------------

--> call by value using function

module tb;
  function swap(input bit[2:0] a,b);
    bit [2:0] temp;
    temp = a;
    a = b;
    b = temp;
    $display(" value a = %0d b = %0d",a,b);
  endfunction
  
  bit [2:0] a,b,temp;
  initial begin
    a = 5;
    b = 7;
    swap(a,b);
    $display(" value a = %0d b = %0d",a,b);
  end
endmodule

 value a = 7 b = 5
 value a = 5 b = 7

--------------------------------------------------------------

--> call by reference using task

module tb;
  task automatic swap(ref bit[2:0] a,b);
    bit [2:0] temp;
    temp = a;
    a = b;
    b = temp;
    $display(" value a = %0d b = %0d",a,b);
  endtask
  
  bit [2:0] a,b,temp;
  initial begin
    a = 5;
    b = 7;
    swap(a,b);
    $display(" value a = %0d b = %0d",a,b);
  end
endmodule

 value a = 7 b = 5
 value a = 7 b = 5

--------------------------------------------------------------

--> call by reference using functions

module tb;
  function automatic swap(ref bit[2:0] a,b);
    bit [2:0] temp;
    temp = a;
    a = b;
    b = temp;
    $display(" value a = %0d b = %0d",a,b);
  endfunction
  
  bit [2:0] a,b,temp;
  initial begin
    a = 5;
    b = 7;
    swap(a,b);
    $display(" value a = %0d b = %0d",a,b);
  end
endmodule

 value a = 7 b = 5
 value a = 7 b = 5

---------------------------------------------------------

--> Function in arrays

module tb;
  
  function bit [2:0] arr (output bit [2:0] a [8]);
    for (int i=0; i<8; i++) begin
      a[i] = i;
    end
  endfunction
  
  bit [2:0] result [8];
  
  initial begin
    arr(result);
    for (int i=0; i<8; i++) begin
      $display(" result [%0d] = %0d",i,result[i]);
    end
  end
endmodule

 result [0] = 0
 result [1] = 1
 result [2] = 2
 result [3] = 3
 result [4] = 4
 result [5] = 5
 result [6] = 6
 result [7] = 7

------------------------------------------------------
*/
/*-------------Adding methods to class-------------------
class vlsi;
  int data;
  function new(input int datain=0);
    data = datain;
  endfunction
endclass
module tb;
  vlsi v;
  initial begin
    v = new();
    $display("Data = %0d",v.data);
  end
endmodule
Output = 0
*/