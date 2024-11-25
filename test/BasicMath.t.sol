// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/BasicMath.sol";

contract BasicMathTest is Test {
    BasicMath basicMath;

    function setUp() public {
        // Deploy the BasicMath contract
        basicMath = new BasicMath();
    }

    function testAdder() public view {
        // Test normal addition
        (uint256 sum, bool error) = basicMath.adder(5, 3);
        assertEq(sum, 8, "Adder failed: wrong sum");
        assertEq(error, false, "Adder failed: unexpected error");

        // Test overflow case
        (sum, error) = basicMath.adder(type(uint256).max, 1);
        assertEq(sum, 0, "Adder failed: should return 0 on overflow");
        assertEq(error, true, "Adder failed: should return error on overflow");
    }

    function testSubtractor() public view {
        // Test normal subtraction
        (uint256 difference, bool error) = basicMath.subtractor(10, 4);
        assertEq(difference, 6, "Subtractor failed: wrong difference");
        assertEq(error, false, "Subtractor failed: unexpected error");

        // Test underflow case
        (difference, error) = basicMath.subtractor(3, 5);
        assertEq(difference, 0, "Subtractor failed: should return 0 on underflow");
        assertEq(error, true, "Subtractor failed: should return error on underflow");
    }
}
