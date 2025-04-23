// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

contract Constants {
    // 70063 gas 
    // address public myAdd = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;

    // 45697 gas
    // address public constant myAdd = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;

    address public constant MY_ADDR = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;

    // from above, we can see it costs me way more gas when i stored my value withount using the const keyword
    // from the above we can see it cost me way less gas when i stored my value in a const

    function getConstant() public pure returns (address) {
        return MY_ADDR;
    }

}