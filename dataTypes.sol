// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

contract DataTypes {
    bool public hey;
    bool public no = true;

    //  uint8 ranges 0 - 2 ** 8 - 1 // 0 - 255
    //  uint16 ranges 0 - 2 ** 16 - 1 // 0 - 65535
    //  uint256 ranges 0 - 2 ** 256 - 1 // 0 - 1.1579209e+77

    uint8 public u8 = 1;
    uint public u256 = 456;
    uint public u = 123;

    // uint is made up of only positive integers;

    // int comprises of both positive and negative numbers

    int8 public i8 = -1;
    int public i256 = 456;
    int public i = -1234;


    // NOW you can add min and max int


    int public minInt = type(int).min;
    int public maxInt = type(int).max;

    uint public minUint = type(uint).min;
    uint public maxUint = type(uint).max;


    // Array
    // In solidity, the data types byte represent a sequence of bytes
    // So generally there are two types which are;
    // Fixed-sized byte arrays
    // Dynamically-sized bytes array

    // bytes1 public a;
    // bytes1 public b;

    bytes1 public a = 0xb5;
    bytes1 public b = 0x56;

    // address types

    address public addr1;
    address public addr2 = 0xDf9D0C45d97f134151a386E0AA23b09CA903c13f;

    // Default Values

    bool public defaultBool; // false
    uint public number; // 0
    int public defaultInt; // 0
    address public defaultAddress; // 0x000000000
}