// SPDX-License-Identifier: MIT
pragma solidity >0.7.0;

contract strExample {
    string public str = "omkar";

    function example(string memory _str1) public pure returns (string memory) {
        string memory strr1 = _str1;
        return strr1;
    }

}


