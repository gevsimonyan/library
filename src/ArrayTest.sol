// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "./lib/Array.sol";

contract ArrayTest {
    using Array for uint256[];

    uint256[] public arr;

    function arrRemove() public {
        arr.push(1);
        arr.push(2);
        arr.push(3);
        arr.push(4);
        arr.push(5);

        arr.remove(1);
    }
}