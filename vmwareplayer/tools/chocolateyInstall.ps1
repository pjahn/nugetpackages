$packageName = 'vmwareplayer'
$installerType = 'EXE'
$url = 'https://download3.vmware.com/software/player/file/VMware-player-7.0.0-2305329.exe'
$url64 = $url
$silentArgs = '/s /nsr /v EULAS_AGREED=1'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64"  -validExitCodes $validExitCodes