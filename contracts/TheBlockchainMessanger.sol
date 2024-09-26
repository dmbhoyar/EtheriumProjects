// SPDX-License-Identifier: MIT

pragma solidity ^0.8.15;

contract BasicMessanger{

    uint public msgcounter;
    address public owner;
    string public mymsg;

    constructor(){
        owner=msg.sender;
    }

    function UpdateMymsg(string memory _mymsg) public{
        if(msg.sender==owner){
            mymsg = _mymsg;
            msgcounter++;
        }
    }
}
