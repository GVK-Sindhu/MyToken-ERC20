# MyToken (MTK) — ERC-20 Token Project

## Overview
MyToken (MTK) is a fully functional ERC-20 token implemented in Solidity for educational purposes.  
This project demonstrates how cryptocurrency tokens work on the Ethereum blockchain, including token creation, balance tracking, transfers, allowances, and event logging.

The token follows the **ERC-20 standard**, enabling compatibility with wallets, exchanges, and other smart contracts.

---

##  Token Details
| Property      | Value                     |
|---------------|---------------------------|
| **Name**      | MyToken                   |
| **Symbol**    | MTK                       |
| **Decimals**  | 18                        |
| **Total Supply** | 1,000,000 MTK (1e6 × 10¹⁸) |
| **Standard**  | ERC-20                    |
| **Network Used for Testing** | Remix VM (Prague/London) |

---

##  What Is ERC-20?
ERC-20 is the **Ethereum token standard** that defines a common interface for fungible tokens.  
It ensures that all tokens behave in a predictable way by implementing functions like:

- `balanceOf`
- `transfer`
- `approve`
- `transferFrom`
- `allowance`

It also requires emitting:
- `Transfer` events
- `Approval` events  

This allows tokens to be easily integrated into decentralised applications, wallets, and exchanges.

---

##  Features Implemented (Meets All Requirements)

###  Core ERC-20 Functions
- `balanceOf(address)`  
- `transfer(address _to, uint256 _value)`  
- `approve(address _spender, uint256 _value)`  
- `transferFrom(address _from, address _to, uint256 _value)`  
- `allowance(address owner, address spender)`

###  Event Emissions
- `Transfer` emitted on all token transfers  
- `Approval` emitted on allowance updates  

###  Validations & Security
- Prevents transfers to zero address  
- Verifies sufficient balance  
- Verifies allowance before transferFrom  
- Uses Solidity **0.8.x**, which has built-in overflow protection  

###  Code Quality
- Clean variable names  
- Comments explaining logic  
- Simple, beginner-friendly structure  

---

## 🧩 Project Structure
