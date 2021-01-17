// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract Series {
  string public title;
  uint public pledgePerEpisode;
  uint public minimumPublicationPeriod;

  constructor(string _title, uint _pledgePerEpisode, uint _minimumPublicationPeriod) public {
    title = _title;
    pledgePerEpisode = _pledgePerEpisode;
    minimumPublicationPeriod = _minimumPublicationPeriod;
  }
}
