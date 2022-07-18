// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

// Openzeppelin contracts
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract YakToken is Ownable, ERC20, ReentrancyGuard {
    uint256 public initTotalSupply;

    constructor() ERC20("Moon", "MUN") {}

    function mint(uint256 amount) public onlyOwner nonReentrant {
        initTotalSupply = amount;
        _mint(msg.sender, initTotalSupply * 1e18);
    }
}
