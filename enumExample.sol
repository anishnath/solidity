pragma solidity >=0.5.0 <0.7.0;
contract enumExample
{
    // Defining enum Gender
    enum Gender { Male, Female, Others }
    Gender _choice;
    Gender constant defaultChoice = Gender.Female;
    
    function setM (Gender choice) public {
        _choice = choice;
    }

    function getGender () view  public  returns (Gender) {
         return _choice;
    }

    function getDefaultChoice () pure  public  returns ( uint ) {
         return  uint (defaultChoice);
    }

}
