# PropFlo Project Management Pack - PDF export
# Uses an existing Chrome or Edge install (headless) to print the HTML packs to PDF.
# Does NOT install any software. If neither browser is found, follow the manual steps in README.md.

$ErrorActionPreference = 'Stop'
$root   = Split-Path -Parent $MyInvocation.MyCommand.Path      # ...\PDF-Export
$print  = Join-Path (Split-Path -Parent $root) 'Print'          # ...\Print
$outDir = Join-Path $root 'Output'
if (-not (Test-Path $outDir)) { New-Item -ItemType Directory -Path $outDir | Out-Null }

# locate a Chromium-based browser
$candidates = @(
  "$env:ProgramFiles\Google\Chrome\Application\chrome.exe",
  "${env:ProgramFiles(x86)}\Google\Chrome\Application\chrome.exe",
  "$env:ProgramFiles (x86)\Microsoft\Edge\Application\msedge.exe",
  "${env:ProgramFiles(x86)}\Microsoft\Edge\Application\msedge.exe",
  "$env:ProgramFiles\Microsoft\Edge\Application\msedge.exe"
)
$browser = $candidates | Where-Object { Test-Path $_ } | Select-Object -First 1
if (-not $browser) { Write-Error "No Chrome or Edge found. Use manual Print to PDF (see README.md)."; exit 1 }
Write-Host "Using browser: $browser"

function Export-Pdf($htmlName, $pdfName) {
  $html = Join-Path $print $htmlName
  if (-not (Test-Path $html)) { Write-Warning "Missing $html"; return }
  $uri = ([System.Uri](Resolve-Path $html)).AbsoluteUri
  $pdf = Join-Path $outDir $pdfName
  # isolated temp profile avoids hanging when a normal browser window is already open
  $prof = Join-Path $env:TEMP ("propflo-pdf-" + [System.Guid]::NewGuid().ToString('N'))
  & $browser --headless=new --disable-gpu --no-first-run --no-default-browser-check `
    --user-data-dir="$prof" --no-pdf-header-footer "--print-to-pdf=$pdf" $uri
  Remove-Item $prof -Recurse -Force -ErrorAction SilentlyContinue
  if (Test-Path $pdf) { Write-Host "Created: $pdf" } else { Write-Warning "Failed: $pdfName" }
}

Export-Pdf 'PROJECT-MANAGEMENT-PACK-A4.html' 'PropFlo-Project-Management-Pack-A4.pdf'
Export-Pdf 'PROJECT-MANAGEMENT-PACK-A3.html' 'PropFlo-Project-Management-Pack-A3.pdf'
Write-Host "Done. PDFs in: $outDir"
