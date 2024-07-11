/**
##Visibility:
-private: Only visible within the contract that defines the function. Not accessible from derived contracts.
-internal: Only visible within the contract that defines the function and any derived contracts.
-public: Accessible from anywhere, including other contracts and externally (e.g., via transactions).
-external: Accessible only from other contracts and externally (e.g., via transactions), but not from within the same contract (or derived contracts) using the this keyword.
**/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Base{
    function privatefun() private pure returns(string memory){
        return "PRIVATE";
    }

    function publicfun() public pure returns(string memory){
        return "PUBLIC";
    }

    function internalfun() internal pure returns(string memory){
        return "INTERNAL";
    }

    function externalfun() external pure returns(string memory){
        return "EXTERNAL";
    }    
}

contract child is Base{

}
