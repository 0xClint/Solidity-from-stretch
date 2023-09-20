// SPDX-License-Identifier:MIT

pragma solidity ^0.8.20;

contract viewAndOure {
    uint256 public num = 10;

    function viewFunc() external view returns (uint256) {
        return num;
    }

    function pureFunc(uint256 x) external pure returns (uint256) {
        return  x;
    }
    function addToNum(uint x) external view returns (uint){
        return x+num;
    }
    function addToNum(uint x,uint y) external pure returns (uint){
        return x+y;
    }
}
