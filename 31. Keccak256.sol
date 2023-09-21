//SPDX-License-Identifier:MIT

pragma solidity ^0.8.20;

contract hashFunc {
    function hash(
        string memory text,
        uint256 num,
        address addr
    ) external pure returns (bytes32) {
        return keccak256(abi.encodePacked(text, num, addr));
    }

    // "AAA",12,0x4B20993Bc481177ec7E8f571ceCaE8A9e22C02db
    // OUTPUT
    //  0x1fbd7205eb260848aebdce37c60670b85dda4779abbe72a6298c9940d1dddaa7

    function encodePacked(
        string memory text,
        uint256 num,
        address addr
    ) external pure returns (bytes memory) {
        return abi.encodePacked(text, num, addr);
    }

    // "AAA",12,0x4B20993Bc481177ec7E8f571ceCaE8A9e22C02db
    // OUTPUT
    // 0x41414100000000000000000000000000000000000
    // 0000000000000000000000000000c4b20993bc481177ec
    // 7e8f571cecae8a9e22c02db

    function encode(
        string memory text,
        uint256 num,
        address addr
    ) external pure returns (bytes memory) {
        return abi.encode(text, num, addr);
    }

    // "AAA",12,0x4B20993Bc481177ec7E8f571ceCaE8A9e22C02db
    // OUTPUT
    //     0x00000000000000000000000000000
    //     0000000000000000000000000000000006
    //     0000000000000000000000000000000000
    //     000000000000000000000000000000c000
    //     0000000000000000000004b20993bc4811s
    //     77ec7e8f571cecae8a9e22c02db0000000
    //     0000000000000000000000000000000000
    //     0000000000000000000000341414100000
    //     0000000000000000000000000000000000
    //     0000000000000000000
}
