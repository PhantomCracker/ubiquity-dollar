// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import {ChefFacet} from "./ChefFacet.sol";

/**
 * @notice Contract facet for testing purposes to modify storage values
 */
contract TestChefFacet is ChefFacet {
    /**
     * @notice Sets the governance multiplier directly in storage
     * @param _multiplier New governance multiplier value
     */
    function setGovernanceMultiplierStorage(uint256 _multiplier) external {
        LibChef._setGovernanceMultiplier(_multiplier);
    }

    /**
     * @notice Sets the governancePerBlock value directly in storage
     * @param _governancePerBlock New governancePerBlock value
     */
    function setGovernancePerBlockStorage(
        uint256 _governancePerBlock
    ) external {
        LibChef._setGovernancePerBlock(_governancePerBlock);
    }

    // Add more functions to modify other storage values as needed
}
