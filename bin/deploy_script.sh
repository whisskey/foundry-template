#!/usr/bin/env bash

# To give our shell access to our environment variables
source .env

# Read script script/Contract.s.sol:ContractScript
echo Which script do you want to run?
read script

# Run the script
echo Running Script: $script...

# Run the script with interactive inputs
forge script $script \
    --rpc-url $RPC_URL \
    --private-key $PRIVATE_KEY \
    --broadcast \
    --verify \
    --etherscan-api-key $API_KEY_ETHERSCAN \
    -vvvv \