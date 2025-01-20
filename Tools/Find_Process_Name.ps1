param(
    [Parameter(Mandatory = $true, Position = 0)]
    [string]$Path
)

# Check if the path exists
if (!(Test-Path -Path $Path)) {
    Write-Error "Path '$Path' does not exist."
    return
}

# Resolve the path to its full, canonical form
$FullPath = Resolve-Path -Path $Path | Select-Object -ExpandProperty Path

Write-Host "Checking processes using file/directory: $FullPath"

try {
    # Use Get-Process and Where-Object to find processes with open handles to the file/directory
    $Processes = Get-Process | Where-Object {
        try {
            # Use OpenFiles to get open files for each process. This can fail for some protected processes.
            $OpenFiles = (Get-WmiObject -Class Win32_Process -Filter "ProcessId = $($_.Id)").GetHandles() | Where-Object {$_.HandleFileName -like $FullPath}
            $OpenFiles.Count -gt 0 # Return true if any open files match
        }
        catch {
            # Catch exceptions, especially "Access is denied" for protected processes.
            # Write-Warning "Could not access open files for process $($_.Name) (ID: $($_.Id)). This is normal for some system processes."
            return $false # If we can't get the handles, it's not a match.
        }
    }

    if ($Processes) {
        Write-Host "Processes using '$FullPath':"
        $Processes | Format-Table -AutoSize Id, Name, Path
    } else {
        Write-Host "No processes found using '$FullPath'."
    }
}
catch {
    Write-Error "An error occurred: $_"
}
#.\Find_Process_Name.ps1 "C:\path\to\your\file.txt"
#.\Find_Process_Name.ps1 "C:\path\to\your\directory"
