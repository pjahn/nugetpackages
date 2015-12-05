

$packageName = 'naps2' 
$installerType = 'MSI' 
$url = 'https://github.com/cyanfish/naps2/releases/download/v4.2.3/naps2-4.2.3-setup.msi' 
$url64 = $url 
$silentArgs = '/quiet /norestart' 
$validExitCodes = @(0) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64"  -validExitCodes $validExitCodes