$packageName = 'irfanviewplugins'
$installerType = 'exe'
$silentArgs = "/silent"
$urlArray = @('http://www.fosshub.com/genLink/IrfanView/irfanview_plugins_441_setup.exe','http://www.fosshub.com/genLink/IrfanView/irfanview_plugins_x64_441_setup.exe')
$url = $urlArray[0]
$url64 = $urlArray[1]
$validExitCodes = @(0)
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
if (!(Get-Command Get-UrlFromFosshub -ErrorAction SilentlyContinue)) {
  Import-Module "$($toolsDir)\Get-UrlFromFosshub.ps1"
}
$url = Get-UrlFromFosshub $url
$url64 = Get-UrlFromFosshub $url64
Write-Host $url64
Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -Url64bit "$url64" `
                          -ValidExitCodes $validExitCodes