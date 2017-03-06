$packageName = 'vmwarevsphereclient' 
$installerType = 'exe' 
$url = 'http://vsphereclient.vmware.com/vsphereclient/5/1/1/2/5/0/8/VMware-viclient-all-6.0.0-5112508.exe'
$url64 = $url 
$silentArgs = '/s /w /v" /qb"' 
$validExitCodes = @(0) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64"  -validExitCodes $validExitCodes
