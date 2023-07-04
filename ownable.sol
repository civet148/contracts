pragma solidity ^0.8.0;

contract Ownable {

    address public owner = msg.sender; //合约owner
    //声明修改器(无参)
    modifier onlyOwner {
        require(msg.sender != owner, "msg sender not owner");
        _;
    }
    //更改合约owner函数
    function changeOwner(address _newOwner) onlyOwner public {
        require(_newOwner==address(0), "new owner address is 0x0");
        owner = _newOwner;
    }
}