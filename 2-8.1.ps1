<#

------------------------------------------------
DO NOT DELETE BRACKETS AT BEGINNING OF THIS FILE
------------------------------------------------

-1 edits values for the keys in the HKEY_LOCAL_MACHINE\SOFTWARE\NIAPS\Parameters

-2 edits values for the keys in the HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\NIAPS\Parameters

#>

$regpath = 'Computer\HKEY_LOCAL_MACHINE\SOFTWARE\NIAPS\Parameters'
$wowpath = 'Computer\HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\NIAPS\Parameters'

##1
sp -path $regpath -Name HULL_ATIS_CLASS -Value $hullclass

sp -path $regpath -Name Hull_Class -Value $hullclass

sp -path $regpath -Name Hull_Hyphen -Value $hullhyphen

sp -path $regpath -Name Hull_Name -Value $shipname

sp -path $regpath -Name Hull_No_Hyphen -Value $hullnohyphen

sp -path $regpath -Name Hull_Num -Value $hulljustnum

sp -path $regpath -Name Hull_Type -Value $hulljusttype

sp -path $regpath -Name Template_Date -Value $templatedate

sp -path $regpath -Name Template_Version -Value $templateversion

##2
sp -path $wowpath -Name HULL_ATIS_CLASS -Value $hullclass

sp -path $wowpath -Name Hull_Class -value $hullclass

sp -path $wowpath -name Hull_Hyphen -value $hullhyphen

sp -Path $wowpath -Name Hull_Name -Value $shipname

sp -Path $wowpath -Name Hull_No_Hyphen -value $hullnohyphen

sp -Path $wowpath -Name Hull_Num -Value $hulljustnum

sp -Path $wowpath -name Hull_type -Value $hulljusttype

sp -Path $wowpath -name Server_Class -Value $serverclass

sp -path $wowpath -name Server_Type -Value $servertype

sp -Path $wowpath -Name UIC -Value $uic

sp -Path $wowpath -Name uic_Prefix -Value $uicprefix