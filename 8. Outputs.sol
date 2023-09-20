// SPDX-License-Identifier:MIT

pragma solidity ^0.8.20;

contract Outputs {
    uint public num ;
    bool public toggle;

    function returnMany() public pure returns (uint256, bool) {
        return (1,true);
    }

    function named() public pure returns(uint x,bool y){
        x=4;
        y=true;
    }

    function destructure() public {
        (uint a,bool b)=returnMany();
        num=a;
        toggle=b;
    }
}
