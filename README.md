<p align="center">
    <a href="https://github.com/PowerShell/PowerShell">
      <img width="20%" src="https://github.com/cybersecurity-dev/cybersecurity-dev/blob/main/assets/PowerShell_Logo.png" />
    </a>
</p>

# [PowerShell](https://learn.microsoft.com/powershell/) Toolkit: A Versatile Toolset for Windows

[![Windows](https://custom-icon-badges.demolab.com/badge/Windows-0078D6?style=for-the-badge&logo=windows11&logoColor=white)](https://github.com/cybersecurity-dev/awesome-powershell-scripting-language) [![YouTube](https://img.shields.io/badge/YouTube-%23FF0000.svg?style=for-the-badge&logo=YouTube&logoColor=white)](https://youtube.com/playlist?list=PL9V4Zu3RroiXaZk_Y8215qPHieeH639VA&si=jzE2_cwYKyi8du3O) [![Reddit](https://img.shields.io/badge/Reddit-FF4500?style=for-the-badge&logo=reddit&logoColor=white)](https://www.reddit.com/r/PowerShell/)
<p align="center">
    <a href="https://github.com/cybersecurity-dev/"><img height="25" src="https://github.com/cybersecurity-dev/cybersecurity-dev/blob/main/assets/github.svg" alt="GitHub"></a>
    &nbsp;
    <a href="https://www.youtube.com/@CyberThreatDefence"><img height="25" src="https://github.com/cybersecurity-dev/cybersecurity-dev/blob/main/assets/youtube.svg" alt="YouTube"></a>
    &nbsp;
    <a href="https://cyberthreatdefence.com/my_awesome_lists"><img height="20" src="https://github.com/cybersecurity-dev/cybersecurity-dev/blob/main/assets/blog.svg" alt="My Awesome Lists"></a>
    <img src="https://github.com/cybersecurity-dev/cybersecurity-dev/blob/main/assets/bar.gif">
</p>

## Install [PowerShell](https://github.com/PowerShell/PowerShell) via [winget](https://winget.run/)
```powershell
winget search Microsoft.PowerShell
```
```powershell
winget install --id Microsoft.PowerShell --source winget
```
<img src="https://github.com/cybersecurity-dev/cybersecurity-dev/blob/main/assets/bar.gif">

## Install [Edit](https://github.com/microsoft/edit) via [winget](https://winget.run/)

```powershell
winget search Microsoft.Edit
```
```powershell
winget install --id Microsoft.Edit --source winget
```
<img src="https://github.com/cybersecurity-dev/cybersecurity-dev/blob/main/assets/bar.gif">

## Install [OpenSSH](https://www.openssh.com/) via [winget](https://winget.run/)

```powershell
winget search Microsoft.OpenSSH
```
```powershell
winget install --id Microsoft.OpenSSH.Preview --source winget
```
<img src="https://github.com/cybersecurity-dev/cybersecurity-dev/blob/main/assets/bar.gif">

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
<img src="https://github.com/cybersecurity-dev/cybersecurity-dev/blob/main/assets/bar.gif">

## Listen Radio
```powershell
$mediaPlayer = New-Object system.windows.media.mediaplayer
```
#### [Swiss Classic](https://www.radioswissclassic.ch/en)
```powershell
$mediaPlayer.open('https://stream.srg-ssr.ch/srgssr/rsc_de/mp3/128')
```
```powershell
$mediaPlayer.open('https://stream.srg-ssr.ch/srgssr/rsc_fr/mp3/128')
```
#### [Swiss Jazz](https://www.radioswissjazz.ch/en/)
```powershell
$mediaPlayer.open('https://stream.srg-ssr.ch/srgssr/rsj/mp3/128')
```
#### [Swiss Pop](https://www.radioswisspop.ch/en)
```powershell
$mediaPlayer.open('https://stream.srg-ssr.ch/srgssr/rsp/mp3/128')
```
#### Play-Pause
```powershell
$mediaPlayer.Play()
```
```powershell
$mediaPlayer.Pause()
```
## Install Applications via Windows Package Manager
### Programming Language
* [![C](https://img.shields.io/badge/C-00599C?logo=c&logoColor=white)](#) [![C++](https://img.shields.io/badge/C++-%2300599C.svg?logo=c%2B%2B&logoColor=white)](#) <a id="install-c-cpp"></a>
  * MSVC 
      ```powershell
      winget install -e --id Microsoft.VisualStudio.2022.BuildTools
      ```
   * LLVM 
     ```powershell
     winget install -e --id LLVM.LLVM
     ```  
   * GCC via Cygwin
     ```powershell
     winget install -e --id Cygwin.Cygwin 
     ```
* [![Go](https://img.shields.io/badge/Go-%2300ADD8.svg?&logo=go&logoColor=white)](#) <a id="install-go"></a>
  ```powershell
  winget install -e --id GoLang.Go
  ```
* [![Python](https://img.shields.io/badge/Python-3776AB?logo=python&logoColor=fff)](#) <a id="install-python"></a>
  ```powershell
  winget install -e --id Python.Python.3.11
  ```
* [![Rust](https://img.shields.io/badge/Rust-%23000000.svg?e&logo=rust&logoColor=white)](#) <a id="install-rust"></a>
  ```powershell
  winget install -e --id Rustlang.Rust.GNU
  ```
  ```powershell
  winget install -e --id Rustlang.Rust.MSVC
  ```

### IDEs
```powershell
winget install -e --id JetBrains.PyCharm.Community
```
```powershell
winget install -e --id JetBrains.IntelliJIDEA.Community
```
### Development Tools
```powershell
winget install -e --id KDE.Kate
```
```powershell
winget install -e --id KDE.kdevelop
```
```powershell
winget install -e --id KDE.KDiff3
```
```powershell
winget install -e --id JFrog.Conan
```
```powershell
winget install -e --id Anaconda.Miniconda3
```
```powershell
winget install -e --id Anaconda.Anaconda3
```
```powershell
winget install -e --id SublimeHQ.SublimeText.4
```
```powershell
winget install -e --id Notepad++.Notepad++
```
```powershell
winget install -e --id Cppcheck.Cppcheck
```
```powershell
winget install -e --id Neovim.Neovim
```
```powershell
winget install -e --id dbeaver.dbeaver
```
### Browsers
```powershell
winget install -e --id LibreWolf.LibreWolf
```
```powershell
winget install -e --id Huawei.HuaweiBrowser
```
```powershell
winget install -e --id TorProject.TorBrowser
```
```powershell
winget install -e --id Brave.Brave
```
```powershell
winget install -e --id Yandex.Browser
```
```powershell
winget install -e --id Maxthon.Maxthon.6
```
```powershell
winget install -e --id=Vivaldi.Vivaldi
```
### Instant Messaging
```powershell
winget install -e --id WhatsApp.WhatsApp
```
```powershell
winget install -e --id Kakao.KakaoTalk
```
```powershell
winget install -e --id OpenWhisperSystems.Signal
```
```powershell
winget install -e --id Microsoft.Teams
```
```powershell
winget install -e --id TeamSpeakSystems.TeamSpeakClient
```
### Others
```powershell
winget install -e --id Ghisler.TotalCommander
```
```powershell
winget install -e --id KDE.kile
```
```powershell
winget install -e --id KDE.Kdenlive
```
```powershell
winget install -e --id KDE.Amarok
```
```powershell
winget install -e --id KDE.KStars
```
```powershell
winget install -e --id KDE.kmymoney
```
```powershell
winget install -e --id CPUID.CPU-Z
```
```powershell
winget install -e --id Intel.ProcessorDiagnosticTool
```
```powershell
winget install -e --id Intel.Iometer
```
```powershell
winget install -e --id AMD.OCAT
```
```powershell
winget install -e --id OBSProject.OBSStudio
```
```powershell
winget install -e --id Obsidian.Obsidian
```
```powershell
winget install -e --id RoyalApps.RoyalTS.7
```
