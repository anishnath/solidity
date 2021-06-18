pragma solidity >=0.4.25 <0.7.0;
contract Animal {
    //private state variable
    string private name;
    constructor(string memory aName)  public
    {
        name = aName;
    }
    
    function  getName ( )  public view returns (string memory)  {
        return name;
    }
  
}
// use of is keyword to perform inheritance
// Derived Contract
contract Dog is Animal {
    
    constructor(string memory _name) Animal(_name) public  {
    }
    
    function superExmple() public {
        super.getName;
    }
}

contract Test {
    function Tester() public{
        
        Dog dog = new Dog("Hashi");
        dog.getName;
        require( keccak256(abi.encodePacked((dog.getName))) == keccak256("Hashi") , "inheritance Test");
        
    }
}
