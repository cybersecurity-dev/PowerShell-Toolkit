@ECHO OFF
ECHO restart network.
ECHO ============================
ipconfig /registerdns
ipconfig /release
ipconfig /renew
netsh winsock reset
ECHO ============================
PAUSE

