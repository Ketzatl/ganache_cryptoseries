// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

// Taper dans la console avant : npm install -E openzeppelin-solidity
import 'openzeppelin-solidity/contracts/access/Ownable.sol';
// Il suffira de rajouter "is Ownable" en début de contrat pour signifier qu'il s'étend sur tout le contrat

contract Series is Ownable {
  string public title;
  uint public pledgePerEpisode;
  uint public minimumPublicationPeriod;

  //address owner;      // A supprimer, plus nécessaire depuis la mise en place de "is Ownable"

  // On déclare le Modifier :         // Plus nécessaire, avec "is Owner" !!
  //modifier onlyOwner() {
    //require(msg.sender == owner);
    //_;    // Ces 2 caractères représentent le Code ou la fonction sur lesquels porteront les modifications
  //}       // Il Faudra simplement placer "onlyOwner" au début des fonctions ou cela est nécessaire

  constructor(string _title, uint _pledgePerEpisode, uint _minimumPublicationPeriod) public {
    // Enregistre le propriétaire du contrat, cela ne pourra être modifié après le déploiement du contrat
    // owner = msg.sender;        // Plus nécessaire, avec "is Owner" !!
    title = _title;
    pledgePerEpisode = _pledgePerEpisode;
    minimumPublicationPeriod = _minimumPublicationPeriod;
  }

  // Fonction qui permet à des contributeurs d'envoyer des fonds en gage vers un contrat,
  // afin de permettre la réalisation de futurs épisodes
  function pledge() public payable {
  }

  function withdraw() public {
  }

  function publishing(string episodeLink) public onlyOwner {
    //require(msg.sender == owner); // 1ère Méthode : Vérifie que la personne qui lance cette fonction est bien le propriétaire du contrat
  }

  // Fonction qui permet au réalisateur (UNIQUEMENT !!) de mettre fin à la Série :
  //        - Désactive le contrat
  //        - Renvoie les fonds restants aux contributeures
  function close() public onlyOwner {
    //require(msg.sender == owner); // Plus nécessaire avec l'utilisation du "onlyOwner" !!
  }

}

// A Taper dans la console :
// Création de contract : truffle create contract NomDuContrat
