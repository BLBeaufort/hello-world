# script: Ops Challenge: Class 10
# Author: Barbara L. Beaufort
# Date of latest revision: 5/11/2023
# Purpose: System Processing Commands

#Task 1
#Print to the terminal screen all active processes ordered by highest CPU time consumption at the top.

$Get-Process | Sort-Object CPU -Descending

#Task 2
#Print to the terminal screen all active processes ordered by highest Process Identification Number at the top.

$Get-Process | Sort-Object ID -Descending

#Task 3
#Print to the terminal screen the top five active processes ordered by highest Working Set (WS(k)) at the top.

$Get-Process | Sort-Object WS -Descending | Select -First 5

#Task 4
#Start a browser process (such as Google Chrome or MS Edge) and have it open https://owasp.org/www-project-top-ten/.

$Start-Process "https://owasp.org/www-project-top-ten/"

#Task 5
#Start the process Notepad ten times using a for loop.

$for ($i=1; $i -le 10; $i++)
${Start-Process 'C:\Windows\system32\notepad.exe'}

#Task 6
#Close all instances of the Notepad.

$Stop-Process -Name "notepad"

#Task 7
#Kill a process by its Process Identification Number.  Choose a process whose termination won't destabilize the system, such as Google Chrome or MS Edge.
#MSEdge PID for this instance is 1576.

$Taskkill /PID 1576 /F