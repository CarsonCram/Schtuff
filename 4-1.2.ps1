<#

------------------------------------------------
DO NOT DELETE BRACKETS AT BEGINNING OF THIS FILE
------------------------------------------------

-the first line of theis script declares values used later 

-1 changes the default home page of internet explorer to the $servername 
as defined in ParentVar.csv

-TODO finish this once you have vm

#>

$file = 'HKCU:\Software\Microsoft\Internet Explorer\Main'

##1
sp -path $file -Name 'start page' -Value $servername





