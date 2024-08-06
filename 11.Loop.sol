// SPDX-License-Identifier: UNLICENSED
// compiler version must be greater than or equal to 0.8.24 and less than 0.9.0
pragma solidity ^0.8.24;

contract Loop {
    function loop() public pure {
        // for loop
        for (uint256 i = 0; i < 10; i++) {
            if (i == 3) {
                continue;
            }
            if (i == 5) {
                // Exit loop with break
                break;
            }
        }
        uint256 j;
        while (j < 10) {
            j++;
        }
    }
}
