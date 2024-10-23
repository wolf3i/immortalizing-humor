// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Humor {
    event QuoteImmortalized(
        string quote,
        address indexed addressAuthor,
        string author,
        string info
    );

    event AuthorAddressUpdated(
        string quote,
        address indexed addressAuthor,
        string author,
        string info,
        address indexed oldAddressAuthor
    );

    event InfoUpdated(
        string quote,
        address indexed addressAuthor,
        string author,
        string info
    );

    string public quote = "Humor is an art and an/my armor";
    address public addressAuthor;
    string public author = "wolf3i";
    string public info =
        "This insight struck me in a dream while I was in Innsbruck for the 2023/2024 New Year's celebration. It encapsulates how I use humor as a shield to guard against emotional turmoil.";

    constructor() {
        addressAuthor = msg.sender;
        emit QuoteImmortalized(quote, addressAuthor, author, info);
    }

    function updateAuthorAddress(address newAddress) public {
        require(msg.sender == addressAuthor, "You are not the author");
        addressAuthor = newAddress;
        emit AuthorAddressUpdated(
            quote,
            addressAuthor,
            author,
            info,
            msg.sender
        );
    }

    function updateInfo(string calldata newInfo) public {
        require(msg.sender == addressAuthor, "You are not the author.");
        info = newInfo;
        emit InfoUpdated(quote, addressAuthor, author, info);
    }
}
