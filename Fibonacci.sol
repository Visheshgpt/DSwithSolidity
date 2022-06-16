// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;


contract Fibbonaci {
    
    // traditional method       
    function fibbo1(uint n) public pure returns(uint[] memory) {
       
     
    uint[] memory series =  new uint[](n);
     
    if (n == 0) {
        uint[] memory series0 = new uint[](1);
        series0[0] = 0;
        return series0;
    }  
 

     if (n == 1 ) {
         series[0] = 0;
        //  return series;
     } 

     else if (n == 2 ) {
         series[0] = 0;
         series[1] = 1;
     } 

     else {   
        series[0] = 0;
        series[1] = 1;
        
        for (uint i =2; i<n; i ++) {
            series[i] = series[i-1] + series[i-2];
        }

     }

    return series;
    }

}




//       n        5         10         20        30        40        50         60       70        80          90        100
//   fib1 gas    26508      32434     44287    56141      67997     79855     91714     103575   115437       127301     hangup
//   fib2 gas    22369      22381
