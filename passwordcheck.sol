pragma solidity ^ 0.5.0;

contract Registration {
    
    uint public index;
    //멤버의 구조
    struct member {
        uint            index;
        address         _address;
        string          _name;
        uint            _hash;
    }
    
    //해시의 결과값과 멤버의 index 를 mapping 할 예정 
    
    function hashing(uint _index, address _address, string memory _name, uint _password) public {
        
    }
    
    function addmember(uint _index, address _address, string memory _name, uint _password) public {
        
    }
}