#https://safeexambrowser.org/about_overview_en.html

$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'safeexambrowser'
  fileType               = 'exe'
  url                    = ''
  checksum               = ''
  checksumType           = 'sha256'
  silentArgs             = '/install /passive /quiet /norestart'
  validExitCodes         = @(0)
  softwareName           = 'SafeExamBrowser*'
}
Install-ChocolateyPackage @packageArgs
