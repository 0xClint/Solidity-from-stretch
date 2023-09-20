// SPDX-License-Identifier:MIT

pragma solidity ^0.8.20;

contract Events {
    event Log(string text, uint256 val);

    //Indexed Event can be done to atmost 3 parameters

    event IndexedLog(address indexed sender, uint256 val);

    function emitEvent() external {
        emit Log("foo", 10);
        emit IndexedLog(msg.sender, 100);
    }

    event Message(address indexed from,address indexed _to, string message);

    function sendMsg(address _to, string calldata message) external {
        emit Message(msg.sender, _to, message);
    }
}
