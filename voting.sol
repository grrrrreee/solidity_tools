pragma solidity ^0.5.0;

contract voting_making {
    
    
    struct voter {
        uint        index;
        address     v_address;
        string      name;
        bool        voted; // 이 부분은 나중에 따로 생각해봐야 함
    }
    
    mapping (address => uint)      _member;
    mapping (uint => proposal)      _vote;
    
    voter[] people;
    proposal [] proposals;
    
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
    
    // 일단 제안자 이름도 input 값으로 넣기는 함
    function create_proposal(uint p_index, address p_address, string memory _name, string memory p_name) public {
        
        proposal memory _propsal = proposal(p_index, p_address, p_name, _name, 0, 0, 0 );
        proposals.push(_propsal);
        
        _vote[p_index]; // 얘도 정확히 어떻게 해야할지 모르겟음
        p_index ++ ; 
    }

}

pragma solidity ^0.5.0;

contract voting is voting_making {
    
    //아니 근데 view 함수가 뭐야?
    function send_voting(address v_address) public view {
        v_address = msg.sender;
    }
    
    //아니 근데 왜 pure 로 하라고 하는거야?
    //한참은 더 발전 시켜야 함
    function counting(bool decision, uint agree_count , uint dagree_count) public pure returns(uint, uint){
        if (decision == true) {
            agree_count ++;
        }
        else {
            dagree_count ++;
        }
        
        return(agree_count , dagree_count);
    }
    
}