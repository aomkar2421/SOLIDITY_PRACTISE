// SPDX-License-Identifier: MIT
pragma solidity >0.8.0;

contract ByteEx {
    bytes4 public b1 ='2211';
    // bytes1 public b2 = '7676' error 

    function getValue(uint idx) public  view returns (bytes1){
        return bytes1( b1[idx] );
    }
}