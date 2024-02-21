// SPDX-License-Identifier: unlicensed
pragma solidity >=0.7.0;

contract abc {
    enum size{S ,M ,L}
    size public choice = size.M;

    function setSmall() public {
        choice = size.S;
    }

    function setLarge() public {
        choice = size.L;
    }

    function setMedium() public {
        choice = size.M;
    }

    
}