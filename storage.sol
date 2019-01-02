pragma solidity  ^ 0.5.0;

//simple storage
contract SimpleStorage{
    uint storedData;

    function set(uint x) public {
        storedData = x;
    }

    function get() public view returns (uint){
        return storedData;
    }

}