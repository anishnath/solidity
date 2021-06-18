//Author Anish
//URL https://8gwifi.org
//Book URL https://leanpub.com/solidity

pragma solidity >=0.5.0 <0.7.0;
contract whileLoopExample{
    
    // Declaring state variable
    uint8 j = 0;
    
    function whileLoop() public  returns(uint8){
    uint8 k = 0;    
    while(j < 5) {
        k = k+5;
        j++;
     }
      return k;
    }
}
