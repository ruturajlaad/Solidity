/**
Array:
  -Fixed and Dynamic sized
  -Push ,pop and length
  -Removing elements creates gaps
    -To keep the array compact ,move last element to the index you want to delete.
**/
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract array{
    //creating array
    uint[] public myArray ;
    uint[50] public fixedarray;

    //pushing elements into the array
    function push(uint i)public {
        myArray.push(i);
    }

    //poping elements into the array
    function pop()public {
        myArray.pop();
    }

    //length of array
    function getLength() public view returns(uint){
        return myArray.length;
    }

    //removing element
    function remove(uint index) public{
        delete myArray[index];
    }
}
