// SPDX-License-Identifier:MIT

pragma solidity ^0.8.20;

contract Payables{
    address payable owner;

    constructor(){
        owner = payable(msg.sender);
    }

    function deposit() public payable{}

    function getBalance() public view returns(uint){
        return address(this).balance;
    }
}