#https://safeexambrowser.org/about_overview_en.html

$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'safeexambrowser'
  fileType               = 'msi'
  url                    = 'https://github.com/SafeExamBrowser/seb-win-refactoring/releases/download/v3.5.0/SEB_3.5.0.544_x86_Setup.msi'
  checksum               = '1ae385f8212af89dde21d9cbc7e7b41de4dc605d8d4fc1c33d018479561f002e'
  checksumType           = 'sha256'
  url64bit               = 'https://github.com/SafeExamBrowser/seb-win-refactoring/releases/download/v3.5.0/SEB_3.5.0.544_x64_Setup.msi'
  checksum64             = '21c6b3680848c8fd21cee15d210cd8fd2c9d2694f52bdc4bfda751058506e96c'
  checksumType64         = 'sha256'
  silentArgs             = '/qn'
  validExitCodes         = @(0)
  softwareName           = 'SafeExamBrowser*'
}
Install-ChocolateyPackage @packageArgs
