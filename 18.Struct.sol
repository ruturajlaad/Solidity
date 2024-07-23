// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Struct{

    struct Todo{
        string text;
        bool completed;
    }
    Todo[] public todos;

    //Create
    function create(string memory _text ) public {
        todos.push(Todo(_text,false));
    }

    //Read(solidity automatically implements getters).
    // Still you can create your own getter funtion to modify the outputs.


    //Update
    function update(uint _index,string memory _text)public {
        Todo storage todo =todos[_index];
        todo.text=_text;
    }
    //If funtion is complete then bool=True.
    function togCompleted(uint _index)public {
        Todo storage todo =todos[_index];
        todo.completed=!todo.completed;
    }

}
