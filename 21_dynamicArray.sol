// SPDX-License-Identifier: MIT
pragma solidity >0.8.0;

contract dynamic {
    uint [] public arr =[1,2,3,4,5,6,7,8,9];

    function dummy() public {
        arr[3]=78;

        delete arr[0];

        arr.pop();
        arr.push(99);
    }


}