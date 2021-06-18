//Author Anish
//URL https://8gwifi.org
//Book URL https://leanpub.com/solidity

pragma solidity >=0.4.25 <0.7.0;

contract modifierExample {
  address public owner;
  uint public last_completed_migration;

  modifier restricted() {
    require(msg.sender == owner, "Not owner");
    _;
  }

  constructor() public {
    owner = address(0x123);
  }

  function setCompleted(uint completed) public restricted {
    last_completed_migration = completed;
  }
}
