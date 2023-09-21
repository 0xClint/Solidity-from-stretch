//SPDX-License-Identifier:MIT

pragma solidity ^0.8.20;

contract TestCall {
    string public message;
    uint256 public x;
    event Log(string message);

    fallback() external payable {
        emit Log("fallback was called!");
    }

    receive() external payable {}

    function foo(string memory _message, uint256 _x)
        external
        payable
        returns (bool, uint256)
    {
        x = _x;
        message = _message;
        return (true, 111);
    }
}

contract Call {
    bytes public data;

    function callFoo(address _test) external payable {
        (bool success, bytes memory _data) = _test.call{value: 125}(
            abi.encodeWithSignature("foo(string,uint256)", "callfoo", 111)
        );

        require(success, "tx failed!");
        data = _data;
    }

    function callDoesNotExist(address _test) external {
        (bool success, ) = _test.call(
            abi.encodeWithSignature("funcDoeNotExist()")
        );
        require(success, "tx failed!");
    }
}
