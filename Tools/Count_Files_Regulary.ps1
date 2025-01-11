@ECHO OFF
ECHO Count Files in Directory
ECHO ============================
while(1) { Write-Host (dir . | measure).Count; start-sleep -Seconds 59; }
ECHO ============================
PAUSE

