# Publish current package.json version to Open VSX (Cursor marketplace).
# Requires: OVSX_PAT (User or Process env), or -Pat argument.
param(
  [string]$Pat = $env:OVSX_PAT,
  [switch]$CreateNamespace
)

$ErrorActionPreference = 'Stop'
Set-Location $PSScriptRoot\..

if (-not $Pat) {
  $Pat = [Environment]::GetEnvironmentVariable('OVSX_PAT', 'User')
}
if (-not $Pat) {
  $tokenFile = Join-Path $env:USERPROFILE '.user\ovsx-pat.txt'
  if (Test-Path $tokenFile) {
    $Pat = (Get-Content -Raw $tokenFile).Trim()
  }
}
if (-not $Pat) {
  Write-Error @"
OVSX_PAT is not set.

1. Create a token at https://open-vsx.org/user-settings/tokens
2. Set User env: [Environment]::SetEnvironmentVariable('OVSX_PAT','<token>','User')
   Or write the token to $env:USERPROFILE\.user\ovsx-pat.txt
3. Re-run: .\scripts\publish-openvsx.ps1
"@
}

$pkg = Get-Content .\package.json -Raw | ConvertFrom-Json
$vsix = ".\synagraphic-themes-$($pkg.version).vsix"

if ($CreateNamespace) {
  Write-Host "Creating Open VSX namespace: $($pkg.publisher)"
  npx --yes ovsx create-namespace $pkg.publisher -p $Pat
}

if (-not (Test-Path $vsix)) {
  Write-Host "Packaging $vsix ..."
  npx --yes @vscode/vsce package --no-dependencies
}

Write-Host "Publishing $vsix to Open VSX ..."
npx --yes ovsx publish $vsix -p $Pat
Write-Host "Done. Listing: https://open-vsx.org/extension/$($pkg.publisher)/$($pkg.name)"
