<#

------------------------------------------------
DO NOT DELETE BRACKETS AT BEGINNING OF THIS FILE
------------------------------------------------

-1 removes all items from G:\Inbound_Data\Hull_Applications\NAFL\Data dir

-2 connects the vm to the local desktop ISO file

-3 copies iso file from the local desktop into the vm 

-4 disconnects the vm from the local desktop ISO file

-5 unzips the iso file into the G:\Inbound_Data\Hull_Applications\NAFL\Data dir on the vm

-6 removes original iso zip file and IB5 file 

-7 pipes to the NAFL_Log.txt file to insure all messages are captured

-possible between step 2 and 3 may have to copy isopath to the F drive,check back on it

#>

$removedir = $datadir + '\*'
$isopath = 'C:\Users\Public\Desktop\' + $iso + '.iso'
$datadir = 'G:\Inbound_Data\Hull_Applications\NAFL\Data'
$IB5 = $datadir + '\NAFL_' + $hullnum + '_IB5'
$datamart = $datadir + '\Update_NAFL_Datamart.bat'

##1
ri -Path  $removedir

##2
Mount-DiskImage -ImagePath $isopath

#3
cpi -path $isopath -destination $datadir

##4
Dismount-DiskImage -ImagePath $isopath

##5
Expand-Archive -Path $datadir -DestinationPath $datadir

##6
ri -Path $IB5
$IB5 += '.ZIP'
ri -Path $IB5


##7
$datamart >> NAFL_Log.txt