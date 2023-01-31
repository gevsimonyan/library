// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract Cheatset {

    address public _to; // 20k gas

    function fieldAlgebra() public pure{
        uint256 a = addmod(10, 5, 14); // 1 => (10 + 4) % 14   
        uint256 b = mulmod(6, 5, 10); // 5  => (6 * 5) % 10
    
    }

    function selfDestructExample() public {
        _to = address(0); // 15k gas
        delete _to; // 15k gas
        selfdestruct(payable(address(this)));
    }

}