<#

------------------------------------------------
DO NOT DELETE BRACKETS AT BEGINNING OF THIS FILE
------------------------------------------------

-this script replaces the name of the legacy server to that of the current server.
-current server is referenced as servername in ParentVar.csv
-i have this commented off because it's a dangerous script to run accidentally.

-POSSIBLE AMMEND while running this script today scott and i noticed the original 
vm name had changed to 'ssn314gsv01'. 

#>

$file = 'C:\Windows\System32\drivers\etc\hosts'

<#
((gc -path $file -raw) -replace "lcs01usv01",$servername) |
sc -path $file
#>