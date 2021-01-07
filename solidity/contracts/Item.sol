pragma solidity ^0.4.24;

contract Item is ERC721{
    
    struct Item{
        uint id;
        uint individual_id;
        uint text_part;
        string job_title;
        string name;
        string surname; 
        string fulltext; 
        string lang;
        string start_date;  
        string end_date; 
        uint duration; 
        uint rank;
        string country_code;
        string region;
        string company;

    }
    
    Item[] public items; // First Item has Index 0
    address public owner;
    
    function Item() public {
        owner = msg.sender; // The Sender is the Owner; Ethereum Address of the Owner
    }
    
    function createItem(string _name, address _to) public{
        require(owner == msg.sender); // Only the Owner can create Items
        uint id = items.length; // Item ID = Length of the Array Items
        items.push(Item(_name,5,1)) // Item ("Sword",5,1)
        _mint(_to,id); // Assigns the Token to the Ethereum Address that is specified
    }
    
}