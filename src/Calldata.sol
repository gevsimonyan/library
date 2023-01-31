// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;


contract Calldata {

    address public newContract;

    function foo(string calldata str1) public {
        msg.data;
    }

    fallback() external payable {
        newContract.call{value: msg.value}(msg.data);
    }
}