// SPDX-License-Identifier: MIT
pragma solidity >0.8.0;

contract DataLoc{
    // uint [] public arr = [11,22,33,44,55,66];

    // function StorageFunc() public  {
    //     uint [] storage arrs = arr;
    //     arrs[1] = 10000;
    // }

    // function MemoryFunc() public view  {
    //     uint [] memory arrm  = arr;
    //     arrm[1] = 50000;
    // }


    // calldata requires less gas fee 
    // as well as calldata to calldata parameter transfer also requires less gas fee
    function CalldataFunc(uint [] calldata arr) public  {
        inCall(arr);
        inMem(arr);
    }

    // we can pass parameters from memory to calldata
    // but we can pass from calldata to memory
    // as well as memory to storage and vice verse also we can transfer
    function MemoryFunc(uint [] memory arr) public  {
        // inCall(arr);
        inMem(arr);
    }

    function inCall(uint [] calldata arr) public {
        
    }

    function inMem(uint [] memory arr) public {
        
    }


}
