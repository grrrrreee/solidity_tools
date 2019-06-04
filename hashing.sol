pragma solidity ^ 0.5.0;

contract hashing {
    uint public index; 
    
    function hash (string memory word) public returns(bytes32) {
        
        bytes32 hash_result = keccak256(abi.encodePacked(index, word));
        
        index ++;
        
        return hash_result;
    }
}