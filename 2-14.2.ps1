<#

------------------------------------------------
DO NOT DELETE BRACKETS AT BEGINNING OF THIS FILE
------------------------------------------------

-this script edits and deletes certain items from the registry. I'm not sure what is being edited 
here so I have to get with dawn and figure it out

-this script will take a long time to run so be patient

-TODO figure out exactly what needs to be edited here

#>

$legacyserver = 'SSN314'


gci Registry::\ | 
Where-Object {$_.Name -like '*$legacyserver*'} -replace $legacyserver,<#something#> -recurse ;

gci Registry::\ |
Where-Object {$_.Name -like '*DDG1000*'} -replace 'DDG1000',<#something#> -recurse;

gci Registy::\ | 
Remove-Item |
-path Where-Object {$_.Name -like '*3xtemplate*'} -recurse 








