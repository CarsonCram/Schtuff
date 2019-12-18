<#

------------------------------------------------
DO NOT DELETE BRACKETS AT BEGINNING OF THIS FILE
------------------------------------------------

-this script changes the ethernet adapter description to 'vmxnet3'
and the IPV4 address to ip as specified in ParentVar.csv

-this script is commented out because it is dangerous to run accidentally

#>

<#
set-netadapter -Name $hostname -description 'vmxnet3'
set-netadapter -Name $hostname -ipv4 $ip
#>