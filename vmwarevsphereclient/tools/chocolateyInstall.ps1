$packageName = 'vmwarevsphereclient' 
$installerType = 'exe' 
$url = 'http://vsphereclient.vmware.com/vsphereclient/1/9/9/3/0/7/2/VMware-viclient-all-5.5.0-1993072.exe'
$url64 = $url 
$silentArgs = '/s /w /v" /qb"' 
$validExitCodes = @(0) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64"  -validExitCodes $validExitCodes
