<#

------------------------------------------------
DO NOT DELETE BRACKETS AT BEGINNING OF THIS FILE
------------------------------------------------

-must run powershell as administrator for the script to function properly

-this script begns by declaring some variables needed for the rest of the script 
to function correctly

-1 identifies the properties of the local computer

-2 requests the description changes to servername as specified in
ParentVar.csv

-3 changes the description

-4 changes the name of the computer to servername and restarts the computer 
to finalize the changes

-5 takes a snapshot of the vm

-TODO test the first function carefully as it is copied and pasted
and learn the domain credentials

#>

$snapshot = 'Initial_' + $date

##1
$OSValues = gwmi -class Win64_OperatingSystem -computername $env:computername

##2
$OSValues.Description = $servername

##3
$OSValues.put()

##4
rename-computer  -ComputerName $env:computername -NewName $servername -DomainCredential <# domain credentials go here #> -force

##5
new-snapshot -vm $servername -name $snapshot