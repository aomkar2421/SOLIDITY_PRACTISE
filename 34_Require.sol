// SPDX-License-Identifier: MIT
pragma solidity >0.8.0;

contract RequireXmpl{
    address public owner = msg.sender;
    uint public age = 25;

    function changeAge(uint16 _x) public  {
        require(_x > 2 , 'Age is less than 2');
        age = age + 5;
    }

    function onlyOwner() public {
        require(msg.sender == owner, 'ur not owner');
        age = age - 2;
    }

}