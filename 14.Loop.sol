// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Loop{
    uint public  cnt;

    function loop(uint n) public{
        for(uint i=0;i<n;i++){
            cnt +=1;
        }
    }
}
