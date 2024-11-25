// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import "forge-std/Script.sol";
import "../src/BasicFunctions.sol";

contract DeployBasicFunctions is Script {
    function run() external {
        vm.startBroadcast();
        new BasicFunctions("Hello, Local!");
        vm.stopBroadcast();
    }
}
