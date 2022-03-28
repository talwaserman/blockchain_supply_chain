// ----------------------------------------------------------------------------
// ERC Token Standard #20 Interface
// https://github.com/ethereum/EIPs/blob/master/EIPS/eip-20.md
// ----------------------------------------------------------------------------
pragma solidity >=0.4.21 <0.6.0;

contract ERC20Interface {
    uint256 public totSupply;
    
    function totalSupply() public view returns (uint);
    function balanceOf(address tokenOwner) public view returns (uint balance);
    function allowance(address tokenOwner, address spender) public view returns (uint remaining);
    function transfer(address to, uint tokens) public returns (bool success);
    function approve(address spender, uint tokens) public returns (bool success);
    function transferFrom(address from, address to, uint tokens) public returns (bool success);
    
    // Defines the transfer of tokens from one account to another account
    event Transfer(address indexed from, address indexed to, uint tokens);
    // Returns the token owner address, the spender address and the number of tokens
    event Approval(address indexed tokenOwner, address indexed spender, uint tokens);
}