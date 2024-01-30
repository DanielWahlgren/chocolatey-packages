#https://safeexambrowser.org/about_overview_en.html

$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'mechpack1'
  fileType               = 'exe'
  url                    = 'https://www.microtechstelladata.se/download/1938/?tmstv=1706602788'
  checksum               = '17123933a0eff186821640ee5d70c6c74458f26991a1f7d2f757db5febb36c24'
  checksumType           = 'sha256'
  silentArgs             = '/verysilent /norestart'
  validExitCodes         = @(0)
  softwareName           = 'MechPack1*'
}
Install-ChocolateyPackage @packageArgs
