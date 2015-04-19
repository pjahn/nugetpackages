$packageName = 'Evernote 5'
$url = 'http://evernote.com/download/get.php?file=Win'
$url64 = $url
$fileType = 'exe'
$silentArgs = '/quiet'

Install-ChocolateyPackage $packageName $fileType $silentArgs $url