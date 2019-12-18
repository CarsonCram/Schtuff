<#

------------------------------------------------
DO NOT DELETE BRACKETS AT BEGINNING OF THIS FILE
------------------------------------------------

-1 grabs the content from the G:\Inbound_Data\Hull_Applications\NAFL\Data\NAFL_Log.txt file

-2 checks to see if the file says "Copying CTA Layout Files"

-3 If the check passes, the entire contents of the file will be passed will be displayed in 
G:\Inbound_Data\Hull_Applications\NAFL\Data\Verify.txt

-if something shows in the verify.txt file the check passes, otherwise the test fails

#>

$file = 'G:\Inbound_Data\Hull_Applications\NAFL\Data\NAFL_Log.txt'
$out = 'G:\Inbound_Data\Hull_Applications\NAFL\Data\Verify.txt'

##1
gc -path $file -raw | 

##2
Where {$_.Contains('Copying CTA Layout Files...')} | 

##3
out-file $out