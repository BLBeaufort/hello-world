# script: Ops Challenge: Class 11
# Author: Barbara L. Beaufort
# Date of latest revision: 5/15/2023
# Purpose: Automated Endpoint Configuration

#Enable File and Printer Sharing
Set-NetFirewallRule -DisplayGroup "file And Printer Sharing" -Enable True

#Allow ICMP traffic
netsh adyfirewall firewall add rule name="Allow incoming ping requests IPv4" dir=in action=allow

#Enable Remote Management
reg add "HLKM\SYSTEM\CurrentControlSet\Control\Terminal Server" /v fDenyTSConnections /t REG_DWORD /d 0 /f

#Remove bloatware
iex ((New-Object System.Net.WebClient).DownloadString('https://git.io/debloat'))

#Enable Hyper-V
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V -All

#Disable SMBv1, an insecure protocol
Disable-WindowsOptionalFeature -Online -FeatureName SMB1Protocol
