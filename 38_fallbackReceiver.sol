// SPDX-License-Identifier: MIT
pragma solidity >0.8.8;

contract FallRec {

    event log(string s, address ad, uint val, bytes data);

    fallback() external payable { 
        emit log('fallback', msg.sender, msg.value, msg.data);
    }

    receive() external payable { 
        emit log('Receive', msg.sender, msg.value, "");
    }
}