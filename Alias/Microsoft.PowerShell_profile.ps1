Set-Alias -Name np -Value C:\Windows\notepad.exe
Set-Alias -Name subl -Value 'C:\Program Files\Sublime Text\sublime_text.exe'
Set-Alias -Name npp -Value 'C:\Program Files\Notepad++\notepad++.exe'
Set-Alias -Name onenote -Value 'C:\Program Files\Microsoft Office\root\Office16\ONENOTE.EXE'

function ssh_server {
    ssh <server>
}

Set-Alias ll Get-ChildItem
function la { Get-ChildItem -Force }
function .. { Set-Location .. }
function ... { Set-Location ../.. }
function open { explorer . }
Set-Alias c Clear-Host

function cmd_groupby_filetypes { 
    Get-ChildItem -Recurse -File |
    ForEach-Object { $_.Extension.TrimStart('.') } |
    Where-Object { $_ -ne "" } |
    Group-Object |
    Sort-Object Count -Descending |
    ForEach-Object { "{0,5} {1}" -f $_.Count, $_.Name }

}

function list_file {
    Get-ChildItem -File | Select-Object -ExpandProperty Name
}

function list_directory {
    Get-ChildItem -Directory | Select-Object -ExpandProperty Name
}

Set-Alias list_f list_file
Set-Alias list_d list_directory

function vc { Start-Process -WindowStyle Hidden code . }
