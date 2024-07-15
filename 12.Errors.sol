/**
+Assert:
  - Should never fail.
  -Uses up all gas.
+Require:
  -Validate inputs,outputs & preconditions.
  -Does not use up all the gas.
+Revert(like Revert)
**/
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Account{
    uint public balance;
    uint public constant MAX_INT = 2**256-1;

    function deposit(uint _amount)public {
        uint oldbalance = balance;
        uint newbalance = balance + _amount;

        require(newbalance >= oldbalance,"Overflow");
        balance += _amount;

        assert(balance >= oldbalance);
    }

    function withdraw(uint _amount)public {
        uint oldbalance = balance;

        require(balance >= oldbalance,"Sorry! insufficient funds :(");

        if(balance<_amount){
            revert("Sorry! insufficient funds :(");
        }
        balance -= _amount;

        assert(balance <= oldbalance);
    }
}
