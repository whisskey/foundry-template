#!/usr/bin/env bash

# To give our shell access to our environment variables
source .env

## Fork Mainnet
echo Please wait a few seconds for anvil to fork mainnet and run locally...
anvil --fork-url $RPC_URL

# Wait for anvil to fork
sleep 5

# Once finished, we want to kill our anvil instance running in the background
trap "exit" INT TERM
trap "kill 0" EXIT