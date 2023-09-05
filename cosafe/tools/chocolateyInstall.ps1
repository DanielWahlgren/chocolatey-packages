#https://safeexambrowser.org/about_overview_en.html

$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'cosafe'
  fileType               = 'exe'
  url                    = 'https://app.cosafe.se/CWS/CoSafeWarningSystemSetup-1.3.2.exe'
  checksum               = '0f66088b208135d766ffa9bcf9e04af46378d2f7682785d84c523dcb3369c8dc'
  checksumType           = 'sha256'
  silentArgs             = '/S'
  validExitCodes         = @(0)
  softwareName           = 'CoSafe Warning System'
}
Install-ChocolateyPackage @packageArgs
