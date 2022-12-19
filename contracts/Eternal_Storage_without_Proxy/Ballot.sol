//SPDX-License-Identifier: MIT

pragma solidity 0.8.17;
import "./BallotLib.sol";

contract Ballot1 {
    using ballotLib1 for address;
    address eternalStorage;

    constructor(address _eternalStorage) {
        eternalStorage = _eternalStorage;
    }

    function getNumberOfVotes() public view returns(uint) {
        console.log("address of EOA(owner)",msg.sender);
        return eternalStorage.getNumberOfVotes();
    }

    function vote() public {
        // require(eternalStorage.getUserHasVoted() == false, "ERR_USER_ALREADY_VOTED");
        // eternalStorage.setUserHasVoted();
        eternalStorage.setVoteCount(eternalStorage.getNumberOfVotes() + 1);

    }
}


contract Ballot2 {
    using ballotLib2 for address;
    address eternalStorage;

    constructor(address _eternalStorage) {
        eternalStorage = _eternalStorage;
    }

    function getNumberOfVotes() public view returns(uint) {
        return eternalStorage.getNumberOfVotes();
    }

    function vote() public {
        require(eternalStorage.getUserHasVoted() == false, "ERR_USER_ALREADY_VOTED");
        eternalStorage.setUserHasVoted();
        eternalStorage.setVoteCount(eternalStorage.getNumberOfVotes() + 1);

    }
}


// This is a simple voting Smart Contract. You call vote() and increase a number - pretty basic business logic. Under the hood is the magic.
