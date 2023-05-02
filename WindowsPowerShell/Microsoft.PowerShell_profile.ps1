oh-my-posh init powershell --config 'https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/main/themes/M365Princess.omp.json' | Invoke-Expression
Set-PSReadlineOption -PredictionSource History
Set-PSReadLineKeyHandler Tab -Function MenuComplete
$Colors = @{
  "Command"            = "$([char]0x1b)[93m"
  "Comment"            = "$([char]0x1b)[32m"
  "ContinuationPrompt" = "$([char]0x1b)[90m"
  "Default"            = "$([char]0x1b)[30m"
  "Emphasis"           = "$([char]0x1b)[96m"
  "Error"              = "$([char]0x1b)[91m"
  "Keyword"            = "$([char]0x1b)[92m"
  "Member"             = "$([char]0x1b)[90m"
  "Number"             = "$([char]0x1b)[90m"
  "Operator"           = "$([char]0x1b)[90;1m"
  "Parameter"          = "$([char]0x1b)[90;1m"
  "Selection"          = "$([char]0x1b)[37;40m"
  "String"             = "$([char]0x1b)[36m"
  "Type"               = "$([char]0x1b)[30m"
  "Variable"           = "$([char]0x1b)[92m"
}
Set-PSReadlineOption -Colors $Colors
Import-Module Terminal-Icons
Import-Module posh-git

# Chocolatey profile
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile))
{
  Import-Module "$ChocolateyProfile"
}
