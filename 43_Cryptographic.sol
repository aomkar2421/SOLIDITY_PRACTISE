// SPDX-License-Identifier: MIT
pragma solidity >0.8.0;

contract CryptoFunctions {

    function demoKeccak1(uint num) public pure returns (bytes32){
        return keccak256(abi.encode(num));
    }

    function demoKeccak2(uint num) public pure returns (bytes32){
        return keccak256(abi.encodePacked(num));
    }

    function demoSha(uint num) public pure returns (bytes32){
        return sha256(abi.encodePacked(num));
    }

    function demoRipemd(uint num) public pure returns (bytes32){
        return ripemd160(abi.encodePacked(num));
    }

}
