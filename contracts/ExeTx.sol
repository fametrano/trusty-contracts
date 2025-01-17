// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract ExeTx {
    uint public i;

    function callMe(uint j) public {
        i += j;
    }

    function getData() public pure returns (bytes memory) {
        return abi.encodeWithSignature("callMe(uint256)", 123);
    }
}
