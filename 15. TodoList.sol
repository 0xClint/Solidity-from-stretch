// SPDX-License-Identifier:MIT

pragma solidity ^0.8.20;

contract Todolist {
    struct Todo {
        string text;
        bool status;
    }

    Todo[] public todos;

    function create(string calldata _text) external {
        todos.push(Todo({text: _text, status: false}));
    }

    function update(uint256 _index, string calldata _text) external {
        todos[_index].text = _text;
    }

    function get(uint256 _index) external view returns (Todo memory) {
        return todos[_index];
    }

    function toggleStatus(uint256 _index) external {
        todos[_index].status = !todos[_index].status;
    }
}
