// SPDX-License-Identifier:MIT

pragma solidity ^0.8.20;

contract Immutables {
    uint256 public x;
    uint256 public y;

    //Immmutables should be declare in constructor
    uint256 public immutable z;

    //constant should be declared as well as valued at same
    uint constant a=11;

    constructor() {
        z = 10;
    }
}
