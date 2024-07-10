
//1.Inheritence (single parent)
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract A{
    function getcontractName() public pure returns(string memory){
        return "A";
    }
}

contract B is A {
    function getContractName() public pure returns (string memory) {
        return "B";
    }
}
//2.Passing parameter using constructo



// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract A{
    string public name;

    constructor(string memory _name){
        name=_name;
    }

}
contract B is A{
     constructor(string memory _name) A(_name){

     }
}
