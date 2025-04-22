// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

contract MyFirstContract {
    // string public hey = "Hello Leon";
    // uint256 public no = 4;


    string public hey;
    uint256 public no;

    // constructor(string memory _hey, uint _no) {
    //     hey = _hey;
    //     no = _no;
    // }

    function addInfo(string memory _hey, uint256 _no) public {
        no = _no;
        hey = _hey;
    }
    
}