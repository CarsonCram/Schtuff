<#

------------------------------------------------
DO NOT DELETE BRACKETS AT BEGINNING OF THIS FILE
------------------------------------------------

-this script maps the vm to a network drive

-FORDEV this script covers 10-1.1.3 because i think this step is done on the vm

#>

mount –Name “J” –PSProvider FileSystem –Root “\\10.1.13.190\g\3X_LiveState_Images” 

