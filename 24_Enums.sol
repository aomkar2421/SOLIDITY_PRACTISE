// SPDX-License-Identifier: MIT
pragma solidity >0.8.0;

contract EnumEx {
    enum Status{
        pending,
        loading,
        shipped,
        calculating,
        accepted,
        rejected,
        cancel
    }

    Status public s;
    
    function setValue(Status _s) public  {
        s = _s;
    }

    function setValue2() public  {
        s = Status.cancel;
    }

    // error
    // function setValue3() public  {
    //     s = 2;
    // }

    

}
