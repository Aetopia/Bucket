# Post Install Script for Lunar Client. (Scoop.)
$ErrorActionPreference = "SilentlyContinue"
$LunarClient = (scoop.cmd which scoop |Split-Path|Split-Path|Split-Path|Split-Path|Split-Path) + '\apps\lunarclient\current'

Remove-Item "$LunarClient\resources\app-update.yml"
New-Item -Type Directory "$LunarClient\data" 
if (-not(Test-Path -Path "$env:USERPROFILE\.lunarclient")) {
    if ((Get-Item "$env:USERPROFILE\.lunarclient").LinkType -ne "SymbolicLink") {
        Copy-Item -Path "$env:USERPROFILE\.lunarclient" "$LunarClient\data" -Recurse
        Remove-Item -Path "$env:USERPROFILE\.lunarclient" -Recurse
        mklink.exe "$env:USERPROFILE\.lunarclient" "$LunarClient\data" /D
    }    
}
