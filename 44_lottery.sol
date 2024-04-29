// SPDX-License-Identifier: MIT
pragma solidity >0.8.0;

contract Lottery {
    
    address public manager;
    address payable[] public players;

    constructor() {
        manager = msg.sender;
    }

    function alreadyEntered() public view returns (bool) {
        for (uint i=0; i<players.length; i++) 
        {
            if(players[i] == msg.sender){
                return true;
            }
        }
        return false;
    }

    function enter() public payable  {
        require(msg.sender != manager, "Manger Cannot Enter");
        require(alreadyEntered() == false, "Player Cannot enter more than once");
        require(msg.value >= 1 ether, "Must need to pay Minimum Fee");
        players.push(payable(msg.sender));
    }

    function random() public view returns (uint) {
        return uint( sha256( abi.encodePacked(blockhash(block.number), players) ) );
    }

    function pickWinner() public returns (string memory)  {
        require(msg.sender == manager, "Only manager can select winner");
        uint index = random()%players.length;
        address contractAddress = address(this);
        players[index].transfer(contractAddress.balance);
        return string(abi.encodePacked("Winner is ", players[index]));
    }

    function restartContract() public {
        players = new address payable[](0);
    }

    function getPlayers() view public returns (address payable [] memory)  {
        return players;
    }

}
