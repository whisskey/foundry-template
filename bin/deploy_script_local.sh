#!/usr/bin/env bash

# To give our shell access to our environment variables
source .env

# Read script script/Contract.s.sol:ContractScript
echo Which script do you want to run?
read script

# Run the script
echo Running Script: $script...

# We specify the anvil url as http://localhost:8545
# We need to specify the sender for our local anvil node
forge script $script \
    --fork-url http://localhost:8545 \
    --broadcast \
    -vvvv \
    --sender $SENDER \
    --private-key $PRIVATE_KEY