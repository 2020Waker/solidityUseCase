// SPDX-License-Identifier: UNLICENSED
// compiler version must be greater than or equal to 0.8.24 and less than 0.9.0
pragma solidity ^0.8.24;

contract ArrayReplaceFromEnd {
    uint256[] public arr;

    function remove(uint256 index) public {
        arr[index] = arr[arr.length - 1];
        arr.pop();
    }

    function text() public {
        arr = [1, 2, 3, 4];
        remove(1);
        // [1,4,3]
        assert(arr.length == 3);
        assert(arr[0] == 1);
        assert(arr[1] == 4);
        assert(arr[2] == 3);

        remove(2);
        // [1,4]
        assert(arr.length ==2);
        assert(arr[0] == 1);
        assert(arr[1] == 4);
    }
}
