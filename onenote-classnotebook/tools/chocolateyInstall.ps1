#https://safeexambrowser.org/about_overview_en.html

$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'onenote.classnotebook'
  fileType               = 'msi'
  url                    = 'https://download.microsoft.com/download/A/1/7/A171D312-CBAD-4E00-819B-0F56956DAC88/ClassNotebook.msi'
  checksum               = '1faf77b35845fffb99a8193ba78d4ef123b00f8305704bc3acd75178ed5eee5c'
  checksumType           = 'sha256'
  silentArgs             = '/quiet /norestart'
  validExitCodes         = @(0)
  softwareName           = 'OneNote Class Notebook*'
}
Install-ChocolateyPackage @packageArgs
