// SPDX-License-Identifier: MIT
pragma solidity >0.8.0;

contract A {
    uint public a1=8;
    uint private a2=9;
    uint internal a3=10;

    function check1() public pure returns (string memory) {
        return "Parent";
    }

    function check2() public  pure returns (string memory) {
        return "Parent";
    }
 
}


contract B is A {
    uint public a = a3;

    function check3() public  pure returns (string memory) {
        return "child";
    }

}

contract C is A,B { //B,A in not allowed
    
}

