# Create-and-Mint-Token
1.A new token is created on the local HardHat network
2.Only contract owner should be able to mint tokens
3.Any user can transfer tokens
4.Any user can burn tokens
## MyToken

MyToken is an ERC20 token contract created on the local HardHat network.

## Overview

This contract allows the contract owner to mint tokens and users to transfer and burn tokens.

## Deployment

To deploy the contract on the HardHat network, follow these steps:

1. Clone the repository to your local machine.
2. Install the necessary dependencies using `npm install`.
3. Configure the deployment settings in the `hardhat.config.js` file.
4. Run `npx hardhat run scripts/deploy.js --network <network_name>` to deploy the contract to the specified network.

## Functionality

### mint

The `mint` function allows the contract owner to create new tokens and assign them to a specified address.

**Parameters:**

- `to` (address): The address to which the newly minted tokens will be assigned.
- `amount` (uint256): The amount of tokens to mint.

### transfer

The `transfer` function allows any user to transfer tokens to another address.

**Parameters:**

- `recipient` (address): The address to which the tokens will be transferred.
- `amount` (uint256): The amount of tokens to transfer.

### burn

The `burn` function allows any user to burn (destroy) their own tokens.

**Parameters:**

- `amount` (uint256): The amount of tokens to burn.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
