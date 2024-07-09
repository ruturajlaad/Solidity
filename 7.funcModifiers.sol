/**
Function Modifiers
-Reusable code.
-Can be run before or after the functions

Examples:
-Restrict write access.
-Input validation.
-Reentrancy guard
**/


// SPDX-License-Identifier: MIT
pragma solidity ^0.8;

contract funcModifiers{
    address public owner;

    constructor() public{
        owner = msg.sender;
    }

    modifier  onlyowner(){
        require(msg.sender== owner,"Not owner.");
        _;
    }

    modifier validateaddress(address _addr){
        require(_addr != address(0),"Not valide address.");
        _;
    }

    function changeOwner(address _newowner) public onlyowner validateaddress(_newowner){
        owner= _newowner;
    }
}
