#https://safeexambrowser.org/about_overview_en.html

$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'safeexambrowser'
  fileType               = 'exe'
  url                    = 'https://github.com/SafeExamBrowser/seb-win-refactoring/releases/download/v3.5.0/SEB_3.5.0.544_SetupBundle.exe'
  checksum               = '577f786eea91eb56b61c32879001c61fb28b252ff70bf92b1b43206029b8b13e'
  checksumType           = 'sha256'
  silentArgs             = '/install /passive /quiet /norestart'
  validExitCodes         = @(0)
  softwareName           = 'SafeExamBrowser*'
}
Install-ChocolateyPackage @packageArgs
