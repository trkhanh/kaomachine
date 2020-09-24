# To make it permanent, put this command into C:\Users\[User]\Documents\WindowsPowerShell\profile.ps1.
# OR generate by "new-item $profile -itemtype file -forc"

# How to make PowerShell tab completion work like Bash
Set-PSReadlineKeyHandler -Key Tab -Function Complete