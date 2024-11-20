# Load common passwords from an external source
$commonPasswords = @("password", "123456", "123456789", "qwerty", "abc123", "password1", "letmein", "monkey")

# Function to test password strength
function Test-PasswordStrength {
    param (
        [string]$Password
    )

    $lengthScore = 0
    $complexityScore = 0
    $commonPasswordScore = 0

    # Length Score
    if ($Password.Length -ge 12) {
        $lengthScore = 3
    } elseif ($Password.Length -ge 8) {
        $lengthScore = 2
    } else {
        $lengthScore = 1
    }

    # Complexity Score
    if ($Password -match "[A-Z]") { $complexityScore++ } # Uppercase
    if ($Password -match "[a-z]") { $complexityScore++ } # Lowercase
    if ($Password -match "[0-9]") { $complexityScore++ } # Number
    if ($Password -match "[!@#$%^&*(),.?""':{}|<>]") { $complexityScore++ } # Special character

    # Common Password Check
    if ($commonPasswords -contains $Password) {
        $commonPasswordScore = -3
    }

    # Calculate total score
    $totalScore = $lengthScore + $complexityScore + $commonPasswordScore

    # Feedback
    Write-Host "Password Analysis:"
    Write-Host " - Length: $($Password.Length) characters ($lengthScore points)"
    Write-Host " - Complexity: $complexityScore points (Uppercase, Lowercase, Numbers, Special Characters)"
    if ($commonPasswordScore -lt 0) {
        Write-Host " - Common Password Detected! ($commonPasswordScore points)"
    }

    # Final Strength Rating
    if ($totalScore -ge 6) {
        Write-Host "Password Strength: Strong" -ForegroundColor Green
    } elseif ($totalScore -ge 4) {
        Write-Host "Password Strength: Medium" -ForegroundColor Yellow
    } else {
        Write-Host "Password Strength: Weak" -ForegroundColor Red
    }
}

# Prompt user for a password to test
$passwordToTest = Read-Host "Enter a password to test"
Test-PasswordStrength -Password $passwordToTest
