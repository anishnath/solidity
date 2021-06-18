//Author Anish
//URL https://8gwifi.org
//Book URL https://leanpub.com/solidity

pragma solidity >=0.5.0 <0.7.0;

contract fnTypeExample {

    string public  _name;
    
    constructor() public {
        _name = "hello anish";
    }

    function f()  public{
        
        modifyName(_name);
    }

    function modifyName(string memory name)  internal {
    
        string memory name1 = name;
        bytes(name1)[0] = 'D';
    }
    
    function getName() public view returns (string memory) {
        return _name;
    }
}
