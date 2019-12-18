<#

------------------------------------------------
DO NOT DELETE BRACKETS AT BEGINNING OF THIS FILE
------------------------------------------------

-this script removes the install files from the g:\installs\applications directory,
it then copies all the files from the 
\\mgmtfs01\sharedrive\3X Build Team\Template_G_Installs_Applications directory and
pastes them into the g:\installs\applications directory. 

-this script is commented out because it is dangerous to run accidentally
-this script begins by removing all files from the g:\installs\applications 
directory so in the future this may be a source for troubleshooting.

#>

$file = '\\mgmtfs01\sharedrive\3X Build Team\Template_G_Installs_Applications\*'
$final = 'G:\Installs\Applications\*'

<#
ri -path $file

cpi -path $file -destination $final
#>