# BASE | Basic Math Contract Exercise

This repository contains the solution to the **Base Deployment Exercise**, implementing a Basic Math Contract using **Forge**. The contract is deployed on the **Base Sepolia Testnet**, fulfilling the requirements of the tutorial provided by Coinbase Base.

## Project Goals

- Demonstrate the use of basic Solidity types and functions
- Write, compile, and deploy a Solidity smart contract on the Base Sepolia Testnet
- Successfully complete the requirements for the **Base Deployment Exercise** and earn the associated NFT badge

This project is based on the tutorial provided by [Base Learn](https://docs.base.org/base-learn/docs/deployment-to-testnet/deployment-to-testnet-exercise/).

## Features

The smart contract includes:

1. **Basic Math Operations**: Functions for addition, subtraction, multiplication, and division
2. **Solidity Basics**: Demonstrates primitive types, visibility modifiers, and more
3. **Deployment via Forge**: Uses Foundry tools for efficient contract development and deployment

## Prerequisites

To work with this repository, you will need:

- **Forge**: Install Foundry by following the [Foundry guide](https://book.getfoundry.sh/getting-started/installation)
- **Testnet ETH**: Obtain Sepolia ETH from a faucet for deploying contracts
- **Base Sepolia RPC URL**: Configure an RPC endpoint for the Base Sepolia Testnet
- **Private Key**: Ensure you have access to your wallet's private key for deployment

## Usage Instructions

### 1. Clone the Repository

```bash
git clone https://github.com/VisualReszka/BASE-Basic-Math-Contract-Exercise.git
cd BASE-Basic-Math-Contract-Exercise
```

### 2. Install Dependencies

Install any required dependencies using:

```bash
forge install
```

### 3. Compile the Contract

Compile the smart contract to ensure it's error-free:

```bash
forge build
```

### 4. Deploy the Contract

Deploy the contract using the following command (replace the placeholder values):

```bash
forge script script/DeployBasicMath.s.sol --rpc-url <SEPOLIA_RPC_URL> --private-key <YOUR_PRIVATE_KEY> --broadcast
```

### 5. Submit the Contract Address

After deployment, submit the contract address to the Base Deployment Exercise page to earn your NFT badge.

## Acknowledgements

This repository is based on the **Coinbase Base tutorials** provided in their [official documentation](https://docs.base.org/). All rights for the tutorial and its content belong to Coinbase. This repository serves as an implementation of their educational material for learning purposes only.

## Licence

This repository does not include a formal licence as it is based on educational materials from Coinbase Base documentation. Please refer to the Coinbase documentation for more information regarding rights and usage.
