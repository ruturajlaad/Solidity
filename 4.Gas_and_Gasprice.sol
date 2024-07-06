// Tx free = gas used * gas priced
// Gas =  unit of computation
// Gas price = Ether /Gas
// Gas limit = set by you
// Block gas limit = set by network


// SPDX-License-Identifier: MIT
pragma solidity ^0.8;

contract Gas {
    function testGasrefund() public returns (uint){
        return tx.gasprice;
    }
}
