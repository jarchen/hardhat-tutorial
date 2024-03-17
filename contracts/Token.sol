//SPDX-License-Identifier: UNLICENSED

// Solidity files have to start with this pragma.
// It will be used by the Solidity compiler to validate its version.
pragma solidity ^0.8.0;

import "hardhat/console.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

// This is the main building block for smart contracts.
contract Token is ERC20 {
    // An address type variable is used to store ethereum accounts.
    address public owner;

    /**
     * Contract initialization.
     */
    constructor() ERC20("My Hardhat Token", "MHT") {
        _mint(msg.sender, 1000000 * 10 ** decimals());

        // The totalSupply is assigned to the transaction sender, which is the
        // account that is deploying the contract.
        owner = msg.sender;
    }

    function decimals() public pure override returns (uint8) {
        return 0;
    }

    /**
     * A function to transfer tokens.
     *
     * The `external` modifier makes a function *only* callable from *outside*
     * the contract.
     */
    function transfer(address to, uint256 value) external override returns (bool) {
        console.log(
            "Transferring from %s to %s %s tokens",
            msg.sender,
            to,
            value
        );

        return super.transfer(to, value);
    }
}
