# immortalizing-humor-wolf3i

Small Foundry project for deploying the `Humor` contract, which stores a quote, its attributed author, and editable contextual information on-chain.

## Contract

`src/Humor.sol` exposes:

- `quote()` returning the fixed quote text
- `author()` returning the author name
- `addressAuthor()` returning the current controlling address
- `info()` returning the current descriptive note
- `updateAuthorAddress(address)` restricted to the current author address
- `updateInfo(string)` restricted to the current author address

## Project Layout

- `src/` contract source
- `script/` Foundry deployment scripts for mainnet and Sepolia
- `test/` Foundry tests
- `lib/forge-std/` pinned upstream Foundry standard library submodule

## Prerequisites

- Foundry installed: https://book.getfoundry.sh/getting-started/installation
- A funded deployment account configured locally if you intend to broadcast
- RPC URLs and an Etherscan API key exported in your shell or loaded from a local `.env`

## Build And Test

```sh
forge build
forge test
```

## Deploy

Sepolia:

```sh
forge script script/DeployHumorSepolia.s.sol \
	--rpc-url "$SEPOLIA_RPC_URL" \
	--broadcast \
	--etherscan-api-key "$ETHERSCAN_API_KEY" \
	--verify \
	--account defaultKey \
	--sender "$DEPLOYER_ADDRESS"
```

Mainnet:

```sh
forge script script/DeployHumorMainnet.s.sol \
	--rpc-url "$MAINNET_RPC_URL" \
	--broadcast \
	--etherscan-api-key "$ETHERSCAN_API_KEY" \
	--verify \
	--account defaultKey \
	--sender "$DEPLOYER_ADDRESS"
```

Replace `defaultKey` and `$DEPLOYER_ADDRESS` with the account configuration you actually use locally.

## Generated Artifacts

Foundry writes local build and deployment outputs under `cache/`, `out/`, and `broadcast/`. These paths are intentionally gitignored because they may contain machine-specific data, transaction metadata, or sensitive local configuration.

## License

This repository is licensed under the MIT License. See `LICENSE`.


## Deployment detials

$ forge script script/DeployHumorMainnet.s.sol --rpc-url $MAINNET_RPC_URL --broadcast --etherscan-api-key $ETHERSCAN_API_KEY --verify --account defaultKey --sender 0xe8df60a93b2b328397a8cbf73f0d732aaa11e33d
[⠊] Compiling...
[⠃] Compiling 1 files with Solc 0.8.26
[⠊] Solc 0.8.26 finished in 758.25ms
Compiler run successful!
Script ran successfully.

== Return ==
0: contract Humor 0x85a686bfCB5e6F17BB0f7507eC5E6c787C2170D0

## Setting up 1 EVM.

==========================

Chain 1

Estimated gas price: 13.545167564 gwei

Estimated total gas used for script: 841781

Estimated amount required: 0.011402064697191484 ETH

==========================
Enter keystore password:

##### mainnet

✅ [Success]Hash: 0xae613fcff6186efaf5280234ea58fc230b21585e72ac24467cac322f5604acfc
Contract Address: 0x85a686bfCB5e6F17BB0f7507eC5E6c787C2170D0
Block: 21010538
Paid: 0.004237407457444032 ETH (647688 gas \* 6.542359064 gwei)

✅ Sequence #1 on mainnet | Total Paid: 0.004237407457444032 ETH (647688 gas \* avg 6.542359064 gwei)

==========================

ONCHAIN EXECUTION COMPLETE & SUCCESSFUL.

##

Start verification for (1) contracts
Start verifying contract `0x85a686bfCB5e6F17BB0f7507eC5E6c787C2170D0` deployed on mainnet

Submitting verification for [src/Humor.sol:Humor] 0x85a686bfCB5e6F17BB0f7507eC5E6c787C2170D0.
Submitted contract for verification:
Response: `OK`
GUID: `giaabu7eya6b8a4aq9v3gby1s8qvaggjbcjuwvyctaecdiywyv`
URL: https://etherscan.io/address/0x85a686bfcb5e6f17bb0f7507ec5e6c787c2170d0
Contract verification status:
Response: `NOTOK`
Details: `Pending in queue`
Contract verification status:
Response: `OK`
Details: `Pass - Verified`
Contract successfully verified
All (1) contracts were verified!

Transactions saved to: /home/wolfgang/w3i/immortalizing-humor-wolf3i/broadcast/DeployHumorMainnet.s.sol/1/run-latest.json

Sensitive values saved to: /home/wolfgang/w3i/immortalizing-humor-wolf3i/cache/DeployHumorMainnet.s.sol/1/run-latest.json
