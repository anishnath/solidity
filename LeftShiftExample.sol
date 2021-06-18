//Author Anish
//URL https://8gwifi.org
//Book URL https://leanpub.com/solidity

pragma solidity >=0.5.0 <0.7.0;

contract leftShiftExample {

  function leftShift ()  public pure returns ( uint8 ) {

      uint8 a = 8 ; // 0b00001000 
      uint8 c = a <<  2 ; // 0b00100000 
      return c; // 32
  }
}
