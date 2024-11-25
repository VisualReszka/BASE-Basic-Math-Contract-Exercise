// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract BasicFunctions {
    // Greeting state variable
    string public greet;

    // Constructor to set the initial greeting message
    constructor(string memory _greet) {
        greet = _greet;
    }

    // Function to retrieve the greeting message
    function getGreet() public view returns (string memory) {
        return greet;
    }

    // Function to update the greeting message
    function setGreet(string memory _newGreet) public {
        greet = _newGreet;
    }

    // Basic Math Functions

    // Function to add two numbers
    function add(uint256 a, uint256 b) public pure returns (uint256) {
        return a + b;
    }

    // Function to subtract two numbers
    function subtract(uint256 a, uint256 b) public pure returns (uint256) {
        require(a >= b, "Underflow error");
        return a - b;
    }

    // Function to multiply two numbers
    function multiply(uint256 a, uint256 b) public pure returns (uint256) {
        return a * b;
    }

    // Function to divide two numbers
    function divide(uint256 a, uint256 b) public pure returns (uint256) {
        require(b != 0, "Division by zero");
        return a / b;
    }
}
