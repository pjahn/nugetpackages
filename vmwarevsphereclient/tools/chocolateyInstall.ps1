$packageName = 'vmwarevsphereclient' 
$installerType = 'exe'
$url = 'http://vsphereclient.vmware.com/vsphereclient/VMware-viclient-all-6.0.0.exe'
$url64 = $url
$silentArgs = '/s /w /v" /qb"'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64"  -validExitCodes $validExitCodes
