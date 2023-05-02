pwsh -Command "New-Item -ItemType SymbolicLink -Path (Split-Path `$PROFILE) -Name (Split-Path `$PROFILE -Leaf) -Value $PSScriptRoot\PowerShell\Microsoft.PowerShell_profile.ps1 -Force"
pwsh -Command "New-Item -ItemType SymbolicLink -Path (Split-Path `$PROFILE) -Name Microsoft.VSCode_profile.ps1 -Value $PSScriptRoot\PowerShell\Microsoft.VSCode_profile.ps1 -Force"
powershell -Command "New-Item -ItemType SymbolicLink -Path (Split-Path `$PROFILE) -Name (Split-Path `$PROFILE -Leaf) -Value $PSScriptRoot\WindowsPowerShell\Microsoft.PowerShell_profile.ps1 -Force"
powershell -Command "New-Item -ItemType SymbolicLink -Path (Split-Path `$PROFILE) -Name Microsoft.VSCode_profile.ps1 -Value $PSScriptRoot\WindowsPowerShell\Microsoft.VSCode_profile.ps1 -Force"
