//Author Anish
//URL https://8gwifi.org
//Book URL https://leanpub.com/solidity

pragma solidity >=0.5.0 <0.7.0;
contract arrayAddExample{
    uint[] myArray;
    
    function addToArray() external {
        myArray.push(1);     // add an element to the array
        myArray.push(3);     // add another element to the array
        
        myArray[0];          // get the element at key 0 or first element in the array  
        myArray[0] = 20;     // update the first element in the array
    }
    
    
    function getIndex(uint index) public view returns (uint)
    {
        return myArray[index];
    }
    
    function deleteIndex(uint index) public
    {
        delete myArray[index];
    }
}
