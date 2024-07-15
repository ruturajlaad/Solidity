/**
In Solidity, the indexed keyword is used in event declarations to mark up to three parameters as "indexed." Indexed parameters are topics in the event logs, which makes them searchable and filterable in the logs. This can be particularly useful for dApps that need to filter and find specific events emitted by a contract.

Detailed Explanation
Events:

Events in Solidity are a way for smart contracts to communicate that something of interest has happened. They are similar to logs in traditional programming but are a special feature of Ethereum that is part of the blockchain.
Events are logged on the blockchain and can be accessed by off-chain applications through Ethereum nodes.
Indexed Parameters:

When an event is emitted, the parameters of the event are logged.
Indexed parameters are stored as topics in the Ethereum logs, making them easily searchable.
Non-indexed parameters are stored in the data section of the log and are not searchable.
Topics:

A topic is a special data structure used in the Ethereum logs to help categorize and search log entries.
There are always at least one topic, which is the event signature itself (hash of the event name and parameter types). Additional topics can be added for each indexed parameter (up to three).
**/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Event{
    event Log(address indexed  sender,string message);
    event anotherLog();


    function fireEvents()public{
        emit Log(msg.sender,"Hello viraj!");
        emit Log(msg.sender,"Jevlis ka?!");
        emit anotherLog();
    }
}
