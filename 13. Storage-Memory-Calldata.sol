// SPDX-License-Identifier:MIT

pragma solidity ^0.8.20;

contract Storage {
    struct Person {
        string name;
        uint256 age;
    }

    mapping(address => Person) public people;

    function example() external returns (uint[] memory){
        people[msg.sender] = Person("John", 25);

        // Storage is used to edit the data
        Person storage person1 = people[msg.sender];
        person1.age = 27;

        // Memory is used to read data, we can't edit it!
        Person memory person2 = people[msg.sender];
        person2.age = 27;

        //declaring array in memory

        uint[] memory arr1 = new uint[](3);
        arr1[0]=123;

        return arr1;
    }
}
