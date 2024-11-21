@ECHO OFF
ECHO restart network.
ECHO ============================
ipconfig /release
ipconfig /renew
arp -d *
nbtstat -R
nbtstat -RR
netsh winsock reset
ipconfig /flushdns
ipconfig /registerdns
ECHO ============================
PAUSE