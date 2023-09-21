//SPDX-License-Identifier:MIT

pragma solidity ^0.8.20;

contract Kill {
    constructor() payable {}

    function kill() external {
        selfdestruct(payable(msg.sender));
    }

    function getData() external pure returns (string memory) {
        return "ALIVE";
    }
}

contract Helper {
    function getBalance() external view returns (uint256) {
        return address(this).balance;
    }

    function kill(Kill _killaddr) external {
        _killaddr.kill();
    }
}
