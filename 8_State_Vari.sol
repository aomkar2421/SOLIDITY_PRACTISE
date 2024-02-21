// SPDX-License-Identifier: MIT
pragma solidity >0.7.0;

contract State_Vari {
    uint public u = 30000;


    constructor(){
        u = 500000;
    }

    function setValue() public   returns (uint){
        u = 20000;
        return u;
    }

}