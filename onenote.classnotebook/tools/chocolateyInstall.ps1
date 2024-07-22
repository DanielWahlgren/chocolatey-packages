#https://safeexambrowser.org/about_overview_en.html

$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'onenote.classnotebook'
  fileType               = 'msi'
  url                    = ''
  checksum               = ''
  checksumType           = 'sha256'
  silentArgs             = '/qn'
  validExitCodes         = @(0)
  softwareName           = 'OneNote Class Notebook*'
}
Install-ChocolateyPackage @packageArgs
