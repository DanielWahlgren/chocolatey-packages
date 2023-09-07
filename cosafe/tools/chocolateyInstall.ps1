#https://safeexambrowser.org/about_overview_en.html

$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'cosafe'
  fileType               = 'msi'
  url                    = 'https://app.cosafe.se/CWS/CoSafeWarningSystemSetup-1.3.2.msi'
  checksum               = 'f5f490240b99f92d899ebe27b80555321e4c62ae68fdb6136258b89b17f0872c'
  checksumType           = 'sha256'
  silentArgs             = '/qn'
  validExitCodes         = @(0)
  softwareName           = 'CoSafe Warning System'
}
Install-ChocolateyPackage @packageArgs
