// SPDX-License-Identifier:MIT

pragma solidity ^0.8.20;

contract Ownable {
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(
            msg.sender == owner,
            "YOu don;t can rights to call this function!"
        );
        _;
    }

    function onlyOwnerFunc() public onlyOwner {}

    function transferOwner(address add) public onlyOwner {
        owner = add;
    }

    function anyoneFunc() public {}
}
