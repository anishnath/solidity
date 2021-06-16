pragma solidity >=0.5.0 <0.7.0;

contract rightShiftExample {

  function rightShift ()  public pure returns ( uint8 ) {
      uint8 a = 8 ; // 0b00001000 
      uint8 c = a >>  2 ; // 0b00000010 
      return c; // 2
  }
}