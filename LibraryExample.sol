//Author Anish
//URL https://8gwifi.org
//Book URL https://leanpub.com/solidity

pragma solidity >=0.4.22 <0.8.0;

library MyMathLibrary {
  
  function add(uint256 a, uint256 b) internal pure returns (uint256) {
        uint256 c = a + b;
        require(c >= a, "Adition overflow");
        return c;
    }
  
}

contract Number {
  using MyMathLibrary for uint;
  function testAdd(uint x, uint y) public pure returns (uint) {
        return x.add(y);
    }
}

