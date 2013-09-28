$packageName = 'Evernote'
$url = 'http://evernote.com/download/get.php?file=Win'
$url64 = $url
$fileType = 'exe'
$silentArgs = '/quiet'

try {

Install-ChocolateyPackage $packageName $fileType $silentArgs $url

    Write-ChocolateySuccess "$packageName"
} catch {
    Write-ChocolateyFailure "$packageName" "$($_.Exception.Message)"
    throw
}