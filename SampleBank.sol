//Author Anish
//URL https://8gwifi.org
//Book URL https://leanpub.com/solidity

pragma solidity >=0.5.0 <0.7.0;
contract SimpleBank { // CamelCase

// Declare state variables outside function, persist through life of contract
// dictionary that maps addresses to balances
mapping (address => uint) private balances;
// "private" means that other contracts can't directly query balances but data is still viewable to other parties on blockchain

address public owner;

// 'public' makes externally readable (not writeable) by users or contracts
// Events - publicize actions to external listeners
event DepositMade(address accountAddress, uint amount);

// Constructor, can receive one or many variables here; only one allowed
 constructor ()  public{

// msg provides details about the message that's sent to the contract msg.sender is contract caller (address of contract creator)
owner = msg.sender;
}

/// @notice Deposit ether into bank
/// @return The balance of the user after the deposit is made
function deposit()  external payable returns (uint) {
	balances[msg.sender] += msg.value;
	// no "this." or "self." required with state variable all values set to 	data type's initial value by default
	emit DepositMade(msg.sender, msg.value); // fire event
	return balances[msg.sender];
}

/// Withdraw withdrawAmount ether from bank withdrawAmount
/// This does not return any excess ether sent to it
/// param withdrawAmount amount you want to withdraw
/// return The balance remaining for the user
function withdraw(uint withdrawAmount)  public  returns (uint remainingBal) {
	if(balances[msg.sender] >= withdrawAmount) {
		balances[msg.sender] -= withdrawAmount;		
	if (!msg.sender.send(withdrawAmount)) {
	    // to be safe, may be sending to contract that has overridden 'send' which may then fail
		balances[msg.sender] += withdrawAmount;
		}
	}
	return balances[msg.sender];

}
/// @notice Get balance
/// @return The balance of the user
/// constant' prevents function from editing state variables;
// allows function to run locally/off blockchain
function balance() view public returns (uint) {
	return balances[msg.sender];
}
}
