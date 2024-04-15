import-module au

$releases = 'https://www.microtechstelladata.se/?page_id=777'


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

    [uri]$link = $download_page.Links | Where-Object href -like '*/download/*' | ForEach-Object href | Select-Object -First 1
    $version = (($link.Fragment -split "=")[1] -split "-") -join "."
    $url32 = $link

    @{
        URL32   = $url32
        Version = $version
    }
}

update
