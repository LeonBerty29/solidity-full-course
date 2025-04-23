// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

contract Pure {
    uint256 num1 = 4;
    uint256 num2 = 10;

    function getData() public pure returns(uint256, uint256) {
        // pure functions cannot read from or write to state variables

        // uint256 num1 = 20; // this line will cause an error because it is trying to modify state variable
        // uint256 num2 = 30; // this line will cause an error because it is trying to modify state variable

        // uint256 product = num1 * num2; // this line will cause an error because it is trying to read/access a state variable
        // uint256 total = num1 * num2;   // this line will cause an error because it is trying to read/access a state variable

        uint256 muNum1 = 30;
        uint256 muNum2 = 60;

        return (muNum1, muNum2);
    }
}