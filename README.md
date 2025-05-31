# [PowerShell](https://learn.microsoft.com/en-us/powershell/) Toolkit: A Versatile Toolset for Windows
![PowerShell](https://img.shields.io/badge/PowerShell-%235391FE.svg?style=for-the-badge&logo=powershell&logoColor=white)
![Windows Terminal](https://img.shields.io/badge/Windows%20Terminal-%234D4D4D.svg?style=for-the-badge&logo=windows-terminal&logoColor=white)

## Install [PowerShell](https://github.com/PowerShell/PowerShell)
```powershell
winget search Microsoft.PowerShell
```
```powershell
winget install --id Microsoft.PowerShell --source winget
```
## Install [Edit](https://github.com/microsoft/edit)

```powershell
winget search Microsoft.Edit
```
```powershell
winget install --id Microsoft.Edit --source winget
```
## Install [OpenSSH](https://www.openssh.com/)

```powershell
winget search Microsoft.OpenSSH
```
```powershell
winget install --id Microsoft.OpenSSH.Preview --source winget
```

## SSH Operations
Get Services Status:
```powershell
Get-Service -Name *ssh*
```
Restart SSH services
```powershell
Get-Service -Name sshd|Restrat-Service -force
```

Check SSH Services Start Type
```powershell
Get-Service -Name sshd | Select StartType
```

Set SSH Services Startup Type
```powershell
Get-Service -Name sshd | Set-Service -StartupType Automatic
```

