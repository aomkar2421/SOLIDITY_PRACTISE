// SPDX-License-Identifier: MIT
pragma solidity >0.7.0;

contract loops {
    function example(uint x) public pure returns (uint) {

        for (uint i = 1; i <= 10; i++) 
        {
            if(x == 4){
                break  ;
            }
            x++;
        }

        return x;
    }
}

