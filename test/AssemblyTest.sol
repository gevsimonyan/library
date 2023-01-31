// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/Assembly.sol";


contract AssemblyTest is Test {

    Assembly public asm;

    uint256[] public __arr;

    function setUp() public {
        asm = new Assembly();
    }

    function testCalldata() public {
    
        console.log("=========================");
        console.log(asm.str1("Hello!"));
        console.log("=========================");

        console.log("=========================");
        console.logBytes32(asm.str2("Hello!"));
        console.log("=========================");

        uint256 a = 1;
        uint256 b = 2;
        uint256 c = 3;


        console.log("=========================");
        console.log(asm.arr1([a, b, c]));
        console.log("=========================");

        console.log("=========================");
        bytes32 data1;
        bytes32 data2;
        bytes32 data3;
        (data1, data2, data3) = asm.arr2([a, b, c]);
        console.logBytes32(data1);
        console.logBytes32(data2);
        console.logBytes32(data3);

        console.log("=========================");

        console.log("=========================");
        console2.logBytes(asm.msgdata1([a, b, c]));
        console.log("=========================");


        console.log("=========================");
        console.logBytes32(asm.msgdata2("Test"));
        console.log("=========================");


        console.log("=========================");
        console.logBytes32(asm.msgdata3("Test"));
        console.log("=========================");


        console.log("=========================");
        console.logBytes32(asm.msgdata4("Test"));
        console.log("=========================");

    
    }

    function testTrace() public {

        __arr.push(1);
        __arr.push(2);
        __arr.push(3);



        console.log("=========================");
        console2.logBytes(asm.msgdata6(__arr));
        console.log("=========================");
    }    
}