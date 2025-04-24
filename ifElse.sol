// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;


contract IfElse {
    uint256 public myNum = 5;
    string public myString;

    function get(uint256 _num) public {
        if(_num == 5) {
            myString = "Hey the value of muNum is 5";
        } else if (_num == 4){
            myString = "The value of number is 4";
        } else {
            myString = "Not 5";
        }
    } 

    function shortHand(uint256 _num) public returns(string memory) {
        return _num == 5 ? myString = "Hey the value of muNum is 5" : myString = "Not 5";
    }
}