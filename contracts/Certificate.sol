// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Certificate {
    mapping(address => string[]) private certificates;

    function issueCertificate(address recipient, string calldata message) external {
        certificates[recipient].push(message);
    }

    function getCertificates(address recipient) external view returns (string[] memory) {
        return certificates[recipient];
    }
}
