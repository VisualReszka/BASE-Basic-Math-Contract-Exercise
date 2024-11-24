text
# BASE | Basic Math Contract Exercise

This project involves creating a Basic Math Contract using Forge, following Coinbase Base's tutorial.

## Goals
- Implement basic Solidity functions and types.
- Write and deploy a Solidity contract on the Base Sepolia Testnet.
- Complete the Base Deployment Exercise and earn the NFT badge.

## Features
- **Math Operations**: Functions for addition, subtraction, multiplication, and division.
- **Solidity Fundamentals**: Highlights types, visibility modifiers, and more.
- **Deployment via Forge**: Uses Foundry tools for development and deployment.

## Prerequisites
- **Forge**: Install Foundry following the Foundry guide.
- **Testnet ETH**: Acquire Sepolia ETH from a faucet.
- **Base Sepolia RPC URL**: Set up an RPC endpoint.
- **Private Key**: Required for deployment.

## Instructions
1. **Clone the Repository**
   ```bash
   git clone https://github.com/VisualReszka/BASE-Basic-Math-Contract-Exercise.git  
   cd BASE-Basic-Math-Contract-Exercise  

Install Dependencies
bash
forge install  

Compile the Contract
bash
forge build  

Deploy the Contract
Replace <SEPOLIA_RPC_URL> and <YOUR_PRIVATE_KEY> with your details:
bash
forge script script/DeployBasicMath.s.sol --rpc-url <SEPOLIA_RPC_URL> --private-key <YOUR_PRIVATE_KEY> --broadcast  

Submit the Contract
Share the deployed contract address on the Base Deployment Exercise page to claim your NFT badge.
Acknowledgements
Inspired by Coinbase Base tutorials. All rights to the original tutorial belong to Coinbase.
GitHub Repository
