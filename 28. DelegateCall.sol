//SPDX-License-Identifier:MIT

pragma solidity ^0.8.20;

contract TestCall {
    uint256 public num;
    uint256 public value;
    address public sender;

    function setVars(uint256 _x) external payable {
        num = _x;
        value = msg.value;
        sender = msg.sender;
    }
}

contract CallContract {
    uint256 public num;
    uint256 public value;
    address public sender;

    function setVarsCall(address _test, uint256 _x) external payable {
        (bool success, ) = _test.call(abi.encodeWithSignature("setVars(uint256)", _x));
        require(success, "Tx od call function failed!");
    }

    function setVarsDelegateCall(address _test, uint256 _x) external payable {
        (bool success, ) = _test.delegatecall(
            abi.encodeWithSignature("setVars(uint256)", _x)
        );
        require(success, "Tx od delegate call function failed!");
    }
}
