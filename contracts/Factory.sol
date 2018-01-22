pragma solidity ^0.4.17;
import "./Adoption.sol";

contract Factory {
    function createNewAdoption() public returns(address created) {
        Adoption a = new Adoption(msg.sender);
        return a;
    }
}
