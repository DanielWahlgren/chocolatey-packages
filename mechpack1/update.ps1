import-module au

$releases = 'https://www.microtechstelladata.se/?page_id=1900'


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

    $link = $download_page.Links | ? href -like '*/download/*' | % href | select -First 1
    $dlversion = ($link -split '\?')[0] | Select-string "(\d+)" | Select-Object -ExpandProperty Matches | Select-Object -ExpandProperty Value
    $version = "2.0.0.$dlversion"
    $url32 = $link

    @{
        URL32   = $url32
        Version = $version
    }
}

update
