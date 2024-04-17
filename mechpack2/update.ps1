import-module Chocolatey-AU

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

    $link = $download_page.Links | Where-Object href -like '*/download/*' | ForEach-Object href | Select-Object -First 1
    $version = (($link -split '\?')[1] | Select-string "(?<=version=)(\d+)-(\d+)-(\d+)-(\d+)" | Select-Object -ExpandProperty Matches | Select-Object -ExpandProperty Value).replace('-','.')
    $url32 = $link

    @{
        URL32   = $url32
        Version = $version
    }
}

update
