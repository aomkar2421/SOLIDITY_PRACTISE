// SPDX-License-Identifier: MIT
pragma solidity >0.8.0;

contract Events {
    event checkBalance(address acc,string str,uint bal);

    function func1() public  {
        emit checkBalance(msg.sender, "Has Balance", 99);
    }
}



