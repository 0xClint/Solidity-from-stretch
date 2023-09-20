// SPDX-License-Identifier:MIT

pragma solidity ^0.8.20;

contract Enums {
    enum Status {
        None,
        Pending,
        Shipped,
        Completed,
        Rejected,
        Canceled
    }

    struct Order {
        address buyer;
        Status status;
    }

    Status public status;

    function get() public view returns (Status) {
        return status;
    }

    function set(Status _status) public {
        status = _status;
    }

    function ship() public {
        status = Status.Shipped;
    }

    function reset() public {
        delete status;
    }
}
