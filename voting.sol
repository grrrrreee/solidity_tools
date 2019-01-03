pragma solidity ^0.5.0;

contract voting {
    
    
    struct voter {
        uint        index;
        address     v_address;
        string      name;
        bool        voted; // 이 부분은 나중에 따로 생각해봐야 함
    }
    
    mapping (address => uint)      _member;
    mapping (uint => proposal)      _vote;
    
    voter[] people;
    
    function create_people(uint index, address v_address, string memory name) public {
        
        voter memory person = voter(index, v_address, name, false);
        people.push(person);
        
        _member[msg.sender] = index;
        index ++ ; 
    }
    
    struct proposal {
        uint        p_index;
        address     p_address;  // 이 부분은 나중에 따로 생각해봐야 함
        string      p_name;     // 투표 이름
        string      _name;      // 제안자 이름
        uint        voted;
        uint        agree;
        uint        disagree;
    }

}