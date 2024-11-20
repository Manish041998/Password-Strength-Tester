
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
   ```
2. Navigate to the repository directory:
   ```bash
   cd Password-Strength-Tester
   ```
3. Run the script in PowerShell:
   ```powershell
   .\PasswordStrengthTester.ps1
   ```

### Option 2: Download the Script
1. Download the `PasswordStrengthTester.ps1` file from the repository.
2. Open a terminal in the script's directory and run:
   ```powershell
   .\PasswordStrengthTester.ps1
   ```

---

### Example

Here’s how the script behaves when executed:

#### Input:
```plaintext
Enter a password to test: P@ssw0rd
```

#### Output:
```plaintext
Password Analysis:
 - Length: 8 characters (2 points)
 - Complexity: 3 points (Uppercase, Lowercase, Numbers, Special Characters)
Password Strength: Medium
```

---

### File Contents

- `PasswordStrengthTester.ps1`: The main PowerShell script that evaluates password strength.

---

## Contribution
Contributions are welcome! If you have ideas to enhance the script, feel free to:
1. Fork the repository.
2. Create a feature branch:
   ```bash
   git checkout -b feature-new-enhancement
   ```
3. Submit a pull request with detailed information about the change.

---

## License
This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

---

## Author
[Manish041998](https://github.com/Manish041998)

---

![PowerShell](https://img.shields.io/badge/PowerShell-Framework-blue?logo=powershell)
![License](https://img.shields.io/badge/license-MIT-green)
