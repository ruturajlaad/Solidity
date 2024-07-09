/**
View Functions:Do not modify state.
Pure Functions: 1.Do not modify state and also does not read state. 
**/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8;

contract fun{
    uint public x= 1;
    function vieW(uint y) public view returns(uint){
        return x+y;
    }

    /**function viEW(uint y) public view returns(uint){
        return x+=x;
    }**/

    function purE(uint i,uint jy) public pure returns(uint){
        return i+jy;
    }


}
