# listen_online_radio.ps1
$url = "http://stream.srg-ssr.ch/m/rsc_de/mp3_128"

# 1) Prefer a command-line player if available
if (Get-Command mpv -ErrorAction SilentlyContinue) {
    mpv --no-video $url
}
elseif (Get-Command ffplay -ErrorAction SilentlyContinue) {
    ffplay -nodisp -autoexit $url
}
elseif (Get-Command vlc -ErrorAction SilentlyContinue) {
    vlc -I dummy --no-video $url
}
# 2) Fallback: built-in Windows media player (Windows only)
else {
    Add-Type -AssemblyName PresentationCore
    $player = New-Object System.Windows.Media.MediaPlayer
    $player.Open([uri]$url)
    $player.Volume = 0.7
    $player.Play()

    Write-Host "Playing Radio Swiss Classic. Keys: [Space] pause/resume, [+/-] volume, [Q] quit"
    $paused = $false
    try {
        while ($true) {
            if ([Console]::KeyAvailable) {
                $key = [Console]::ReadKey($true)
                switch ($key.KeyChar) {
                    ' ' { if ($paused) { $player.Play() } else { $player.Pause() }; $paused = -not $paused }
                    '+' { $player.Volume = [Math]::Min(1, $player.Volume + 0.05) }
                    '-' { $player.Volume = [Math]::Max(0, $player.Volume - 0.05) }
                    'q' { break }
                }
                if ($key.KeyChar -eq 'q') { break }
                Write-Host ("Volume: {0:P0}" -f $player.Volume)
            }
            Start-Sleep -Milliseconds 100
        }
    }
    finally {
        $player.Stop()
        $player.Close()
    }
}