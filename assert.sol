// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

contract AssertStatement {
    bool result;

    function checkOverFlow(uint256 _num1, uint256 _num2) public returns(bool){
        uint256 sum = _num1 + _num2;
        assert(sum <= 255);

        result = true;

        return result;
    }

    function getResult() public view returns(string memory) {
        if(result) {
            return "No overflow";
        } else {
            return  "Overflow exist";
        }
    }
}