//Author Anish
//URL https://8gwifi.org
//Book URL https://leanpub.com/solidity

pragma solidity >=0.4.22 <0.8.0;
contract errorHandlingExample{
    
 function div(uint256 a, uint256 b) pure public returns (uint256) {
    assert(b > 0); // Solidity automatically throws when dividing by 0
    return a / b;
  }
  
  function div2(uint256 a, uint256 b) pure public returns (uint256) {
    require(b > 0, "cant divide by zero"); // Solidity automatically throws when dividing by 0
    return a / b;
  }
  
  function div3(uint256 a, uint256 b) pure public returns (uint256) {
    if(b==0)
    {
        revert();
    }
    return a / b;
  }
}
contract HasAnOwner {
    address owner;
    
    function onlyOwnersRevert() public{ 
        if (msg.sender != owner) { revert("something bad"); }
        // do something only the owner should be allowed to do
    }
    
    function onlyOwnersAssert() public{ 
        assert(msg.sender == owner);
        // do something only the owner should be allowed to do
    }
    
     function onlyOwnersRequire() public{ 
        require(msg.sender == owner);
        // do something only the owner should be allowed to do
    }
}
