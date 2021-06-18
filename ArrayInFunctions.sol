pragma solidity >=0.5.0 <0.7.0;
contract arrayInFunctions{
    
    /** Visible external */
    function fnExternal(uint[] calldata args) external returns(uint[] memory) {
        uint[] memory newArray = new uint[](10);
        newArray[0] = 1;
        return newArray;
    }


    /** Visible public */
    function fnPublic(uint[] memory args) public pure returns(uint[] memory) {
        uint[] memory newArray = new uint[](10);
        newArray[0] = 1;
        return newArray;
    }
}
