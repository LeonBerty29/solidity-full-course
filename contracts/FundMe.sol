// Get funds from users
// Withdraw funds
// set minimum funding value in USD

// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;
// import {AggregatorV3Interface} from "@chainlink/contracts/src/v0.8/shared/interfaces/AggregatorV3Interface.sol";
import {PriceConverter} from "./PriceConverter.sol";

contract FundMe {
    using PriceConverter for uint256;

    uint256 public myNumber = 1;

    uint256 public constant MINIMUM_USD = 50 * 1e18;

    address[] public funders;

    mapping(address => uint256) public addressToAmountFunded;

    address public immutable i_owner;

    error NotOwner();

    constructor() {
        i_owner = msg.sender;
    }

    function fund() public payable {
        // Allow users to send money
        // Have a minimum $ sent
        // 1. How do we send ETH to this contract?
        // msg.value (uint): number of wei sent with the message
        myNumber = myNumber + 2;
        require(
            msg.value.getConversionRate() >= MINIMUM_USD,
            "Didn't send enough ETH"
        ); // 1e18 = 1ETH = 1000000000000000000 = 1 * 10 ** 18
        funders.push(msg.sender);
        addressToAmountFunded[msg.sender] += msg.value;

        // What is a revert
        // A revert Undoes any actions that have been done, and send the remaining gas back
        // In the case of a revert here, although 2 has already been added to the initial myNumber amount,
        // If a revert occurs the addition of 2 will be undone and we will have the initial value of myNumber.
    }

    function withdraw() public onlyOwner {
        // for loop
        // [1, 2, 3, 4]

        for (uint256 funderIndex; funderIndex < funders.length; funderIndex++) {
            address funder = funders[funderIndex];
            addressToAmountFunded[funder] = 0;
        }
        funders = new address[](0);

        // actually withdraw the funds
        // transfer
        // send
        // call

        // msg.sender = address
        // payable(msg.sender) = payable address
        // payable(msg.sender).transfer(address(this).balance); // transfer method
        // bool sendSuccess = payable(msg.sender).send(address(this).balance); // send method
        // require(sendSuccess, "Send Failed");
        // call method
        (bool callSuccess, ) = payable(msg.sender).call{
            value: address(this).balance
        }("");
        require(callSuccess, "Call failed");
    }

    modifier onlyOwner() {
        require(
            msg.sender == i_owner,
            "You are not the owner and do not have access to withdraw these funds"
        );

        // Alternatively
        // if(msg.sender != i_owner) {
        //     revert NotOwner();
        // }
        _; // This means execute the code(function) where this modifier is called
    }

    receive() external payable { 
        fund();
    }

    fallback() external payable  {
        fund();
    }


    // What happens if someone sends this contract ETH without calling the fund function
}
