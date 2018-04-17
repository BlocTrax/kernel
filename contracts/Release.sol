pragma solidity ^0.4.21;

import "zeppelin-solidity/contracts/ownership/Ownable.sol";
import "zos-core/contracts/application/versioning/FreezableContractDirectory.sol";

/**
 * @title Release
 * @dev This contract represents a particular Kernel version from a distribution. Has an immutable reference to all contract implementations that comprise this version.
 */
contract Release is FreezableContractDirectory {

  // Developer address to which staking payouts will be sent
  address public developer;
  
  /**
   * @dev Constructor function that sets the developer of this release
   */
  function Release() public {
    developer = msg.sender;
  }
}
