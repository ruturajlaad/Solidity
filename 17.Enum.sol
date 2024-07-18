/**
Enum:
  -Used to model state transition.
  -Using Enum we can control when a function can or cannot be called.
**/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Enum{
    enum Status{
        Pending,
        Shipped,
        Accepted,
        Rejected,
        Cancelled
    }

    Status public  status;

    function ship() public {
        require(status==Status.Pending);
        status = Status.Shipped;
    }

    function accept() public {
        require(status==Status.Shipped);
        status = Status.Accepted;
    }

    function reject() public {
        require(status==Status.Shipped);
        status = Status.Rejected;
    }

    function cancel()public {
        require(status==Status.Pending);
        status = Status.Cancelled;
    }
}
