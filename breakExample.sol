pragma solidity >=0.5.0 <0.7.0;
contract breakExample{
    function Loop() public returns(uint8){
	    uint8 k = 0;
         for ( uint i = 0 ; i < 5 ; i ++ ) {
            k = k+5;
            if(k>20)
            {
	            break;
            }
        }
        return k;
    }
}
