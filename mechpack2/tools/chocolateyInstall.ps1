#https://safeexambrowser.org/about_overview_en.html

$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'mechpack2'
  fileType               = 'exe'
  url                    = 'https://www.microtechstelladata.se/download/1859/?tmstv=1704965288'
  checksum               = '17d7c714c2a6bdee0d2e09875eee24274448668c03ff453d3141ca635eb6353a'
  checksumType           = 'sha256'
  silentArgs             = '/verysilent /norestart'
  validExitCodes         = @(0)
  softwareName           = 'MechPack2*'
}
Install-ChocolateyPackage @packageArgs
