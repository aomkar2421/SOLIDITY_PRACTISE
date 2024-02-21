// SPDX-License-Identifier: MIT
pragma solidity >0.7.0;

contract Local_Vari {
    uint public sal = 100000;
    bool public b = false;

    function dummy (uint _x, bool _y) public {

        uint a1 = 29;
        bool b1 = true;

        sal = _x;
        b = _y;
    }

}