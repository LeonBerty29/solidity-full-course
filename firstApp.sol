// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

contract NFTCounter {
    uint256 public counter;

    

    // This function will increment the NFT Number by 1
    function addNFT() public {
        counter += 1;
    }

    // This function will decrement the NFT Number by 1
    function decreaseNFT() public {
        counter -= 0;
    }

    // This function returns the total number of NFT's
    function getTotalNFT() public view returns(uint) {
        return  counter;
    }
}