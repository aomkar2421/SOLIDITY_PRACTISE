// SPDX-License-Identifier: MIT
pragma solidity >0.8.0;

contract structEx {
    struct Emp {
        string name;
        uint256 age;
        address add;
    }

    Emp[] public emps;

    function setValue() public {
        Emp memory e1 = Emp("omkar", 21, msg.sender);
        Emp memory e2 = Emp({name: "ankita", age: 22, add: msg.sender});
        
        Emp memory e3;
        e3.name = "adiraj";
        e3.age = 22;
        e3.add = msg.sender;

        emps.push(e1);
        emps.push(e2);
        emps.push(e3);
    }

    function updateValue() public  {
        Emp storage temp = emps[2];
        temp.age = 99;
    }

    function deleteValue() public  {
        Emp storage temp = emps[1];
        delete temp.age;

        delete emps[0];

    }

    

}
