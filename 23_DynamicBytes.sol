// SPDX-License-Identifier: MIT
pragma solidity >0.8.0;

contract dynamic {
    bytes public b;

    function setValue(bytes memory val) public {
        b = val;
    }

    function pushValue() public {
        b.push('1');
    }

}


