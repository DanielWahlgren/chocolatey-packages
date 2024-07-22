#https://safeexambrowser.org/about_overview_en.html

$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'safeexambrowser'
  fileType               = 'msi'
  url                    = 'https://github.com/SafeExamBrowser/seb-win-refactoring/releases/download/v3.7.1/SEB_3.7.1.704_x86_Setup.msi'
  checksum               = 'a1539756c61fb2e24bf8c5d3b11774b97bc7abf7046fedf0b061b3f581dadb1c'
  checksumType           = 'sha256'
  url64bit               = 'https://github.com/SafeExamBrowser/seb-win-refactoring/releases/download/v3.7.1/SEB_3.7.1.704_x64_Setup.msi'
  checksum64             = '0643a376b55b6ba09ebd6eddc207adff3cdfb19e2dba3cd35c4e2cfde185dba6'
  checksumType64         = 'sha256'
  silentArgs             = '/qn'
  validExitCodes         = @(0)
  softwareName           = 'SafeExamBrowser*'
}
Install-ChocolateyPackage @packageArgs
