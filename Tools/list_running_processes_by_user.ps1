# Get current date and time for logging
$timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"

# Write header
Write-Host "Running Processes Report - Generated on $timestamp" -ForegroundColor Green
Write-Host "---------------------------------------------`n"

# Get all running processes with user information
$processes = Get-WmiObject Win32_Process | 
    ForEach-Object {
        try {
            # Get process owner
            $owner = $_.GetOwner()
            [PSCustomObject]@{
                ProcessName = $_.Name
                ProcessID   = $_.ProcessID
                UserName    = if ($owner.User) { "$($owner.Domain)\$($owner.User)" } else { "N/A" }
                Path        = $_.ExecutablePath
            }
        }
        catch {
            # Handle cases where owner info isn't available
            [PSCustomObject]@{
                ProcessName = $_.Name
                ProcessID   = $_.ProcessID
                UserName    = "Unable to retrieve"
                Path        = $_.ExecutablePath
            }
        }
    }

# Sort processes by name and display in formatted table
$processes | 
    Sort-Object ProcessName | 
    Format-Table -AutoSize -Property ProcessName, ProcessID, UserName, Path

# Count total processes
$totalProcesses = $processes.Count
Write-Host "`nTotal Running Processes: $totalProcesses" -ForegroundColor Yellow

# Optional: Export to CSV
$exportPath = "$env:USERPROFILE\Documents\ProcessList_$($timestamp.Replace(':','-')).csv"
$processes | Export-Csv -Path $exportPath -NoTypeInformation
Write-Host "`nReport exported to: $exportPath" -ForegroundColor Cyan