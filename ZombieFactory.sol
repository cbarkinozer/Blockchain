pragma solidity >=0.5.0 <0.6.0;//Showing contract's version range


//Solidity is statically-typed means variable types are known at compile time.
//Solidity gets compiled by compiler and interpreted on EVM (ethereum virtual machine).

//Contracts are like classes
contract ZombieFactory {

    //uint is the popular type
    //uint stands for Unsigned integer and is 256 bit
    uint dnaDigits = 16;
    uint dnaModulus = 10 ** dnaDigits;

    //structs automatically have constructors, getters and setters
    struct Zombie {
        string name; //string is a reference type
        uint dna;    //uint is primitive
    }

    //array of struct
    Zombie[] public zombies;
    
    
    // underscore before attribute name is conventional
    //"memory" keyword shows where a reference type is stored
    function createZombiePublic(string memory _name, uint _dna) public {
        zombies.push(Zombie(_name, _dna)); //push a Zombie with given values to the array
    }

    //private functions have underscore prefix conventionally
    function _createZombie(string memory _name, uint _dna) private {
        zombies.push(Zombie(_name, _dna)); //push a Zombie with given values to the array
    }
    
    //Function modifiers
    //view: only viewing data not modifying
    //pure: no accessing data
    
    //view some of our contract's variables but not modify
    function _generateRandomDna(string memory _str) private view returns (uint){

    } 

}
