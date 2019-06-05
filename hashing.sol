pragma solidity ^ 0.5.0;

contract hashing1 {
    uint public index; 
    
    function hash (string memory word) public returns(bytes32) {
        
        bytes32 hash_result = keccak256(abi.encodePacked(index, word));
        
        index ++;
        
        return hash_result;
    }
}

contract hashing2 {
    uint public index; 
    
    function hash (string memory word) public returns(bytes32) {
        
        bytes32 hash_result = sha256(abi.encodePacked(index, word));
        
        index ++;
        
        return hash_result;
    }
}