//Author Anish
//URL https://8gwifi.org
//Book URL https://leanpub.com/solidity

pragma solidity >=0.5.0 <0.9.0;
   struct Person
{
   string name;
   uint citNo;
 }

contract structureGlobalExample{
 
    Person person;
    function addToStruct(string memory name, uint citNo) public
    {
        person.name=name;
        person.citNo=citNo;
    }
    function getStruct() public view returns (string memory, uint)
    {
        return ( person.name, person.citNo );
    }
}
