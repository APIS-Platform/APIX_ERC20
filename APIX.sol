pragma solidity ^0.5.0;

import "./ERC20.sol";
import "./ERC20Detailed.sol";

contract APIX is ERC20, ERC20Detailed {
    
    constructor (string memory name, string memory symbol, uint256 totalSupply, address storeAddress) 
    ERC20Detailed(name, symbol, 18) public {
        require(storeAddress != address(0), "ERC20: zero address cannot store APIX");
        
        // 100 APIS : 1 APIX
        _mint(storeAddress, totalSupply * (10 ** 16));
    }
}