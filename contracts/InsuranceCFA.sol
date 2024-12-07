pragma solidity ^0.8.0;

contract InsuranceCFA {
   
    struct Owner {
        address owner; 
        uint256 balance; 
    }

    
    mapping(address => Owner) public owners;

    uint256 public totalSupply = 1000;

    function issueTokens(uint256 amount, uint256 price) public {
        require(msg.sender == insuranceCompanyAddress); 
        totalSupply += amount; 

        
        owners[msg.sender].balance += amount * price;
    }

    function buy(uint256 amount) public payable {
        require(msg.value >= amount * 1 ether
        if (investorAddress == msg.sender) { 
            owners[msg.sender].balance += amount; 
            totalSupply -= amount; 
        } else {
            revert("Только инвесторы могут покупать ЦФА.");
        }
    }

    function payInterest() public {
        for (uint i = 0; i < owners.length; i++) {
            if (owners[i].owner != insuranceCompanyAddress) {
                owners[i].balance += interestAmount; 
            }
        }
    }

    function returnPrincipal() public {
        for (uint i = 0; i < owners.length; i++) {
            if (owners[i].owner != insuranceCompanyAddress) {
                owners[i].balance = principalAmount; 
            }
        }
    }

    function receivePremiums() public payable {
        insuranceCompanyAddress.transfer(msg.value); 
    }


    function claimInsurance() public {
        
        

        clientAddress.transfer(insuranceAmount);
    }

    function getUnusedPremiums() public onlyOwner {
        insuranceCompanyAddress.transfer(unusedPremiums);
    }
}
