//Author Anish
//URL https://8gwifi.org
//Book URL https://leanpub.com/solidity

pragma solidity >=0.5.0 <0.7.0;
contract addressExample {
    
    address  public _owner;


    constructor() public {
        _owner =  msg . sender ;
    }
    
    function msgSenderAddress () public view  returns ( address ) {
         return  msg . sender ;
    }
    
    
}
