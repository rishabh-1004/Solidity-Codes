pragma solidity ^0.4.0;

import 'browser/library.sol'; 

contract TestLibrary{
    using IntExtended for uint;
    
    function testIncremnt(uint _base) returns (uint){
        return IntExtended.increment(_base);
    }
    
    function testDecrement(uint _base) returns (uint){
        return _base.decrement();
    }
    
    function testIncremntByValue(uint _base, uint _value) returns (uint){
        return _base.incrementByValue(_value);
    }
    function testDecremntByValue(uint _base , uint _value) returns (uint){
        return _base.decrementByValue(_value);
    }
}