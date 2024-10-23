// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

import {Script} from "forge-std/Script.sol";
import {Humor} from "../src/Humor.sol";

contract DeployHumorMainnet is Script {
    function run() external returns (Humor) {
        // Start broadcasting the transaction
        vm.startBroadcast();

        Humor humor = new Humor();

        vm.stopBroadcast();
        return humor;
    }
}

// to deploy run: source .env AND forge script script/DeployHumorMainnet.s.sol --rpc-url $MAINNET_RPC_URL --broadcast --etherscan-api-key $ETHERSCAN_API_KEY --verify --account defaultKey --sender 0xe8df60a93b2b328397a8cbf73f0d732aaa11e33d
