// contracts/4_FDHelloWorldToken.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract FDHelloWorldToken is ERC20, Ownable {

    constructor(uint256 initialSupply) ERC20("FD Hello World", "FDHW") Ownable(msg.sender) {
        _mint(msg.sender, initialSupply);
    }

    function refill(uint256 amount) public onlyOwner {
        _mint(owner(), amount);
    }

}