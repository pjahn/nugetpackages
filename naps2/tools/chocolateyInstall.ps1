

$packageName = 'naps2' 
$installerType = 'MSI' 
$url = 'https://github.com/cyanfish/naps2/releases/download/v4.7.2/naps2-4.7.2-setup.msi' 
$url64 = $url 
$silentArgs = '/quiet /norestart' 
$validExitCodes = @(0) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64"  -validExitCodes $validExitCodes