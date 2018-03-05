pragma solidity ^0.4.0;

interface ERC20{
    function totalSupply() constant returns (uint _totalSupply);
    function balanceOf(address _owner) constant returns (uint balance);
}