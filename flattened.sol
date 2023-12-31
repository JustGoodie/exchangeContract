// Sources flattened with hardhat v2.18.1 https://hardhat.org

// SPDX-License-Identifier: GPL-3.0

// File contracts/Grab.sol

pragma solidity >=0.8.1;

interface IERC721 {
    function safeTransferFrom(address from, address to, uint tokenId) external;
}


contract Grab {

    function getNFT( address nftContractAddress, address to, uint tokenId) external payable {
        IERC721(nftContractAddress).safeTransferFrom(msg.sender, to, tokenId);
    }


}
