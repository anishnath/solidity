pragma solidity >=0.5.0 <0.7.0;

contract bitwiseOpExample {
    
    //Bitwise AND	&	Performs boolean AND operation on each bit of integer argument
    //BitWise OR	|	Performs boolean OR operation on each bit of integer argument
    //Bitwise XOR	^	Performs boolean exclusive OR operation on each bit of integer argument
    //Bitwise Not	~	Performs boolean NOT operation on each bit of integer argument 

  function bitWiseAnd ()  public pure returns ( uint8 ) {
      uint8 a = 5 ; 
      uint8 c = a &  3 ;
      return c; // 1
  }
  
  function bitWiseOR ()  public pure returns ( uint8 ) {
      uint8 a = 5 ; 
      uint8 c = a |  3 ;
      return c; // 7
  }
  
  function bitWiseXOR ()  public pure returns ( uint8 ) {
      uint8 a = 5 ; 
      uint8 c = a ^  3 ;
      return c; // 6
  }
  
  function bitWiseNot ()  public pure returns ( uint ) {
      uint8 a = 5 ; 
      uint8 c = ~a;
      return c; // 250
  }
  
}
