/**
Public fucntions I/O restrictions:
-Does not support maps and multidimensional (unfixed array)
-However it does support multidimensional(fixed array( but not reccomended as it might consume high gas.
-Does support arrays
-Function outputs : +named
                    +assigned
-Destructing assignments.
**/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8;

contract functions{
function returnmultiplevals() public pure returns(uint, bool, uint){
    return(1, true ,2);
}

function named() public pure returns(uint x, bool y, uint z){
    return(1, true ,2);
}

function assigned() public pure returns(uint x, bool y, uint z){
    x=2;
    y=true;
    z=1;
}
}
