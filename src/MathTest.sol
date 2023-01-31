// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "./lib/Math.sol";

contract MathTest {
    function testLibFunction(uint256 x) public pure returns(uint256) {
        return Math.sqrt(x);
    }
}