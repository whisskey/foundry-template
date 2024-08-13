#!/usr/bin/env bash

# To give our shell access to our environment variables
source .env

# Read function signature
echo Enter functionn signature:
read -ra sig

# Read script arguments
echo Enter functionn arguments, or press enter if none:
read -ra args

# Run the contract
echo Running Contract: $CONTRACT

# Run the contract with interactive inputs
cast send $CONTRACT $sig $args --private-key $PRIVATE_KEY --rpc-url $RPC_URL