//SPDX-License-Identifier:MIT

pragma solidity ^0.8.20;

contract SendEth {
    constructor() payable {}

    receive() external payable {}

    function sendViaTransfer(address payable _to) external payable {
        _to.transfer(1);
    }

    function sendViaSend(address payable _to) external payable {
        bool sent = _to.send(10);
        require(sent, "Transaction failed!");
    }

    function sendViaCall(address payable _to) external payable {
        (bool sent, ) = _to.call{value: 123}("");
        require(sent, "Transaction failed!");
    }
}

contract ReceiveEth {
    event Log(uint amount);

    receive() external payable{
        emit Log(msg.value);
    } 
}
