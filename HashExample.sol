//Author Anish
//URL https://8gwifi.org
//Book URL https://leanpub.com/solidity

pragma solidity >=0.4.22 <0.8.0;
contract hashExample{
    function callKeccak256(string memory data) public pure returns(bytes32 result){
      return keccak256(abi.encodePacked(data));
   }  
   
   function callsha256256(string memory data) public pure returns(bytes32 result){
      return sha256(abi.encodePacked(data));
   }  
}

