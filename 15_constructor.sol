// SPDX-License-Identifier: MIT
pragma solidity >0.7.0;

contract constExample {
    uint public  age ;
    address public ad;
    string public name;

    constructor(uint _age, address _ad, string memory _name) {
        age = _age;
        ad = _ad;
        name = _name;
    }

}
