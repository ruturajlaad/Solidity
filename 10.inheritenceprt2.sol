/**
Inheritence
-Order of inheritence(base to derived)
-Two ways to call parent contracts :1.Explicitly.
                                    2."super" keyword.
**/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract A{
    function getcontractName() public pure returns(string memory){
        return "A";
    }
}

contract B{
    function getContractName() public pure returns (string memory) {
        return "B";
    }
}
contract C is A,B{
    // C will inherit from A because of the order as A comes before B,if,function getname is not present in the given  contract ,
    //it starts to check from the right most contract(B),but inherits from the contract that is the most "base like"
}
contract D is B,A{
    //Likewise D will inherit from B
}
///////////////////////////////////////////
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract A{
    event Log(string message);

     function foo() public virtual {
        emit Log("A.foo was called.");
        
    }
}

contract B is A {
    function foo() public virtual override   {
        emit Log("B.foo was called.");
        A.foo();
    }
}
contract C is A {
    function foo() public virtual  override {
        emit Log("C.foo was called.");
        A.foo();
    }
}
contract D is B,C {
    function foo() public virtual  override(B,C) {
        emit Log("D.foo was called.");
        super.foo();
}
}

