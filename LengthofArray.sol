//Author Anish
//URL https://8gwifi.org
//Book URL https://leanpub.com/solidity

pragma solidity >=0.5.0 <0.7.0;
contract lengthofArray {
    
    // The length of the array is 5, and the type of the value stored in the array is uint type 
    uint [ 5 ] T = [ 1 , 2 , 3 , 4 , 5 ];
    
    // Calculate the sum of the values ​​inside the array through a for loop 
    function numbers ()   public view  returns ( uint ) {
         uint num = 0 ;
         for ( uint i = 0 ; i < T. length ; i ++ ) {
            num = num + T[i];
        }
        return num;
    }

}
