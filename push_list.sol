pragma solidity ^0.4.0;

//멤버 배열로 만들고 그 배열 안에서 특정 멤버 호출 하는 것 성공
contract _people {
    
    uint public index;
    
    // 구조 생성
    struct Person {
        uint    age;
        string  name;
        uint    index;
    }
    
    // 구조의 동적배열 생성
    Person[] people;
    
    // 새 구조 생성해서 배열에 넣기
    function createpeople(uint age, string name) public returns (uint){
        Person memory person = Person(age, name, index);
        people.push(person);
        
        index ++;
    }
    
    // 배열 속 구조 반환
    function getperson (uint i) public returns (string) {
        return people[i].name;
    }
}