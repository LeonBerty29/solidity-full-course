// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

contract LeranFunction {
    uint256 hey;

    // get data with help of  function

    function getInfo() public view returns(uint256) {
        return hey;
    }

    function updateData( uint256 _hey) public {
        hey = _hey;
    }

    function get(uint256 _a, uint256 _b) public returns(uint) {
        uint256 newNumber = _a + _b;
        hey = newNumber;
        return newNumber;
    }
}