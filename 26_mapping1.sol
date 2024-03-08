// SPDX-License-Identifier: MIT
pragma solidity >0.8.0;

contract mapEx {
    mapping(uint => string) public empid;

    function setValue(uint _id,string memory val) public  {
        empid[20]="omkar";
        empid[30]="ankita";
        empid[27]="adiraj";
        empid[33]="avi";
        empid[_id] = val;
    }

}





