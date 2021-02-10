pragma solidity ^0.5.0;

contract Decentragram {
  // Code goes here...

  string public name = "Nomads";

  // STORE IMAGES

  uint public imageCount = 0;

mapping(uint => Image) public images;
  
  struct Image {
    uint id;
    string hash;
    string description;
    uint tipAmount;
    address payable author;
  }

  event ImageCreated(
    uint id,
    string hash,
    string description,
    uint tipAmount,
    address payable author
  );

  // CREATE IMAGES
function uploadImage(string memory _imgHash, string memory _description) public {
  // INCREMENT IMAGE ID
  imageCount = imageCount ++;
  // ADD IMAGE TO CONTRACT
  images[1] = Image(imageCount,_imgHash, _description,0, msg.sender);

  // TRIGGER ON EVENT
  emit ImageCreated(imageCount, _imgHash, _description, 0, msg.sender)
}


  // TIP IMAGES
}