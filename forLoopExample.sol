pragma solidity >=0.5.0 <0.7.0;
contract forLoopExample{
    function Loop() public returns(uint8){
	    uint8 k = 0;
         for ( uint i = 0 ; i < 5 ; i ++ ) {
            k = k+5;
        }
        return k;
    }
}
