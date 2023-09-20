//SPDX-License-Identifier:MIT

pragma solidity^0.8.20;

contract Variables{
    bool public boolean= true;
    int8 public numbyte8 = 10;
    uint public uintNum = 123;
    uint public numMax = type(uint).max;
    address public addr;
    bytes1 public bytesNum = 0xbf; 
    // addr = address();
    function foo() external{

    addr = address(0xCA35b7d915458EF540aDe6068dFe2F44E8fa733c);
    }
}