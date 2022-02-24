/*The concatenation operator allowed concatenating together vectors to form a larger vector. 
But sometimes you want the same thing concatenated together many times, and it is still tedious to do something like assign a = {b,b,b,b,b,b};. 
The replication operator allows repeating a vector and concatenating them together:*/

  {num{vector}} //This replicates vector by num times. num must be a constant. Both sets of braces are required.

Examples:

{5{1'b1}}           // 5'b11111 (or 5'd31 or 5'h1f)
{2{a,b,c}}          // The same as {a,b,c,a,b,c}
{3'd5, {2{3'd6}}}   // 9'b101_110_110. It's a concatenation of 101 with
                    // the second vector, which is two copies of 3'b110. --> syntax error dont forget {} outside 
