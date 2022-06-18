// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;


contract Factorial {
    
    // traditional method        (dependent on input)  
    function fact1(uint n) public pure returns(uint) {

       if (n == 0) {
           return 1;
       } 
       
       uint fact = 1;
       for (uint i =n; i>=1; i--) {
           fact = fact*i; 
       }

       return fact;      
    } 
//       n        5          10         20       30       40        50        60
//   fact1 gas    23831      25801     29741    33681    37621     41561     overflow
}