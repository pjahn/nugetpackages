$packageName = 'Microsoft_SMS_Sender' # arbitrary name for the package, used in messages
$installerType = 'MSI' #only one of these two: exe or msi
$url = 'http://download.microsoft.com/download/8/f/d/8fd4e1cd-b2d7-4e23-9c5b-54b76fa222b9/smssender.msi' # download url
$url64 = $url
$silentArgs = '/quiet /norestart'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64"  -validExitCodes $validExitCodes

