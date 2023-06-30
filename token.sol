//A new token is created on the local HardHat network
//Only contract owner should be able to mint tokens
//Any user can transfer tokens
//Any user can burn tokens

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract MyToken is ERC20 {
    address private owner;

    constructor() ERC20("MyToken", "MTK") {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Only the contract owner can call this function.");
        _;
    }

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    function transfer(address recipient, uint256 amount) public virtual override returns (bool) {
        _transfer(_msgSender(), recipient, amount);
        return true;
    }

    function burn(uint256 amount) public {
        _burn(_msgSender(), amount);
    }
}
