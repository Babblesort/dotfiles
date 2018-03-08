Import-Module posh-git
Import-Module PSColor
Start-SshAgent -Quiet

Set-Alias l ls
Set-Alias ll ls
Set-Alias c cls

function dev { Set-Location c:\projects }
