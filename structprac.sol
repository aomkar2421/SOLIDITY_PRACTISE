// SPDX-License-Identifier: unlicensed
pragma solidity >=0.7.0;

contract abc {
    struct student{
        string sname;
        uint sid;
    }

    student public s;
    function setStudent() public {
        s = student("omkar",20);
    }

    function getStudent() public view returns (uint) {
        return s.sid;
    }
}


contract def {
    struct student{
        string sname;
        uint sid;
    }

    student [] public allStu ;

    function getStudent(string memory sname2 ,uint sid2) public {
            student memory s = student({
                sname : sname2,
                sid : sid2
            });

            allStu.push(s);
    }
}