import-module au

$releases = 'https://github.com/SafeExamBrowser/seb-win-refactoring/releases'


function global:au_SearchReplace {
   @{
        ".\tools\chocolateyInstall.ps1" = @{
            "(?i)(^\s*url\s*=\s*)('.*')"        = "`$1'$($Latest.URL32)'"
            "(?i)(^\s*checksum\s*=\s*)('.*')"   = "`$1'$($Latest.Checksum32)'"
        }
    }
}

function global:au_GetLatest {
    $download_page = Invoke-WebRequest -Uri $releases

    $version = $download_page.Links | ? href -like '*releases/tag*' | % href | select -First 1
    $version = Split-Path $version -Leaf
    $download_page = Invoke-WebRequest -Uri ($releases + '/expanded_assets/' + $version)
    $url = $download_page.Links | ? href -match '.exe$' | % href | select -First 1
    $version = (Split-Path ( Split-Path $url ) -Leaf).Substring(1)

    @{
        URL32   = 'https://github.com' + $url
        Version = $version
    }
}

update -ChecksumFor 32
