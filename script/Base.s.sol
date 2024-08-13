// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.8.26 <0.9.0;

import {Script} from "forge-std/src/Script.sol";

abstract contract BaseScript is Script {
    uint256 internal broadcaster;

    constructor() {
        broadcaster = vm.envUint("DEPLOYER_PK");
    }

    modifier broadcast() {
        vm.startBroadcast(broadcaster);
        _;
        vm.stopBroadcast();
    }
}
