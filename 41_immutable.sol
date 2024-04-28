// SPDX-License-Identifier: MIT
pragma solidity >0.8.0;

contract ImmutableXmpl {
    
    address public immutable add ;
    address public constant add1 = address(1) ;

    constructor(address _add) {
        add = _add;
    }

}