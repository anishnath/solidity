pragma solidity >=0.5.0 <0.7.0;

contract HelloWorld {
    
    uint16 public a = 20;
	uint16 public b = 30;
	uint public  sum = a + b;
    
    
    
    event DataStored(uint256 val);
    uint256 val;
    
    function storeData(uint256 _val) external {
	    val = _val;
	    emit DataStored(val);
	}
	
    
    function get() public pure returns (string memory){
        uint storedData; // State variable
        return 'd';
    }
    
    function get44() public pure returns (string memory){
        return 'Hello Contracts444';
    }
    
    function helper(uint x) public pure returns (uint) {
        return x ** 4;
        //3 ** 4
    }
    
    function sayHello() public pure returns (string memory){
        return 'Hello Functions';
    }
    
    
    function f(uint a) public pure returns (uint b) {
        return a + 1; 
        
    }
    
    function f3(uint a) public view returns (uint b) {
        return a + 1; 
        
    }
    
    function getValue(string memory _strin) public pure returns(string memory){
        return _strin;
    }
  
    function getValue(uint _num) public pure returns(uint){
        return _num;
    }
    
    function getData()  public pure returns (bytes32, bytes32) {
        bytes32 a = "data1";
        bytes32 b = "data2";
        return (a, b);
    }
    
    function getData3()  public pure returns (bytes32, bytes32,bytes32) {
        bytes32 a = "data1";
        bytes32 b = "data2";
		bytes32 c = "data3";
        return (a, b,c);
    }
    
    function myPrivateFunction() private pure returns (bool) 
    { 
        return true;
    }
    
    function myPublicFunction() public pure returns (bool) 
    { 
        return true;
    }
    
    function myExternalFunction() external pure returns (bool) 
    { 
        return true;
    }
    
    function myInternalFunction() internal pure returns (bool) 
    { 
        return true;
    }
    
    function myExternalFunction3(uint[20] calldata a) external pure returns (uint){
         return a[10]*2;
    }   
    
}
