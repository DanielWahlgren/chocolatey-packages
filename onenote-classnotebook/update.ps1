import-module Chocolatey-AU

$releases = 'https://www.microsoft.com/en-us/download/details.aspx?id=51934'


function global:au_SearchReplace {
    @{
        ".\tools\chocolateyInstall.ps1" = @{
            "(?i)(^\s*url\s*=\s*)('.*')"        = "`$1'$($Latest.URL32)'"
            "(?i)(^\s*checksum\s*=\s*)('.*')"   = "`$1'$($Latest.Checksum32)'"
        }
    }
}

function global:au_GetLatest {
    $session = New-Object Microsoft.PowerShell.Commands.WebRequestSession
    $session.UserAgent = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36"
    $uri = [uri]$releases
    $download_page = Invoke-WebRequest -Uri $releases -UseBasicParsing -WebSession $session `
        -Headers @{
            "authority"=$uri.Authority
            "method"="GET"
            "path"=$uri.PathAndQuery
            "scheme"="https"
            "accept"="text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7"
            "accept-encoding"="gzip, deflate, br, zstd"
            "accept-language"="en-US,en-DE;q=0.9,en;q=0.8,de;q=0.7"
            "cache-control"="no-cache"
            "pragma"="no-cache"
            "upgrade-insecure-requests"="1"
        }
    $pattern = '(?<=<div style="width:fit-content"><h3 class="h6">Version:</h3><p style="overflow-wrap:break-word">)(.*?)(?=</p></div>)'
    $version = [regex]::Match($download_page.Content, $pattern).Groups[1].Value
    $download = $download_page.Content -split '"' | Where-Object {$PSItem -like 'https://download.microsoft.com*ClassNotebook.msi'}
    @{
        URL32   = $download
        Version = $version
    }

}

update
