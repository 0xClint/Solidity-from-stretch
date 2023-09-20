// SPDX-License-Identifier:MIT

pragma solidity ^0.8.20;

contract Mappings {
    mapping(address => mapping(address => bool)) public isFriend;

    mapping(address => uint256) public balances;
    mapping(address => bool) public inserted;
    address[] public addrList;

    function setMap1() public {
        balances[msg.sender] = 100; // 100
    }

    function setMap2() public {
        balances[msg.sender] += 300; // 400
    }

    function setMap3() public {
        delete balances[msg.sender]; // 0
    }

    function set(address _addr, uint256 _val) public {
        balances[_addr] = _val;

        if (!inserted[_addr]) {
            inserted[_addr] = true;
            addrList.push(_addr);
        }
    }
    function get(address _addr) public view returns(uint){
        return balances[_addr];
    }
}
