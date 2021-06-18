pragma solidity >=0.4.22 <0.8.0;
contract HelloWorld {
  
  string public msg;
  constructor(string memory _msg) public {
    msg = _msg;
  }

  function getMsg() view public  returns (string memory){
    return msg;
  }
}
