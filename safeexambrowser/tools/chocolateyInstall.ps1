#https://safeexambrowser.org/about_overview_en.html

$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'safeexambrowser'
  fileType               = 'msi'
  url                    = 'https://github.com/SafeExamBrowser/seb-win-refactoring/releases/download/v3.7.0/SEB_3.7.0.682_x86_Setup.msi'
  checksum               = 'c3b99e0ddacd55a3288a4861ac84d01a9c8eeb91d32cee48ed7b2a2db52e3c75'
  checksumType           = 'sha256'
  url64bit               = 'https://github.com/SafeExamBrowser/seb-win-refactoring/releases/download/v3.7.0/SEB_3.7.0.682_x64_Setup.msi'
  checksum64             = 'fcf26e8cda70a6b9ab7742b6920e551cd8cf16f3bfa17d8625f5fad1a844bbf1'
  checksumType64         = 'sha256'
  silentArgs             = '/qn'
  validExitCodes         = @(0)
  softwareName           = 'SafeExamBrowser*'
}
Install-ChocolateyPackage @packageArgs
