// SPDX-License-Identifier:MIT

pragma solidity ^0.8.20;

contract A {
    string public text;
    constructor(string memory _text){
        text=_text;

    }
}

contract B {
    string public message;
    constructor(string memory _message){
        message=_message;

    }
}

contract C is A,B {
    constructor(string memory _text, string memory _message) A(_text) B(_message){

    }
}