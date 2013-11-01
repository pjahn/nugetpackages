$packageName = 'vmwarevsphereclient' 
$installerType = 'exe' 
$url = 'http://vsphereclient.vmware.com/vsphereclient/1/2/8/1/6/5/0/VMware-viclient-all-5.5.0-1281650.exe' 
$url64 = $url 
$silentArgs = '/s /w /v" /qb"' 
$validExitCodes = @(0) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64"  -validExitCodes $validExitCodes
