$packageName = 'GoogleEarth'
$url = 'https://dl.google.com/earth/client/advanced/current/GoogleEarthWin.exe'
$url64 = $url
$fileType = 'exe'
$silentArgs =''

Install-ChocolateyPackage $packageName $fileType $silentArgs $url