<#

------------------------------------------------
DO NOT DELETE BRACKETS AT BEGINNING OF THIS FILE
------------------------------------------------

-this script maps to the fs01 sharedrive.

-if this script returns an error, try mapping the sharedrive to something other than y,
otherwise you may already be connected to the sharedrive

#>

$test = 'Y:\sharedrive'
$file = '\\10.1.13.190\sharedrive'

if (Test-Path -Path $test -eq $false) {
    mount –Name “Y” –PSProvider FileSystem –Root $file –Persist
}
else {
    '2-3' | 
    out-file -FilePath C:\NIAPS\Error.html
}