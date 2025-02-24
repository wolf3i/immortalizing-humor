"Humor is an art and an/my armor" - This insight struck me in a dream while I was in Innsbruck for the 2023/2024 New Year's celebration. It encapsulates how I use humor as a shield to guard against emotional turmoil. - this is a little project of mine to use the Ethereum Project as proof of me being the first person to come up with this quote :)


Here are the details about the deployment:

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
