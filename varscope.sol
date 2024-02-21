// SPDX-License-Identifier: unlicensed
pragma solidity >=0.7.0;

contract varscope {
    int public a1 = 15;
    int internal  a2 = 24;
    int private  a3 =21;

    function display() view  public returns (int) {
        return  a3 ;
    }

}

contract varscope2 is varscope{   // IS is like EXTENDS in java used for inheritance
    function display1() view  public returns (int) {
        return  a1 ;
    }
    function display2() view  public returns (int) {
        return  a2 ; //accesible only if this contract is derived from above 
    }
    function display3() view  public returns (int) {
        //return  a3 ;  private not accesible
    }
    
}

contract varscope3{
    varscope vs = new varscope();
    function display1() view  public returns (int) {
        return  vs.a1() ;  //variables must be called as functions
    }
//    function display2() view  public returns (int) {
//         return  a1 ;  //variables must be called as functions
//     }
   
}