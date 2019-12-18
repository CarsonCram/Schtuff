<#

------------------------------------------------
DO NOT DELETE BRACKETS AT BEGINNING OF THIS FILE
------------------------------------------------

-this script begns by declaring some variables needed for the rest of the script 
to function correctly

-1 replaces the line <add key="UIC" value="N20121"/> and inserts 
the fleetassign to the value as specified in ParentVars.csv

-2 replaces the line <add key="Ship Number" value="DDG-1000"/> and inserts 
the hullyphen to the value as specified in ParentVars.csv

-3 replaces the line <add key="XML" value="db/DDG1000_config.xml"/> and inserts 
the hullhyphen to the value as specified in ParentVars.csv

-4 declares a variable for the new name of the file at 
e:\iinetpub\wwwroot\supportrequest\db\DDG1000_config.xml and replaces it with the 
hullhyphen value as specified in ParentVar.csv

-5 removes the legacy config file from the 
e:\iinetpub\wwwroot\supportrequest\db dir
(note: this script removes all files from this directory, it should only be the config files,
but if you have troubles this may be a source of troubleshooting)

-6 copies the config file according to the hullhyphen value 
as referenced in ParentVar.csv from e:\iinetpub\wwwroot\supportrequest\install 
and pastes it into e:\iinetpub\wwwroot\supportrequest\db

-this script is commented out because it is dangerous to run accidentally
-the values are not commented out because they are not dangerous to run accidentally

#>

$script1 = '<add key="UIC" value="' + $fleetassign + '"/>'
$script2 = '<add key="Ship Number" value="' + $hullhyphen + '"/>'
$script3 = '<add key="Ship Number" value="db/' + $hullhyphen + '_config.xml"/>'
$fileName = $hullhyphyen + "_config.xml"
$pathName = 'e:\iinetpub\wwwroot\supportrequest\install\install\shipconfig\' + $hullhyphen + '_config'
$file = 'E:\iinetpub\wwwroot\supportrequest\web.config'

<#
##1
$remove = '<add key="UIC" value="N20121"/>'
((gc -path $file -raw) -replace $remove,$script1) |
sc -path $file

##2
$remove = '<add key="Ship Number" value="DDG-1000"/>'
((gc -path $file -raw) -replace $remove,$script2) |
sc -path $file

##3
$remove = '<add key="XML" value="db/DDG1000_config.xml" />'
((gc -path $file -raw) -replace $remove,$script3) |
sc -path $file

##4
$file = 'e:\iinetpub\wwwroot\supportrequest\db\DDG1000_config.xml'
rni -path $file -newname $fileName

##5
$file = 'e:\iinetpub\wwwroot\supportrequest\db\*'
ri -path $file

##6
$file = 'e:\iinetpub\wwwroot\supportrequest\db'
cpi -path $pathName -destination $file
#>