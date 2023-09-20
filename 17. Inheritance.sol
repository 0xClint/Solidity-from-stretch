// SPDX-License-Identifier:MIT

pragma solidity ^0.8.20;

contract A{

    function foo() public pure virtual returns(string memory){
        return "A";
    }

    function bar()public pure virtual returns(string memory){
        return "B";
    }
    function baz()public pure virtual returns(string memory){
        return "C";
    }
}

contract B is A{
     function foo() public pure virtual override returns(string memory){
        return "foo";
    }

    function bar()public pure override returns(string memory){
        return "bar";
    }
}

contract C is B{
        function foo() public pure override returns(string memory){
        return "foosy";
    }

}

