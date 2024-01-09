#https://safeexambrowser.org/about_overview_en.html

$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'safeexambrowser'
  fileType               = 'msi'
  url                    = 'https://github.com/SafeExamBrowser/seb-win-refactoring/releases/download/v3.6.0/SEB_3.6.0.633_x86_Setup.msi'
  checksum               = 'd2502ee9fd189bb24ce8601c49f19fe74359abe73f356bc30edfe67012df448c'
  checksumType           = 'sha256'
  url64bit               = 'https://github.com/SafeExamBrowser/seb-win-refactoring/releases/download/v3.6.0/SEB_3.6.0.633_x64_Setup.msi'
  checksum64             = '5ba5cb49b1fe880829bb31f34a23cca18c03fcbd33899a8f9bc3c5ec1204cf24'
  checksumType64         = 'sha256'
  silentArgs             = '/qn'
  validExitCodes         = @(0)
  softwareName           = 'SafeExamBrowser*'
}
Install-ChocolateyPackage @packageArgs
