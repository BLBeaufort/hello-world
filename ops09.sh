# script: Ops Challenge: Class 09
# Author:  Barbara L. Beaufort
# Date of latest revision: 5/9/2023
# Purpose:  Write a script to show various tasks 

#Task 01
$Begin = Get-Date -Date '5/8/2023 00:00:00'
$End = Get-Date -Date '5/9/2023 23:59:59'
Get-EventLog -LogName System -After $Begin -Before $End> C:\Users\admin\Desktop\last_24.txt

#Task 02
Get-EventLog -LogName System -EntryType Error> C:\Users\admin\Desktop\errorlog.txt

#Task 03
Get-EventLog -LogName System -InstanceID 16

#Task 04
Get-EventLog -LogName System -Newest 20

#Task 05
Get-EventLog -LogName System -Newest 500| select -ExpandProperty message