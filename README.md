# Password Strength Tester

A PowerShell script to evaluate the strength of passwords based on their length, complexity, and comparison against a list of common weak passwords. This tool is perfect for understanding password security and ensuring strong password practices.

---

## Features
- **Length Analysis**: Evaluates password length and assigns points accordingly.
- **Complexity Check**: Checks for uppercase letters, lowercase letters, numbers, and special characters.
- **Common Password Detection**: Compares the password against a predefined list of weak passwords.
- **Feedback**: Provides a score and recommendations for improvement.

---

## How It Works
The script analyzes the entered password by:
1. Checking its length (short, medium, or long).
2. Evaluating its complexity (presence of uppercase, lowercase, numbers, and special characters).
3. Checking if it matches any password in a common weak password list.
4. Displaying a score and a password strength rating (Weak, Medium, Strong).

---

## Requirements
- **PowerShell**: The script is compatible with Windows PowerShell and PowerShell Core (cross-platform).

---

## How to Use

### Option 1: Clone the Repository
1. Clone this repository to your local machine:
   ```bash
   git clone https://github.com/Manish041998/Password-Strength-Tester.git
