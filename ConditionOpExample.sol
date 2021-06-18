//Author Anish
//URL https://8gwifi.org
//Book URL https://leanpub.com/solidity

pragma solidity >=0.5.0 <0.7.0;

contract conditionOpExample {
    
  // Supported Operators <=, <, ==, !=, >=And>
  
  address address1;
  address address2;
  address address3;
    
    // <=，<，==，!=，>=和>
    
   constructor() public {
        address1 = 0x8696DeABcdA95734871653C2c3055ae8690f5352;
        address2 = 0xdAC17F958D2ee523a2206206994597C13D831ec7;
        address3 = 0x8696DeABcdA95734871653C2c3055ae8690f5352;
    }
  

  function gtOrEqTo ()  public view returns ( bool ) {
      return address1 >= address2;
  }
  
  function ltOrEqTo ()  public view returns ( bool ) {
       return address1 <= address2;
  }
  
  function gt ()  public view returns ( bool ) {
      return address1 > address2;
  }
  
  function lt ()  public view returns ( bool ) {
     return address1 > address2;
  }
  
  function eq ()  public view returns ( bool ) {
     return address1 == address3;
  }
  
}
