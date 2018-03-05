pragma solidity ^0.4.0;

contract DataTypes{
    bool mybool = false;
    int256 myInt = -128; 
    uint256 myUint = 255;
    string myString;
    uint8[] myStringArr;
    
    byte myValue;
    bytes1 myBytes1;
    bytes32 myBytes32;
    
//    fixed256x8 myFixed= 1;
    
    enum Action  {ADD,REMOVE,UPDATE}
    Action myAction = Action.ADD;
    
    address myAddress;
    
    function assignAddress () public{
        myAddress= msg.sender;
        myAddress.balance;
        myAddress.transfer(10);
    }
    uint[] myIntArr = [1,2,3];
    
    function arrfunc() {
        myIntArr.push(1);
        myIntArr.length;
    }
    uint[10] myFixedArr;
    
    struct Account {
        uint balance;
        uint dailylimit;
    }
    Account myAccount;
    
    function structfunc(){
        myAccount.balance = 100;
    }
    mapping(address => Account) _accounts;
    
    function () payable{
        _accounts[msg.sender].balance += msg.value; 
    }
    
    function getBalance() returns (uint){
        return _accounts[msg.sender].balance;
    }
    
}