// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import "forge-std/Script.sol";
import "../src/BasicMath.sol";

contract DeployBasicMath is Script {
    function run() external {
        vm.startBroadcast();
        BasicMath basicMath = new BasicMath();
        console.log("Deployed BasicMath to:", address(basicMath));
        vm.stopBroadcast();
    }
}