pragma solidity ^0.4.17;

contract Adoption {
    address[16] public adopters;
    address owner;

    function Adoption(address initOwner) public {
        if (initOwner != 0x0000000000000000000000000000000000000000) {
            owner = initOwner;
        }else {
            owner = msg.sender;
        }
    }

    function adopt(uint petId) public returns (uint) {
        require(petId >= 0 && petId <= 15);

        adopters[petId] = msg.sender;

        return petId;
    }

    function getAdopters() public view returns (address[16]) {
        return adopters;

    }

}