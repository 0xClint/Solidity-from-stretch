//SPDX-License-Identifier:MIT

pragma solidity ^0.8.20;

contract Wallet {
    address payable public owner;

    constructor() payable{
        owner = payable(msg.sender);
    }

    receive() external payable {}

    function withdraw(uint _amount) external payable {
        require(msg.sender == owner, "not allowed");
        payable(msg.sender).transfer(_amount);
    }

    function getBalance() external view returns (uint){
        return address(this).balance;
    }
}
