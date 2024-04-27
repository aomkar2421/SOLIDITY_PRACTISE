// SPDX-License-Identifier: MIT
pragma solidity >0.8.0;

contract sendXmpl{
    // address payable add = payable(0x5B38Da6a701c568545dCfcB03FcB875f56beddC4);

    receive() external payable { }

    event ev(uint val);

    function chechBal () public view returns (uint) {
        return address(this).balance;
    }

    function sendEth(address payable add) payable public  {
        emit ev(msg.value);
        bool sent = add.send(msg.value);
        require(sent,'Transaction Failed');
    }

    function transferEth(address payable add) public payable {
        emit ev(msg.value);
        add.transfer(msg.value);
    }

    function callEth(address payable add) public payable  {
        emit ev(msg.value);
       (bool sent,) = add.call{value:msg.value}('');
        require(sent,'Transaction Failed');
    }

}