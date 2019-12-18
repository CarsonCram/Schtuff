<#

------------------------------------------------
DO NOT DELETE BRACKETS AT BEGINNING OF THIS FILE
------------------------------------------------

-This script grabs a copy of the server snapshot > takes a screenshot > 
sends that screenshot to c:\NIAPS\screenshot.png
-This first part grabs the snapshot
-The second part takes a screenshot
-The final line sends the screenshot to the specified file which can be changed 
#>

<#
robocopy /E ; 
\\10.1.13.190\g\3X_LiveState_Images\servername_3X_Image ; 
e:\UserShare\servername_3X_Image /W:20  /R:3 /J ; 
#>

[void][reflection.assembly]::loadwithpartialname("system.windows.forms")
[system.windows.forms.sendkeys]::sendwait('{PRTSC}')
Get-Clipboard -Format Image | 
ForEach-Object -MemberName Save -ArgumentList "c:\NIAPS\screenshot.png"