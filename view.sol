// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

contract View {
    uint256 num1 = 2;
    uint256 num2 = 7;

    // Using view to chceck the state variable
    function getResults() public view returns(uint256, uint256) {
        return (num1, num2);
    }

    function getResults2() public view returns(uint256, uint256) {
        // uint256 num1 = 20; // this line will cause an error because it is trying to modify state variable
        // uint256 num2 = 30; // this line will cause an error because it is trying to modify state variable

        uint256 product = num1 * num2;
        uint256 total = num1 * num2;

        return (product, total);
    }
}