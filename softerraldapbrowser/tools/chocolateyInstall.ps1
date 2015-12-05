$packageName = 'softerraldapbrowser'
$installerType = 'MSI'
$url = 'http://softerra-downloads.com/ldapadmin/ldapbrowser-4.5.13724.0-x86-eng.msi'
$url64 = 'http://softerra-downloads.com/ldapadmin/ldapbrowser-4.5.13724.0-x64-eng.msi'
$silentArgs = '/quiet /norestart'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64"  -validExitCodes $validExitCodes