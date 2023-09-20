// SPDX-License-Identifier:MIT

pragma solidity ^0.8.20;

contract Errors{

    uint public i=1;

    function RequireError(uint x) public pure{
        require(x>=10,"Reuire Error");
    }

    function RevertError(uint y) public pure{
        if(y>10){
            revert("Revert Error");
        }
    }
    function AssertError(uint z) public pure{
        assert(z==10);
    }

    error MyError();

    function CustomError(uint a) public pure{
        if(a>10){
            revert MyError();
        }
    }
}