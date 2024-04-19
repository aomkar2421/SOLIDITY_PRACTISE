// SPDX-License-Identifier: MIT
pragma solidity >0.8.0;

contract RevertXmpl{
    address public owner = msg.sender;
    uint public age = 25;

    error throwError(string);

    function changeAge(uint16 _x) public  {
        age = age + 5;
        if(_x < 2){
            revert throwError('ur age is less than 2');
        }
    }

    function onlyOwner() public {
        age = age - 2;

        if(msg.sender != owner){
            revert throwError('ur not owner');
        }
    }

}