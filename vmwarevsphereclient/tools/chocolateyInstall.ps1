$packageName = 'vmwarevsphereclient' 
$installerType = 'exe' 
$url = 'http://vsphereclient.vmware.com/vsphereclient/2/5/0/2/2/2/2/VMware-viclient-all-6.0.0-2502222.exe'
$url64 = $url 
$silentArgs = '/s /w /v" /qb"' 
$validExitCodes = @(0) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64"  -validExitCodes $validExitCodes
