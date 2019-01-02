pragma solidity ^0.5.0;

contract voting {
    
    
    struct voter {
        uint        index;
        address     v_address;
        string      name;
        bool        voted; // 이 부분은 나중에 따로 생각해봐야 함
    }
    
    mapping (address => voter);
    
    struct proposal {
        uint        p_index;
        address     p_address; // 이 부분은 나중에 따로 생각해봐야 함
        string      p_name;
        uint        voted;
        uint        agree;
        uint        disagree;
    }
    
    function create_proposal(string memory _p_name) public {
        v_address = msg.sender;
    }
}