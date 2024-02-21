// SPDX-License-Identifier: MIT
pragma solidity >0.7.5;

contract Global_Vari {
    address public myAdd = msg.sender;
    uint public bal = msg.value;
    uint public  ts = block.timestamp;
    uint public id = block.chainid; 
}

