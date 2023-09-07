#https://safeexambrowser.org/about_overview_en.html

$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'cosafe'
  fileType               = 'msi'
  url                    = ''
  checksum               = ''
  checksumType           = 'sha256'
  silentArgs             = '/qn'
  validExitCodes         = @(0)
  softwareName           = 'CoSafe Warning System'
}
Install-ChocolateyPackage @packageArgs
