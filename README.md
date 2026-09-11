<div align="center">
    <p align="center">
        <a href="https://github.com/PowerShell/PowerShell">
          <img width="15%" src="https://github.com/cybersecurity-dev/cybersecurity-dev/blob/main/assets/PowerShell_Logo.png" />
        </a>
    </p>

# [PowerShell](https://learn.microsoft.com/powershell/) [Toolkit](https://github.com/cybersecurity-dev/awesome-powershell-scripting-resources): A Versatile Toolset for [Windows](https://github.com/cybersecurity-dev/awesome-powershell-scripting-language)
</div>

[![Windows](https://custom-icon-badges.demolab.com/badge/Windows-0078D6?style=for-the-badge&logo=windows11&logoColor=white)](https://github.com/cybersecurity-dev/awesome-powershell-scripting-language) 
[![YouTube](https://img.shields.io/badge/YouTube-%23FF0000.svg?style=for-the-badge&logo=YouTube&logoColor=white)](https://youtube.com/playlist?list=PL9V4Zu3RroiXaZk_Y8215qPHieeH639VA&si=jzE2_cwYKyi8du3O) 
[![Reddit](https://img.shields.io/badge/Reddit-FF4500?style=for-the-badge&logo=reddit&logoColor=white)](https://www.reddit.com/r/PowerShell/new/)

<p align="center">
    <a href="https://github.com/cybersecurity-dev/"><img height="25" src="https://github.com/cybersecurity-dev/cybersecurity-dev/blob/main/assets/github.svg" alt="GitHub"></a>
    &nbsp;
    <a href="https://www.youtube.com/@CyberThreatDefense"><img height="25" src="https://github.com/cybersecurity-dev/cybersecurity-dev/blob/main/assets/youtube.svg" alt="YouTube"></a>
    &nbsp;
    <a href="https://cyberthreatdefence.com/my_awesome_lists"><img height="20" src="https://github.com/cybersecurity-dev/cybersecurity-dev/blob/main/assets/blog.svg" alt="My Awesome Lists"></a>
    <img src="https://github.com/cybersecurity-dev/cybersecurity-dev/blob/main/assets/bar.gif">
</p>

```mermaid
mindmap
  root((PowerShell <br/>Toolkit))

    Language
      PowerShell 7
      Cmdlets
      Functions
      Pipeline

    Development
      VS Code
      PowerShell Extension
      ISE

    Modules
      PSGallery
      Custom Modules
      Manifest

    Testing
      Pester
      Mocking
      Coverage

    Automation
      DSC
      Remoting
      Scheduling

    Cloud
      Azure
      GitHub Actions
      Azure Automation

    Security
      JEA
      Code Signing
      SecretManagement
```

## 📖 Contents
- [My Awesome Lists](#my-awesome-lists)
- [Contributing](#contributing)
- [Contributors](#contributors)

## Network Tools

```powershell
Get-NetConnectionProfile 
Set-NetConnectionProfile -Name "NetworkName" -NetworkCategory Private #(Public)
```

## Add a function

```powershell
notepad $PROFILE
#if you got error:
New-Item -ItemType File -Path $PROFILE -Force
notepad $PROFILE
```
Adding function:
```
function ssh_remoteserver {
    ssh username@remoteserver
}
```
Apply immediately:
```powershell
. $PROFILE
#if you got error:
Set-ExecutionPolicy -Scope CurrentUser RemoteSigned
. $PROFILE
```


## Useful PowerShell "aliases"
* Quick directory listing (like ll in Linux):
    ```powershell
    Set-Alias ll Get-ChildItem
    ```
* Detailed directory listing
    ```powwrshell
    function la { Get-ChildItem -Force }
    ```
* Go up one directory
    ```powershell
    function .. { Set-Location .. }
    ```
* Go up two directories
    ```powershell
    function ... { Set-Location ../.. }
    ```
* Open current folder in Explorer:
    ```powershell
    function open { explorer . }
    ```
* Clear screen:
    ```powershell
    Set-Alias c Clear-Host
    ```

##

### My Awesome Lists
You can access the my awesome lists [here](https://cyberthreatdefence.com/my_awesome_lists)

### Contributing
[Contributions of any kind welcome, just follow the guidelines](contributing.md)!

### Contributors
[Thanks goes to these contributors](https://github.com/cybersecurity-dev/PowerShell-Toolkit/graphs/contributors)!

[🔼 Back to top](#powershell-toolkit-a-versatile-toolset-for-windows)
