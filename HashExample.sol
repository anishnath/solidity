pragma solidity >=0.4.22 <0.8.0;
contract hashExample{
    function callKeccak256(string memory data) public pure returns(bytes32 result){
      return keccak256(abi.encodePacked(data));
   }  
   
   function callsha256256(string memory data) public pure returns(bytes32 result){
      return sha256(abi.encodePacked(data));
   }  
}

