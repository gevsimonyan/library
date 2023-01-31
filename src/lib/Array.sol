// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

library Array {
    function remove(
        uint256[] storage arr,
        uint256 index
    ) public {
        require(arr.length > 0, "Can't remove from empty array");
        arr[index] = arr[arr.length - 1];
        arr.pop();
    }
}