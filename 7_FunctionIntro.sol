// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0;

contract FunctionIntro {
    uint age = 21;

    function add(uint _x,uint _y) public pure returns (uint){
        return  _x + _y;
    }

    function changeAge() public{
        age = age +10;
    }

    function getAge() public view  returns (uint) {
        return age;
    }

}

