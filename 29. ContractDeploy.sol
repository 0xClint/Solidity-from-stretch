//SPDX-License-Identifier:MIT

pragma solidity ^0.8.2;

contract Account {
    address public owner;
    address public bank;

    constructor(address _owner) payable {
        owner = _owner;
        bank = msg.sender;
    }
}

contract AccountFactory {
    Account[] public accounts;

    function createAccount(address _owner) external payable {
        Account account = new Account{value: 100}(_owner);
        accounts.push(account);
    }
}
