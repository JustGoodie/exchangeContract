//SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.1;

interface IERC721 {
    function safeTransferFrom(address from, address to, uint tokenId) external;
}


contract Grab {

    function getNFT( address nftContractAddress, address to, uint tokenId) external {
        IERC721(nftContractAddress).safeTransferFrom(msg.sender, to, tokenId);
    }


}