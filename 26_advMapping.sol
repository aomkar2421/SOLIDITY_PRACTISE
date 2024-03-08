// SPDX-License-Identifier: MIT
pragma solidity >0.8.0;

struct donar {
    string name;
    uint age;
    uint don;
}

contract advMap{
    mapping (address => donar ) public donations;

    function setValue(string memory _name, uint _age, uint _don) public  {
        donations[msg.sender] = donar(_name, _age,donations[msg.sender].don + _don);
    }

    function deleteValue() public {
        delete donations[msg.sender];
    }

}

