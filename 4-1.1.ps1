<#

------------------------------------------------
DO NOT DELETE BRACKETS AT BEGINNING OF THIS FILE
------------------------------------------------

-this script changes the url of the NIAPS Web Portal to the $servername

-1 allows this script to run VBScript cmds, WScript.Shell is a VBScript
cmd that creates a new object shell

-2 encapsulates the shell within the NIAPS file path

-3 changes the url path to $servername as defined in ParentVar.csv

-4 saves the url path

-TODO double check the correct details, security, and web document tabs 
reference the right things

#>

$file = '<filepath to NIAPS web portal here>'

##1
$shell = New-Object -ComObject WScript.Shell

##2
$shortcut = $shell.CreateShortcut($file)

##3
$shortcut.TargetPath = $servername

##4
$shortcut.Save()










