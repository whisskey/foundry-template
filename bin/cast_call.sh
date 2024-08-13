#!/usr/bin/env bash

# To give our shell access to our environment variables
source .env

# Read function signature
echo Enter functionn signature:
read -ra sig

# Run the contract
echo Running Contract: $CONTRACT

# Run the contract with interactive inputs
cast call $CONTRACT $sig --rpc-url $RPC_URL