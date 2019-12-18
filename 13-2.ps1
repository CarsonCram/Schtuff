<#

------------------------------------------------
DO NOT DELETE BRACKETS AT BEGINNING OF THIS FILE
------------------------------------------------

-the first lines declare variables used later in this script

-1 create a certificates dir on the flash drive

-2 copies the long and short .p12 certs from the 
Y:\Server_Certificates\OpenSSL-Win64\bin\<shipclass>\3X Certs dir 
into the certificates dir

-3 copies the contents of the Y:\Build\NIAPS 3.X\Additional 3.X Build files dir
into the E drive

-4 removes specific files from the E drive

-5 copies the ATIS IETM Discrepancy report from the E drive into the 
Y:\Build\Atis files\Build IETM Discrepancy Reports dir

-TODO make sure $shipname in long and short are correct

#>

$file = 'Y:\Server_Certificates\OpenSSL-Win64\bin\' + $hulljusttype + '3X Certs'
$short = $file + $servername + '.p12'
$long = $file + $servername + $shipname + '.navy.mil.p12'

##1
$cert = ni E:\certificates -Name 'Certificates' -ItemType directory
$cert += '\'

##2
cpi $short -Destination $cert 
cpi $long -Destination $cert

$file = 'Y:\Build\NIAPS 3.X\Additional 3.X Build files'

##3
$all = $file + '\*'
cp -Path $all -Destination E:\

##4
$noadd = $file + '\ARCHIVED - Additional Build Folders'
ri -path $noadd 
$noadd = $file + 'CANES CRATE File'
ri -Path $noadd
$noadd = $file + 'VMware_OVF_Tool'
ri -Path $noadd
$noadd = $file + 'ovf_readme.txt'
ri-path $noadd

##5
$file = 'E:\ATIS IETM Discrepancy'
$final = 'Y:\Build\Atis files\Build IETM Discrepancy Reports'
cpi -Path $file -Destination $final