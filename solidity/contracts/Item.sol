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
    
    function createItem(string _name,uint _id,uint _individual_id,uint _text_part,string _job_title,string _surname,string _fulltext,string _lang, string _start_date,string _end_date,uint _duration,uint _rank,string _country_code,string _region,string _company, address _to) public{
        require(owner == msg.sender); // Only the Owner can create Items
        uint id = items.length; // Item ID = Length of the Array Items
        items.push(Item(_id,_individual_id,_text_part,_job_title,_name,_surname,_fulltext,_lang,_start_date,_end_date,_duration,_rank,_country_code,_region,_company)); 
        _mint(_to,id); // Assigns the Token to the Ethereum Address that is specified
    }
    
}