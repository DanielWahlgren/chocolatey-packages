#https://safeexambrowser.org/about_overview_en.html

$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'mechpack1'
  fileType               = 'exe'
  url                    = ''
  checksum               = ''
  checksumType           = 'sha256'
  silentArgs             = '/verysilent /norestart'
  validExitCodes         = @(0)
  softwareName           = 'MechPack1*'
}
Install-ChocolateyPackage @packageArgs
