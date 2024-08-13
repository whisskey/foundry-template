// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.8.26 <0.9.0;

import {BaseScript} from "./Base.s.sol";
import {console} from "forge-std/src/Test.sol";

import {Foo} from "../src/Foo.sol";
import {WETH} from "solady/tokens/WETH.sol";

contract Deploy is BaseScript {
    struct ContractInfo {
        string contractName;
        address contractAddres;
    }

    ContractInfo[] internal deploymentResult;

    function run() public broadcast returns (ContractInfo[] memory) {
        string memory deployMode;

        try vm.envString("DEPLOY_MODE") returns (string memory mode) {
            deployMode = mode;
        } catch {
            console.log("DEPLOY_MODE variable not found, automatically switched to production mode!");
        }

        bool mocksEnabled = keccak256(abi.encodePacked(deployMode)) == keccak256(abi.encodePacked(("test")));

        if (mocksEnabled) {
            address weth = address(new WETH());
            string memory wethName = type(WETH).name;

            addContract(wethName, weth);
        }

        address foo = address(new Foo());
        string memory fooName = type(Foo).name;

        addContract(fooName, foo);

        return deploymentResult;
    }

    function addContract(string memory contractName, address contractAddr) internal {
        deploymentResult.push(ContractInfo(contractName, contractAddr));
    }
}
