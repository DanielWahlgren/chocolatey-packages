import-module au

$releases = 'https://support.cosafe.se/sv/articles/7638-cosafe-warning-system-cws'


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

    $url = $download_page.Links | Where-Object href -match '.exe$' | ForEach-Object href | Select-Object -First 1
    $version = ($url -split '-').Replace('.exe','')[-1]

    @{
        URL32   = $url
        Version = $version
    }
}

update -ChecksumFor 32
