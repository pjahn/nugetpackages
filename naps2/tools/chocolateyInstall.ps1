

$packageName = 'naps2' 
$installerType = 'MSI' 
$url = 'http://optimate.dl.sourceforge.net/project/naps2/2.6.2/naps2-2.6.2-setup.msi' 
$url64 = $url 
$silentArgs = '/quiet /norestart' 
$validExitCodes = @(0) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64"  -validExitCodes $validExitCodes