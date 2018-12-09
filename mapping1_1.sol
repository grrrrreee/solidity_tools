pragma solidity ^0.4.0;

contract mapping1_1 {
    
    uint public index;
    struct Person {
        uint    age;
        string  name;
        uint    index;
    }
    
    Person[] people;
    mapping(string => uint) number;
    
    function createpeople(uint age, string name) public returns (uint){
        Person memory person = Person(age, name, index);
        people.push(person);
        
        number[name] = index;
        
        index ++;
    }
    
    function get(string name) public constant returns (uint) {
        return number[name];
    }
    
}