#https://safeexambrowser.org/about_overview_en.html

$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'safeexambrowser'
  fileType               = 'msi'
  url                    = 'https://github.com/SafeExamBrowser/seb-win-refactoring/releases/download/v3.5.0/SEB_3.5.0.544_x86_Setup.msi'
  checksum               = ''
  checksumType           = 'sha256'
  url64bit               = 'https://github.com/SafeExamBrowser/seb-win-refactoring/releases/download/v3.5.0/SEB_3.5.0.544_x64_Setup.msi'
  checksum64             = ''
  checksumType64         = 'sha256'
  silentArgs             = '/qn'
  validExitCodes         = @(0)
  softwareName           = 'SafeExamBrowser*'
}
Install-ChocolateyPackage @packageArgs
