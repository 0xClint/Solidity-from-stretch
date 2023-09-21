//SPDX-License-Identifier:MIT

pragma solidity ^0.8.20;

library Math {
    function findMax(uint256 x, uint256 y) internal pure returns (uint256) {
        return x >= y ? x : y;
    }
}

contract MathContract {
    function findMax(uint256 _x, uint256 _y) external pure returns (uint256) {
        return Math.findMax(_x,_y);
    }
}
