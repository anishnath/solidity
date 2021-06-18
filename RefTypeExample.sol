//Author Anish
//URL https://8gwifi.org
//Book URL https://leanpub.com/solidity

pragma solidity >=0.5.0 <0.7.0;

contract refTypeExample {

    string public  _name;
    
    function Person() {
        _name = "xumo";
    }

    function f() {
        
        modifyName(_name);
    }

    function modifyName(string storage name)  {
    
        var name1 = name;    //等价与string name1 = name;
        bytes(name1)[0] = 'X';
    }
}
string public  _name;

function Person() {
    _name = "xumo";
}

function f() {
    
    modifyName(_name);
}

function modifyName(string storage name)  {

    var name1 = name;    //等价与string name1 = name;
    bytes(name1)[0] = 'X';
}
