$packageName = 'irfanviewplugins'
$installerType = 'EXE'
$url = 'http://www.tucows.com/download/windows/files/irfanview_plugins_440_setup.exe'
$url64 = $url
$silentArgs = '/silent'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64"  -validExitCodes $validExitCodes
