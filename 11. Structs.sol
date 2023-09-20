// SPDX-License-Identifier:MIT

pragma solidity ^0.8.20;

contract Structs {
    struct Car{
        string model;
        uint year;
        address owner;
    }

    mapping(address=>Car) public List;

    function set(address _addr) public {
        List[address(_addr)] = Car("Toyota",1990,address(_addr));
        // List[_addr] = Car({model:"Toyota",year:1990,owner:_addr});
    }


}