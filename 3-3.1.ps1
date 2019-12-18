<#

------------------------------------------------
DO NOT DELETE BRACKETS AT BEGINNING OF THIS FILE
------------------------------------------------

-1 creates the NAFL-ISO dir on the desktop

-2 sends you to the datamart website

#>

$hullSite = 'https://customers.distancesupport.navy.mil/Seawarrior/NAFL/NAFL MU1B-5/Inbound_Data/To_A_Specific_Ship/' + $hullhyphen + '/Seawarrior/NAFL/Database'

##1
ni -path C:\Users\Public\Desktop -name "NAFL-ISO" -ItemType "directory"

##2
start $hullSite
##login



