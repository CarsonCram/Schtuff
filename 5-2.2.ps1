<#

------------------------------------------------
DO NOT DELETE BRACKETS AT BEGINNING OF THIS FILE
------------------------------------------------

-the first couple of lines define variables used later in this script

-1 checks to see if $servername as specified by ParentVar.csv exists between in the 
'\\\\<servername>\\CDROM\\' line of E:\iinetpub\wwwroot\ATIS\Atis.AppSettings.json,
if it doesn't it places $servername in <servername>

-2 does the same as 1 in the E:\iinetpub\wwwroot\ATIS\bin\Atis.AppSettings.json dir

-TODO change the file to save as the specific file type it needs to be

#>

$file = 'E:\iinetpub\wwwroot\ATIS\Atis.AppSettings.json'
$binpath = 'E:\iinetpub\wwwroot\ATIS\bin\Atis.AppSettings.json'
$replacer = sls -Path $52path -pattern $servername

##1
if($replacer) { break }
else {
   ((gc -path $file -raw) -replace "LSC7USV01",$servername) |
    sc -path $file
}

$replacer = sls -Path $binpath -pattern $servername

##2
if($replacer) { break }
else {
   ((gc -path $binpath -raw) -replace "LSC7USV01",$servername) |
    sc -path $binpath 
}




