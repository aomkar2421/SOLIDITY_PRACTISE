// SPDX-License-Identifier: MIT
pragma solidity >0.7.0;

contract tern {
    function example(uint x) public pure returns (string memory){
        string memory val;
        val = (x>10) ? "Greater than 10" : "Smaller than 10";
        return val;
    }
}



