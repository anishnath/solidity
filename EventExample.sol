//Author Anish
//URL https://8gwifi.org
//Book URL https://leanpub.com/solidity

pragma solidity >=0.4.22 <0.8.0;
contract EventExample {

event DataStored(uint256 val);
uint256 val;

function storeData(uint256 _val) external {
	val = _val;
	emit DataStored(val);
	}
}
