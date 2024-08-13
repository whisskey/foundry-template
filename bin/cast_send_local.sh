#!/usr/bin/env bash

# To give our shell access to our environment variables
source .env

# Read function signature
echo Enter functionn signature:
read -ra sig

# Read script arguments
echo Enter functionn arguments, or press enter if none:
read -ra args

# Read script arguments
echo Enter private key:
read -ra prv

# Run the contract
echo Running Contract: $LOCAL_CONTRACT

# Run the contract with interactive inputs
cast send $LOCAL_CONTRACT $sig $args --private-key $prv 