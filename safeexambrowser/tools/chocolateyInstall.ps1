#https://safeexambrowser.org/about_overview_en.html

$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'safeexambrowser'
  fileType               = 'msi'
  url                    = 'https://github.com/SafeExamBrowser/seb-win-refactoring/releases/download/v3.7.1/SEB_3.7.1.704_x86_Setup.msi'
  checksum               = 'A1539756C61FB2E24BF8C5D3B11774B97BC7ABF7046FEDF0B061B3F581DADB1C'
  checksumType           = 'sha256'
  url64bit               = 'https://github.com/SafeExamBrowser/seb-win-refactoring/releases/download/v3.7.1/SEB_3.7.1.704_x64_Setup.msi'
  checksum64             = '0643A376B55B6BA09EBD6EDDC207ADFF3CDFB19E2DBA3CD35C4E2CFDE185DBA6'
  checksumType64         = 'sha256'
  silentArgs             = '/qn'
  validExitCodes         = @(0)
  softwareName           = 'SafeExamBrowser*'
}
Install-ChocolateyPackage @packageArgs
