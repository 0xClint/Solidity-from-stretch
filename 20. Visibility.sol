// SPDX-License-Identifier:MIT

pragma solidity ^0.8.20;

contract Visibility{
    uint public x;
    uint private y;
    uint internal z;

    function pubFunc() pure public {}
    function extFunc() pure external {}
    function intFunc() pure internal  {}
    function privFunc() pure private {}

    function example() external view{
        x+y+z;
        pubFunc();
        intFunc();
        privFunc();
    }
}

contract VisibilityChild is Visibility{

    function example2() public view {
        x+z;
        pubFunc();
        intFunc();
    }

}