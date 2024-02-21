// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0;

contract arr{
    uint [] public  arr1 = [1,2,3,4];

    function get() public view returns (uint [] memory){
        return arr1;
    }
}