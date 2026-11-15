// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract MyCustomCoin is ERC20 {
    // কয়েনের নাম এবং সিম্বল এখানে সেট করুন
    constructor(uint256 initialSupply) ERC20("Amar Coin", "AMC") {
        // ১০^১৮ দিয়ে গুণ করা হয় কারণ ক্রিপ্টোতে ১৮ ঘর দশমিক (Decimals) থাকে
        _mint(msg.sender, initialSupply * (10 ** decimals()));
    }
}
