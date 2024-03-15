// SPDX-License-Identifier: MIT
pragma solidity >0.8.0;

contract A {
    uint public a1;
    uint private a2;
    uint internal a3;

    function check1() public pure returns (string memory) {
        return "public";
    }
    
    function check2() external pure returns (string memory) {
        return "external";
    }
    
    function check3() internal pure returns (string memory) {
        return "internal";
    }
    
    function check4() private pure returns (string memory) {
        return "private";
    }
    
    function check5() private pure returns (string memory) {
        return check4();
    }
    
    
}


contract B is A {
    uint public a = a3;

    function check() private pure returns (string memory) {
        return check3();
    }
}


contract C  {
    A obj = new A();
    // uint public a = obj.a3;

    function check() private view  returns (string memory) {
        return obj.check1();
    }
}


