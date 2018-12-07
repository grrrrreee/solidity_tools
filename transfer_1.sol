pragma solidity ^0.4.0;
pragma experimental ABIEncoderV2;

contract transfer_1 {
    
    uint public index;
    
    struct Person {
        uint        age;
        address     p_account;
        string      name;
        uint        index;
        uint        amount;
    }

    Person[] people;
    
    function createpeople(uint age, string name, uint amount) public returns (uint){
        address p_account;
        p_account = msg.sender;
        Person memory person = Person(age, p_account, name, index, amount);
        people.push(person);
        
        index ++;
    }
    
    function getperson (uint i) public returns (uint, address, string, uint, uint) {
        return (people[i].age, people[i].p_account, people[i].name, people[i].index, people[i].amount);
    }
    
    mapping(address => Person) public person_account;
    
    //working on remix but have some errors in VS code
    function transfer(uint i, uint j, uint _amount, uint amount_1, uint amount_2) public 
    returns (uint, uint)
    {
        amount_1 = people[i].amount;
        amount_2 = people[j].amount;
        
        amount_1 = amount_1 + _amount;
        amount_2 = amount_2 - _amount;
        
        return (amount_1, amount_2);
    }
    
}