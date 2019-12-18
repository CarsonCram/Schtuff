<#

------------------------------------------------
DO NOT DELETE BRACKETS AT BEGINNING OF THIS FILE
------------------------------------------------

-the values listed at the beginning of the script are used throughout the 
script

-1 checks to see if 'dsadmin' exists as a member in the SKED_Group,
if it doesn't then dsadmin is created as a member

-2

-3 replaces 'lcs01usv01' with the $servername as specified by ParentVar.csv

-TODO finish step 2 with vm

#>

$file = 'E:\Program Files\sked32server\sked.agent.settings'

##1
$groupMember = Get-LocalGroupMember -group 'SKED_Group' -Member *
if($groupMember -contains 'dsadmin') { break }
else { 
    algm -group 'Sked_Group' -Member 'dsadmin' 
}

##2
##steps 4-2.3-5

##steps 6-8 are temp sked fixes that will not be automated 

##3
((gc -path $file -raw) -replace "lcs01usv01",$servername) |
sc -path $file


