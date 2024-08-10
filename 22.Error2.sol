// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract Account {
    uint256 public balance;
    uint256 public constant MAX_UINT = 2 ** 256 - 1;

    function deposit(uint256 _amount) public {
        uint256 oldBalance = balance;
        uint256 newBalance = balance + _amount;

        // balance + _amout does not overflow if balance +_amount >= balance
        require(newBalance >= oldBalance, "Overflow");

        balance = newBalance;

        assert(balance >= oldBalance);
    }

    function withdraw(uint256 _amount) public {
        uint256 oldBlance = balance;

        require(balance >= _amount, "Underflow");

        balance -= _amount;
        assert(balance <= oldBlance);
    }
}
