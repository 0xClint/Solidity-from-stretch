// SPDX-License-Identifier:MIT

pragma solidity ^0.8.20;

contract Fallback {
    event Log(string message, address sender, uint256 value, bytes data);

    //If receive will be called if it is existand msg.data is empty, else fallback will be called
    fallback() external payable {
        emit Log("fallback", msg.sender, msg.value, msg.data);
    }

    receive() external payable {
        emit Log("receive", msg.sender, msg.value, "");
    }

    function getBalance() public view returns (uint256) {
        return address(this).balance;
    }
}
