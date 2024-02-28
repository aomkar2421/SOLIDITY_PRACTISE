// SPDX-License-Identifier: MIT
pragma solidity >0.7.0;

contract IfElse {
    function example(uint x) public pure returns (string memory){
        string memory val;
        if (x < 10) {
            val = "less than 10";
        }else {
            val = "greater than 10";
        }
        return val;
    }
}

