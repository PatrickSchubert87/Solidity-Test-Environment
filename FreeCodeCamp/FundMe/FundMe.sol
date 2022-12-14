// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.7;

/*
// Get funds from user
// withdraw funds
// set minimum funding value
*/

contract FundMe {

    uint256 public minimumUsd = 50;

    // uint256 minimumFundsValue;
    // address[] public funderArray;
    // address owner;
    // uint public totalFunds;

    // constructor(uint _minimumFundsValue) {
    //     owner = msg.sender;
    //     // set minimum funding value
    //     minimumFundsValue = _minimumFundsValue;
    // }

    // modifier onlyOwner {
    //     require(msg.sender == owner, "You're not the owner");
    //     _;
    // }

    mapping(address => uint) public fundsAmountOfAddress;

    // Get funds from user
    // To make a function payable, marking the function as payable is necessary 
    // function fund(address payable funder, uint amount) public payable onlyOwner {
    function fund() public payable {
        // Want to be able to set a minimum fund amount
        // 1. How to send tokens to this contract? 
        require(msg.value >= minimumUsd, "Didn't send enough!");
        // What is reverting? - Undo any action before, and send remaining gas back

        // funderArray.push(funder);
        // fundsAmountOfAddress[funder] += amount;
        // totalFunds += amount;
    }

    // withdraw funds
    // function withdraw(address to, uint amount) public onlyOwner {
    //     require(totalFunds >= minimumFundsValue, "The minimum funds arent achived yet");
    //     require(amount <= fundsAmountOfAddress[to], "You've not enough funds");
    //     fundsAmountOfAddress[to] -= amount;
    //     totalFunds -= amount;
    // }


    // function setMinimumFundingValue(uint amount) public {
    //     minimumFundsValue = _minimumFundsValue;
    // }
}


// 0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2
// 0x4B20993Bc481177ec7E8f571ceCaE8A9e22C02db