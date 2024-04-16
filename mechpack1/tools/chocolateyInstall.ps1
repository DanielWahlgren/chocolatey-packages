#https://safeexambrowser.org/about_overview_en.html

$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'mechpack1'
  fileType               = 'exe'
  url                    = 'https://www.microtechstelladata.se/download/1938/?tmstv=1713253880&amp;version=2-5-0-0'
  checksum               = 'eb090070865b55ae44cb910f85b6e3948ba4a43c16e98a078b816717a0974d5c'
  checksumType           = 'sha256'
  silentArgs             = '/verysilent /norestart'
  validExitCodes         = @(0)
  softwareName           = 'MechPack1*'
}
Install-ChocolateyPackage @packageArgs
