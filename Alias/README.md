# Powershell Alias

## Useful "aliases"

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
## Add function

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

## Apply Immediately:

```powershell
. $PROFILE
#if you got error:
Set-ExecutionPolicy -Scope CurrentUser RemoteSigned
. $PROFILE
```
