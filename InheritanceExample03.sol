//Author Anish
//URL https://8gwifi.org
//Book URL https://leanpub.com/solidity

pragma solidity >=0.4.25 <0.7.0;
contract Animal {
  uint internal a; 
  uint public b;
  uint private c;
  
    function setA(uint  x) private {
        a=x;
    }

    function setB(uint  x) external{
        b=x;
    }
    
    function setC(uint  x)  public {
        c=x;
    }
    
    function setD(uint  x)  internal {
        c=x;
    }
}
// use of is keyword to perform inheritance
contract Dog is Animal {
  
  constructor ()  public{
      setC(10); // Pass  Derived contract can access parent public functions
      setD(10);  //Pass  Derived contract can access parent internal functions
  //  setA(10);  // Error-`private` function:  cannot be called by derived contracts or external accounts
  //  setB(10);  // Error-`external` function: only by external accounts
       
       a=10; // internal variable   
       b=10; // public variable
   //  c=10; //Error-private variable 
    
    }
  
}
