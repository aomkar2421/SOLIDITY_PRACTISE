// SPDX-License-Identifier: MIT
pragma solidity >0.8.0;

contract payableXmpl{
    function check() public payable {

    }

    function chechBal() public view returns (uint) {
        return address(this).balance;
    }
}