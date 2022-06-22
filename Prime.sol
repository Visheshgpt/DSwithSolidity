// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;


contract Prime {
    
    // traditional method        (dependent on input)  
    function prime1(uint n) public pure returns(bool) {

      if (n < 2) {
          return false;
      }  
     
      for (uint i =2; i<= n/2; i ++ ) {          // it can ne more optimal replace n/2 to n square root
          if (n%i == 0) {
              return false;
          }
      }
     return true;
    } 
    


//       n        10          20       100        499        1009
//  prime1 gas   22279      22279      22279     161947     305767

}