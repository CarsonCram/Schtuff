<#

------------------------------------------------
DO NOT DELETE BRACKETS AT BEGINNING OF THIS FILE
------------------------------------------------

-the values at the beginning of this file are used later in this script

-1 replaces some values values in the 
G:\Installs\Applications\TSIMS\Settings.bat file

-2 sets the content changes made in step 1

-3 runs SilentInstaller.bat 

-4 copies everything from 
\\mgmtfs01\DS Framework\NIAPS 3.0\Applications\TSIMS\Testdata to
G:\Installs\Applications\TSIMS

-5 runs restoretestdbs.sql

#>

$file = 'G:\Installs\Applications\TSIMS\Settings.bat'
$oldcontent = gc -path $file -raw 
$newcontent = @('INSTALLDIR="E:\TSIMS"';
                'STRDOMAINCONTROLLER="' + $domaincred + '"';
                'STRNIAPSSERVER="' + $servername + '"';
                'STRMODESSERVER="' + $servername + '"';
                'STRHULL="' + $hullhyphen + '"')

##1
for($i=(where {$oldcontent -like 'INSTALLDIR'}), $i -eq $newcontent.GetLength(), $i++)
{
    $replacer = -replace $oldcontent[$i],$newcontent[$i]    
} 

##2
sc -Path $file -Value $replacer

##3
$file = 'G:\Installs\Applications\TSIMS\SilentInstaller.bat'
Invoke-Item $file 

##4
$file = '\\mgmtfs01\DS Framework\NIAPS 3.0\Applications\TSIMS\Testdata\*'
$final = 'G:\Installs\Applications\TSIMS'
cpi -Path $file -Destination $final

##5
$file = 'G:\Installs\Applications\TSIMS\restoretestdbs.sql'
invoke-item $file