# script: Ops Challenge: Class 10
# Author: Barbara L. Beaufort
# Date of latest revision: 5/11/2023
# Purpose: System Processing Commands

#Task 1
$Get-Process | Sort-Object CPU -Descending

#Task 2
$Get-Process | Sort-Object ID -Descending

#Task 3
$Get-Process | Sort-Object WS -Descending | Select -First 5

#Task 4
$Start-Process "https://owasp.org/www-project-top-ten/"

#Task 5
$for ($i=1; $i -le 10; $i++)
${Start-Process 'C:\Windows\system32\notepad.exe'}

#Task 6
$Stop-Process -Name "notepad"

#Task 7
$Taskkill /PID 1576 /F