#!/usr/bin/env bash

# To give our shell access to our environment variables
source .env

# Read function signature
echo Enter functionn signature:
read -ra sig

# Run the contract
echo Running Contract: $LOCAL_CONTRACT

# Run the contract with interactive inputs
cast call $LOCAL_CONTRACT $sig