//Author Anish
//URL https://8gwifi.org
//Book URL https://leanpub.com/solidity

pragma solidity >=0.5.0 <0.7.0;
contract MemoryAndStorage {

 mapping(uint => Book) books;
 
 struct Book{
     uint id;
     uint balance;
     string author;
 }

 function addBook(uint id, uint balance,string memory author) public {
     books[id] = Book(id, balance,author);   
 }

function updateBalanceinMemory(uint id, uint balance) public {
     Book memory Book = books[id];
     Book.balance = balance;
 }
 
 function updateBalancebyStorage(uint id, uint balance)  public {
     Book storage Book = books[id];
     Book.balance = balance;
 }
 
function getBalance(uint id) public view returns (uint) {
    return books[id].balance;
} 

}
