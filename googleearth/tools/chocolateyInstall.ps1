$packageName = 'GoogleEarth'
$url = 'https://dl.google.com/earth/client/advanced/current/GoogleEarthWin.exe'
$url64 = $url
$fileType = 'msi'
$silentArgs = '/quiet'
$filePath = "$env:TEMP\chocolatey\$packageName"
$fileFullPath = "$filePath\$packageName_Install.exe"

try {
    if (-not (Test-Path $filePath)) {
        New-Item -ItemType directory -Path $filePath
    }

    Get-ChocolateyWebFile $packageName $fileFullPath $url $url64

    Start-Process "7za" -ArgumentList "x -o`"$filePath`" -y `"$fileFullPath`"" -Wait

    $packageName = 'googleearth'
    $file = "$filePath\Google Earth.msi"
    Install-ChocolateyInstallPackage $packageName $fileType $silentArgs $file	
	
    Write-ChocolateySuccess "$packageName"
} catch {
    Write-ChocolateyFailure "$packageName" "$($_.Exception.Message)"
    throw
}