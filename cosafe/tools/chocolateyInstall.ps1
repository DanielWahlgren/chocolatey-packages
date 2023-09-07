#https://safeexambrowser.org/about_overview_en.html

$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'cosafe'
  fileType               = 'exe'
  url                    = ''
  checksum               = ''
  checksumType           = 'sha256'
  silentArgs             = '/S'
  validExitCodes         = @(0)
  softwareName           = 'CoSafe Warning System'
}
Install-ChocolateyPackage @packageArgs
