// SPDX-License-Identifier: MIT
pragma solidity >0.7.0;

contract Example{
    uint public age = 21;

    function func() public returns (uint) {
        age = age +10;
        return age;
    }

    function func1(uint _x,uint _y) public pure  returns (uint) {
        uint sum = _x +_y;
        return sum;
    }

    function func2() public view  returns (uint) {
        return age;
    }

    function func3() public pure   returns (uint) {
        return 1;
    }

    function func4(uint _x) public pure returns (uint) {
        return _x;
    }
    
}