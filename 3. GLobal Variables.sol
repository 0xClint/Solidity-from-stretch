// SPDX-License-Identifier:MIT

pragma solidity ^0.8.20;

contract GlobVariables{
    function GlobFunc() external view returns (address,uint,uint){
        address sender =msg.sender;
        uint blockTime = block.timestamp;
        uint blockNum = block.number;
        return (sender,blockTime,blockNum);
        // return (msg.sender,block.timestamp,block.number);
    }

}