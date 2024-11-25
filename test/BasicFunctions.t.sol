// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/BasicFunctions.sol";

contract BasicFunctionsTest is Test {
    BasicFunctions basicFunctions;

    function setUp() public {
        // Deploy the BasicFunctions contract with an initial greeting
        basicFunctions = new BasicFunctions("Hello, Base!");
    }

    // Test the initial greeting
    function testInitialGreeting() public view {
        string memory greeting = basicFunctions.getGreet();
        assertEq(greeting, "Hello, Base!", "Initial greeting is incorrect");
    }

    // Test updating the greeting
    function testUpdateGreeting() public {
        basicFunctions.setGreet("Hello, Foundry!");
        string memory greeting = basicFunctions.getGreet();
        assertEq(greeting, "Hello, Foundry!", "Greeting update failed");
    }

    // Test addition
    function testAddition() public view {
        uint256 result = basicFunctions.add(5, 3);
        assertEq(result, 8, "Addition failed");
    }

    // Test subtraction
    function testSubtraction() public view {
        uint256 result = basicFunctions.subtract(10, 3);
        assertEq(result, 7, "Subtraction failed");
    }

    // Test subtraction underflow
    function testSubtractionUnderflow() public {
    vm.expectRevert("Underflow error");
    basicFunctions.subtract(3, 10);
    }

    // Test multiplication
    function testMultiplication() public view {
        uint256 result = basicFunctions.multiply(4, 3);
        assertEq(result, 12, "Multiplication failed");
    }

    // Test division
    function testDivision() public view {
        uint256 result = basicFunctions.divide(12, 4);
        assertEq(result, 3, "Division failed");
    }

    // Test division by zero
    function testDivisionByZero() public {
        vm.expectRevert("Division by zero");
        basicFunctions.divide(10, 0);
    }
}

