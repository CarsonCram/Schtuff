<#

------------------------------------------------
DO NOT DELETE BRACKETS AT BEGINNING OF THIS FILE
------------------------------------------------

-This script changes the date/time of the local computer.
-timezone value is set by timezone value in ParentVar.csv file.

-timezone value MUST be written as "<timezone> standard time"

-TODO add line for daylight savings. Again I need to wait until I have VSC to complete this.

#>

stz -id $timezone 