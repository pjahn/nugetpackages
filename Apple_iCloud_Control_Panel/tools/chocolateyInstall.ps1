$packageName = 'Apple_Airport_Utility'
$url = 'http://support.apple.com/downloads/DL1455/en_US/iCloudSetup.exe'
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

    $processor = Get-WmiObject Win32_Processor
    $is64bit = $processor.AddressWidth -eq 64

    $packageName = 'bonjour'
    if ($is64bit) {$file = "$filePath\Bonjour64.msi"} else {$file = "$filePath\Bonjour.msi"}
    Install-ChocolateyInstallPackage $packageName $fileType $silentArgs $file	

    $packageName = 'icloud'
    if ($is64bit) {$file = "$filePath\iCloud64.msi"} else {$file = "$filePath\Bonjour.msi"}
    Install-ChocolateyInstallPackage $packageName $fileType $silentArgs $file	

	
    Write-ChocolateySuccess "$packageName"
} catch {
    Write-ChocolateyFailure "$packageName" "$($_.Exception.Message)"
    throw
}