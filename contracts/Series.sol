// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

import 'openzeppelin-solidity/contracts/access/Ownable.sol';

contract Series is Ownable {
  string public title;
  uint public pledgePerEpisode;
  uint public minimumPublicationPeriod;

  constructor(string _title, uint _pledgePerEpisode, uint _minimumPublicationPeriod) public {
    owner = msg.sender;
    title = _title;
    pledgePerEpisode = _pledgePerEpisode;
    minimumPublicationPeriod = _minimumPublicationPeriod;
  }

  function pledge() public payable {
  }

  function withdraw() public {
  }

  function publishing(string episodeLink) public onlyOwner {
  }

  function close() public onlyOwner {
  }

}
