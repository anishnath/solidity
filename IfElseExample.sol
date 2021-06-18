//Author Anish
//URL https://8gwifi.org
//Book URL https://leanpub.com/solidity

pragma solidity >=0.5.0 <0.7.0;
contract ifElseExample {
    function testIfElse() pure public returns (string memory, uint) {
        uint someVar =3;
        if(someVar > 2) {
            return ("> ", someVar);
        } else if (someVar == 2) {
            return ("==", someVar);
        } else {
            return ("> ", someVar);
        }
    }
}
