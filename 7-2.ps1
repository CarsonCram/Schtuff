<#

------------------------------------------------
DO NOT DELETE BRACKETS AT BEGINNING OF THIS FILE
------------------------------------------------

-the first four lines declare vars used in the equation

-the equation determines if the Arr Feeder service is present in windows,
if it present it then removes the service and notifies the builder

-The removal lines were copied straight out of section 7-2.2 in the build guide and 
may or may not work in pws / will have to return to this step.

-to verify this script worked please open services and verify the Arr Feeder service
is not present

-this script is commented out because it is dangerous to run accidentally

#>

$serviceName = 'Arr Feeder'
$errMessage = 'service is running'
$successMessage = 'service not found yay!'

<#
If (gsv $serviceName -ErrorAction SilentlyContinue) {

    If ((gsv $serviceName).Status -eq 'Running') {

        spsv $serviceName
        $errMessage | C:\Users\Public\Desktop\6-4Result.txt
        cd /d C:\Windows\Microsoft.NET\Framework\v4.0.30319
        installutil /u "C:\Program Files\ArrFeeder\ArrFeeder.exe"
        
    } Else {

        $errMessage | C:\Users\Public\Desktop\6-4Result.txt
    
    }

} Else {

    $successMessage | C:\Users\Public\Desktop\6-4Result.txt

}
#>