//SPDX-License-Identifier:MIT

pragma solidity ^0.8.20;

contract ContractCall {
    function getX(address _testContractAddr) external view returns (uint256) {
        return TestContract(_testContractAddr).getX();
    }

    function setX(address _testContractAddr, uint256 _x) external {
        TestContract(_testContractAddr).setX(_x);
    }

    function setXandReceiveEth(TestContract _test, uint256 _x)
        external
        payable
    {
        _test.setXandReceiveEther{value: msg.value}(_x);
    }

    function getXandValue(TestContract _test)
        external
        view
        returns (uint256 x, uint256 value)
    {
        (x, value) = _test.getXandValue();
    }
}

contract TestContract {
    uint256 public x;
    uint256 public value = 123;

    function getX() external view returns (uint256) {
        return x;
    }

    function setX(uint256 _x) external {
        x = _x;
    }

    function setXandReceiveEther(uint256 _x) external payable {
        x = _x;
        value = msg.value;
    }

    function getXandValue() external view returns (uint256, uint256) {
        return (x, value);
    }
}
