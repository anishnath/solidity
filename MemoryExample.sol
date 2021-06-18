//Author Anish
//URL https://8gwifi.org
//Book URL https://leanpub.com/solidity

pragma solidity >=0.5.0 <0.7.0;

contract memoryExample
{
  // Initialising array numbers
  uint256[] public numbers;

  function MemoryEx() public
  {
    numbers.push(1);
    numbers.push(2);
    numbers.push(2);
    //creating a new instance
    uint256[] memory myArray = numbers;
    // Adding value to the first index of the array myArray
    myArray[0] = 100;
  } 
  
  function get() public view returns (uint256)
  {
       uint256[] memory myArray = numbers;
       return myArray[0];
  }
}
