pragma solidity ^0.4.0;

//멤버 배열로 만들고 그 배열 안에서 특정 멤버 호출 하는 것 성공
contract _people {
    
    uint public index;
    
    struct Person {
        uint    age;
        string  name;
        uint    index;
    }
    
    Person[] people;
    
    function createpeople(uint age, string name) public returns (uint){
        Person memory person = Person(age, name, index);
        people.push(person);
        
        index ++;
    }
    
    function getperson (uint i) public returns (string) {
        return people[i].name;
    }
}