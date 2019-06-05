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
    member[] Member;
    mapping(address => uint) number;
    // 이중 mapping 들어가야 할 듯
    member [] Member_2;
    mapping(address => uint) hash_map;
    
    function hashing(uint _index, address _address, string memory _name, uint _password) public returns(bytes32) {
        
        bytes32 hash_result = keccak256(abi.encodePacked(_index, _address, _name, _password));
        
        return hash_result;
    }
    
    function addmember(uint _index, address _address, string memory _name, uint _password) public returns(bytes32) {
        
        number[_address]; 
        bytes32 hashing_result;
        hashing_result = hashing(_index, _address, _name, _password);
    }
    
}