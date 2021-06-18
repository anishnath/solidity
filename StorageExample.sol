pragma solidity >=0.5.0 <0.7.0;

contract storageExample
{
  // Initialising array numbers
  uint256[] public numbers;
  // Function to insert values in the array numbers
  function StorageEx() public
  {
    numbers.push(1);
    numbers.push(2);
    numbers.push(3);
 
    //Creating a new instance
    uint256[] storage myArray = numbers;
    myArray[0] = 0;
  } 
  
  function get() public view returns (uint256)
  {
       uint256[] storage myArray = numbers;
       return myArray[0];
  }
}
