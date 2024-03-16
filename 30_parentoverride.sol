// SPDX-License-Identifier: MIT
pragma solidity >0.8.0;

contract A {
    function check1() public virtual  pure returns (string memory) {
        return "A";
    }

}


contract B {
    function check1() public virtual  pure returns (string memory) {
        return "B";
    }
}

contract C is A,B { 
    function check1() public override(B,A)  pure returns (string memory) {
        return "B";
    }
}

