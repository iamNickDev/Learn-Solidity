// SPDX-License-Identifier: MIT

pragma solidity 0.8.24;

contract Todos {
    struct ToDo {
        string text;
        bool completed;
    }

    ToDo[] public todos;

    function create(string calldata _text) public {
        todos.push(ToDo(_text, false));
    }

    function updateText(uint256 _index, string calldata _text) public {
        ToDo storage todo = todos[_index];
        todo.text = _text;
    }

    function toggleCompleted(uint256 _index) public {
        ToDo storage todo = todos[_index];
        todo.completed = !todo.completed;
    }
}
