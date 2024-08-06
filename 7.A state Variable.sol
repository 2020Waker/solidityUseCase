// SPDX-License-Identifier: UNLICENSED
// compiler version must be greater than or equal to 0.8.24 and less than 0.9.0
pragma solidity ^0.8.24;

contract SimpleStorage{
    uint256 public num;
    // You need to send a transaction to write to a state variable.
    function set(uint256 _num) public{
        num = _num;
    }
    // You can read from a state variable without sending a transaction.
    function get() public view returns (uint256){
        return num;
    }
}