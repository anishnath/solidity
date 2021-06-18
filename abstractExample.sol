pragma solidity >=0.4.25 <0.7.0;
abstract contract Map {  
    function lookup(uint id) public virtual returns (uint);
}

contract Test is Map {
   function lookup(uint id) public override  returns(uint) {
      uint a = 1;
      uint result = a + id;
      return result;
   }
}
