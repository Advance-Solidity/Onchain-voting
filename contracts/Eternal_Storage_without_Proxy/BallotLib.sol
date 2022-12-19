//SPDX-License-Identifier: MIT

pragma solidity 0.8.17;
import "./Entermal_Storage.sol";
library ballotLib1 {

    function getNumberOfVotes(address _eternalStorage) public view returns (uint256)  {
        console.log("address of caller(should be EOA)",msg.sender);
        return EternalStorage(_eternalStorage).getUIntValue(keccak256('votes'));
    }

    // function getUserHasVoted(address _eternalStorage) public view returns(bool) {
    //     return EternalStorage(_eternalStorage).getBooleanValue(keccak256(abi.encodePacked("voted",msg.sender)));
    // }

    // function setUserHasVoted(address _eternalStorage) public {
    //     EternalStorage(_eternalStorage).setBooleanValue(keccak256(abi.encodePacked("voted",msg.sender)), true);
    // }

    function setVoteCount(address _eternalStorage, uint _voteCount) public {
        EternalStorage(_eternalStorage).setUIntValue(keccak256('votes'), _voteCount);
    }
}


library ballotLib2 {

    function getNumberOfVotes(address _eternalStorage) public view returns (uint256)  {
        return EternalStorage(_eternalStorage).getUIntValue(keccak256('votes'));
    }

    function getUserHasVoted(address _eternalStorage) public view returns(bool) {
        return EternalStorage(_eternalStorage).getBooleanValue(keccak256(abi.encodePacked("voted",msg.sender)));
    }

    function setUserHasVoted(address _eternalStorage) public {
        EternalStorage(_eternalStorage).setBooleanValue(keccak256(abi.encodePacked("voted",msg.sender)), true);
    }

    function setVoteCount(address _eternalStorage, uint _voteCount) public {
        EternalStorage(_eternalStorage).setUIntValue(keccak256('votes'), _voteCount);
    }
}
