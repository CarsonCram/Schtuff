<#

------------------------------------------------
DO NOT DELETE BRACKETS AT BEGINNING OF THIS FILE
------------------------------------------------

-This script creates new variables recognized by powershell.
These variables are used to assign values to things used during the build process.
-Variables are grabbed from ParentVar.csv
#>

Import-Csv -Path C:\NIAPS\ParentVar.csv | 
foreach {
    New-Variable -Name $_.Name -Value $_.Value -Force
} 