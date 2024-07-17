/**
Mapping(read,write,delete)
  -Like dictionary(python) or maps(c++)
  -Cannot iterate
  -Cannot get size
**/
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Mapping{
    //creating a map
    mapping(address => uint) public  mymap;

    //get element of the map
    function get(address _ad)public view returns(uint){
        return mymap[_ad];
    }

    //set element of the map
    function set(address _ad,uint _i)public{
        mymap[_ad]=_i;
    }

    function remove(address _ad)public {
        delete mymap[_ad];
    }
}
