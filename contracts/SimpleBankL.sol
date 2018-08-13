pragma solidity ^0.4.23;

contract SimpleBankL{
    mapping(address => uint) balances;

    function transfer(address _to, uint _amount) external{
        require(balances[msg.sender] >= _amount);
        
        //balances[msg.sender] -= _amount;
        balances[msg.sender] = balances[msg.sender] - _amount;
        
        //balances[_to] += _amount;
        balances[_to] = balances[_to] + _amount;

    }

    function getBalance() public view returns(uint){
        return balances[msg.sender];
    }


    function getBalance(adress _address) internal view returns(uint){
        return balances[_address];
    }




}