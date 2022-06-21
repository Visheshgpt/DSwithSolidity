// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;


contract Sum {
    
    // traditional method        (dependent on input)  
    function sum1(uint n) public pure returns(uint) {
       
       uint sum =0;
       for (uint i=1; i<= n; i ++) {
           sum = sum + i;
       }  
         return sum; 
    } 
    
    // Algo method              (independent on input)   
    function sum2(uint n) public pure returns(uint) {
        return (n * (n+1)) / 2; 
      
    } 


//       n        10         1000          
//   sum1 gas    25661      402863
//   sum2 gas    22369      22381

}