// SPDX-License-Identifier:MIT

pragma solidity ^0.8.20;

contract Modifiers {
    uint256 public num;
    bool public paused;

    constructor(uint _x){
        num=_x;
        paused=false;
    }

    // BASIC Modifier
    modifier isPaused() {
        require(!paused, "counter is paused!");
        _;
    }

    function toggleGame() public {
        paused = !paused;
    }

    function inc() public isPaused {
        num += 1;
    }

    // INPUT Modifier
    modifier cap(uint256 x) {
        require(x > 10, "x < 10 !");
        _;
    }

    function checkInput(uint256 _x) public pure cap(_x) {
        _x += 1;
    }

    // SandWich Modifier
    modifier sandwich(uint256 _y) {
        _y += 2;
        _;
        _y += 5;
    }

    function sandwichFunc(uint y) public pure sandwich(y){
        y+=1;
    }
}
