pragma solidity ^0.4.0; 

contract mortal {
    address proprietario;
    
        modifier onlyowner() {
        if(proprietario == msg.sender) {
            _;
        }else{
            throw;
        }
    }
    
    function mortal() {
        proprietario = msg.sender;
    }
    
    function kill() onlyowner {
        suicide(proprietario);
    }
}
