pragma solidity ^0.4.0;

contract Transaction{
    
    event SenderLogger(address);
    event ValueLogger(uint);
    
    address private owner;
    
    modifier isOwner{
        require (owner == msg.sender);
        _;
    }
    
    modifier validValue{
        assert(msg.value >= 1 ether);
        _;
    }
    
    function Transaction(){
        msg.sender;
    }
    
    function () payable{
        SenderLogger(msg.sender);
        ValueLogger(msg.value);
    }
    
}