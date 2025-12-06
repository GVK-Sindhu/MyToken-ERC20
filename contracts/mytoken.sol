// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyToken {

    // Token metadata
    string public name = "MyToken";
    string public symbol = "MTK";
    uint8 public decimals = 18;

    uint256 public totalSupply;

    // Balances mapping
    mapping(address => uint256) public balanceOf;

    // Allowance mapping
    mapping(address => mapping(address => uint256)) public allowance;

    // Events
    event Transfer(address indexed from, address indexed to, uint256 value);
   …nsferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
        require(_to != address(0), "Cannot transfer to zero address");
        require(balanceOf[_from] >= _value, "Insufficient balance");
        require(allowance[_from][msg.sender] >= _value, "Insufficient allowance");

        balanceOf[_from] -= _value;
        balanceOf[_to] += _value;
        allowance[_from][msg.sender] -= _value;

        emit Transfer(_from, _to, _value);
        return true;
    }
}