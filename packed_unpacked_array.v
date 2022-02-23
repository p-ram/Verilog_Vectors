//arrays are indexed from left-bound to right-bound. If they are vectors, they can be assigned as a single unit, but not if they are arrays

//In C, arrays are indexed from 0 by integers, or converted to pointers. 
//Although the whole array can be initialized, each element must be read or written separately in procedural statements.

//Verilog uses the term packed array to refer to the dimensions declared before the object name (vector width). 
//The term unpacked array is used to refer to the dimensions declared after the object name.

//Packed arrays can only be made of the single bit types (bit, logic, reg, wire, and the other net types) and recursively other packed arrays and packed structures. 

module top_module();
  
  // packed array
  bit [7:0] packed_array = 8'hAA; 
  // unpacked array
  reg unpacked_array [7:0] = '{0,0,0,0,0,0,0,1}; 
  
  initial begin
    $display ("packed array[0]   = %b", packed_array[0]);
    $display ("unpacked array[0] = %b", unpacked_array[0]);
    $display ("packed array      = %b", packed_array);
    // Below one is wrong syntax
    //$display("unpacked array[0] = %b",unpacked_array);
    #1  $finish;
  end
  
endmodule

/*output
packed array[0]   = 0
unpacked array[0] = 1
packed array      = 10101010
*/
