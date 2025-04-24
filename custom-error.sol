// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

contract CustomError {
    error InvalidAmount(uint256 amount);

    function payBill(uint256 amount) public pure returns(string memory) {
        if(amount <= 0) {
            revert InvalidAmount(amount);
        } else {
            return "Payment Successful";
        }
    }
}