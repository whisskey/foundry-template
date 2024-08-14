# Foundry Template

A Foundry-based template for efficient Solidity smart contract development with optimized defaults.

### Pre Requisites

You will need the following software on your machine:

- [Git](https://git-scm.com/downloads)

- [Foundry](https://github.com/foundry-rs/foundry)

- [Node.Js](https://nodejs.org/en/download/package-manager)

- [Bun](https://bun.sh)

In addition, familiarity with [Solidity](https://soliditylang.org) is requisite.

### Set Up

Clone this repository:

```sh
$ git clone https://github.com/whisskey/foundry-template.git
```

Then, inside the project's directory, run this to install the Node.js dependencies:

```sh
$  bun install
```

## Usage

This is a list of the most frequently needed commands.

### Build

Build the contracts:

```sh
$ forge build
```

### Clean

Delete the build artifacts and cache directories:

```sh
$ forge clean
```

### Compile

Compile the contracts:

```sh
$ forge build
```

### Coverage

Get a test coverage report:

```sh
$ forge coverage
```

### Deploy

Deploy to Anvil:

```sh
$ forge script script/Deploy.s.sol --broadcast --fork-url http://localhost:8545
```

For this script to work, you need to have a `MNEMONIC` environment variable set to a valid
[BIP39 mnemonic](https://iancoleman.io/bip39/).

For instructions on how to deploy to a testnet or mainnet, check out the
[Solidity Scripting](https://book.getfoundry.sh/tutorials/solidity-scripting.html) tutorial.

### Format

Format the contracts:

```sh
$ forge fmt
```

### Gas Usage

Get a gas report:

```sh
$ forge test --gas-report
```

### Lint

Lint the contracts:

```sh
$ bun run lint
```

### Test

Run the tests:

```sh
$ forge test
```

Generate test coverage and output result to the terminal:

```sh
$ bun run test:coverage
```

Generate test coverage with lcov report (you'll have to open the `./coverage/index.html` file in your browser, to do so
simply copy paste the path):

```sh
$ bun run test:coverage:report
```

## License

This project is licensed under MIT.
