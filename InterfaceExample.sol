//Author Anish
//URL https://8gwifi.org
//Book URL https://leanpub.com/solidity

pragma solidity >=0.4.25 <0.7.0;

//Author Anish
//URL https://8gwifi.org

interface  Map {  
    function lookup(uint id)  external returns (uint);
    function lookup(uint id, uint id2)  external returns (uint,uint);
}


contract Test is Map {
   function lookup(uint id) public override  returns(uint) {
      uint a = 1;
      uint result = a + id;
      return result;
   }
}


contract mapInterfaceTest{
    
    Map map;
    
    function callTest() public{
        map = new Test();
    }
    
    function getValue() public returns(uint){
        return map.lookup(10);
    }
}
