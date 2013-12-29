$packageName = 'irfanviewplugins'
$installerType = 'EXE'
$url = 'http://www12.tucows.com/windows/files/irfanview_plugins_437_setup.exe'
$url64 = $url
$silentArgs = '/silent'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64"  -validExitCodes $validExitCodes