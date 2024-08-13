// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.8.26 <0.9.0;

import { Foo } from "../src/Foo.sol";

import { Test, console } from "forge-std/src/Test.sol";

contract FooTest is Test {
    Foo internal foo;

    function setUp() public {
        foo = new Foo();
    }

    function test_ShouldBeSuccess_Id() external view {
        console.log("Hello Test");

        uint256 x = 1;
        assertEq(foo.id(x), x);
    }

    function testFuzz_ShouldBeSuccess_Id(uint256 x) external view {
        vm.assume(x != 0);
        assertEq(foo.id(x), x);
    }

    function testFork_ShouldBeSuccess_Example() external {
        string memory rpcUrlMainnet = vm.envOr("RPC_URL_MAINNET", string(""));
        if (bytes(rpcUrlMainnet).length == 0) {
            return;
        }

        vm.createSelectFork({ urlOrAlias: "mainnet", blockNumber: 20_496_798 });
        address holder = 0xd8dA6BF26964aF9D7eEd9e03E53415D37aA96045;
        uint256 actualBalance = holder.balance;
        uint256 expectedBalance = 200_524_731_781_790_766_618;
        assertEq(actualBalance, expectedBalance);
    }

    /*//////////////////////////////////////////////////////////////////////////
                                      REVERTS
    //////////////////////////////////////////////////////////////////////////*/

    function test_Revert_Id() external view {
        uint256 x = 1;
        uint256 y = 2;
        assertNotEq(foo.id(x), y);
    }

    /*//////////////////////////////////////////////////////////////////////////
                                      HELPERS
    //////////////////////////////////////////////////////////////////////////*/

    function _helper() private { }
}
