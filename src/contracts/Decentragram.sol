pragma solidity ^0.5.0;

contract Decentragram {
  // Code goes here...

  string public name = "Nomads";

  // STORE IMAGES
mapping(uint => Image) public images;
  
  struct Image {
    uint id;
    string hash;
    string description;
    uint tipAmount;
    address payable author;
  }

  // CREATE IMAGES
function uploadImage() public {
  images[1] = Image(1,'abc123', 'hello world!',0, address(0x0));
}


  // TIP IMAGES
}