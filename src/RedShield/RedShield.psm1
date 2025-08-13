$module root = Split-Path -Parent $PSCommandPath

import-module powershell-yaml -ErrorAction Stop

Get-ChildItem -Path $module root -Filter '*.yaml' | ForEach-Object {
    $_.FullName }
Get-ChildItem -Path $module root -Filter '*.yaml' | ForEach-Object {
    $_.FullName }

$Public = Get -ChildItem -Path (Join-Path $moduleRoot 'Public') -Filter *.ps1 -Recurse |
    ForEach-Object { [system.IO.Path]::GetFileNameWithoutExtension($_.FullName) }

Export-ModuleMember -Function $Public 