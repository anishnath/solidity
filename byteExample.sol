
pragma solidity >=0.5.0 <0.7.0;
contract byteExample {

    //0x5B38Da6a701c568545dCfcB03FcB875f56beddC4    
    byte    public a = 0x5B ;
    bytes1  public b = 0x6c ; // 0110 1100 
    bytes2  public c = 0x6c69 ; // 0110 1100 0110 1001 
    bytes3  public d = 0x6c6979 ; // 0110 1100 0110 1001 0111 1001 
    bytes4  public e = 0x6c697975 ; // 0110 1100 0110 1001 0111 1001 0111 0101
    bytes8  public f = 0x6c6979756c697975 ; // 0110 1100 0110 1001 0111 1001 0111 0101
    
    
    function byte1a ()  public view returns ( uint64 ) {
      return uint64(f);
  }
    
}
