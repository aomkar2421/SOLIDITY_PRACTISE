// SPDX-License-Identifier: MIT
pragma solidity >0.8.0;

contract FixedArray {
    uint [5] public arr = [10,20,30,40,50];
    uint public len = arr.length;

    function returnArray() public view returns (uint [5] memory){
        return arr;
    }

    function getValue(uint index) public view returns (uint) {
        return arr[index];
    }

    function updateArr(uint index, uint val) public returns (uint) {
        arr[index] = val;
        return arr[index];
    }

    function deleteValue(uint index) public returns(uint)  {
        delete arr[index];
        return arr[index];
    }
    

}