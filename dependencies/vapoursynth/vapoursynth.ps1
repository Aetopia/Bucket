scoop install "https://raw.githubusercontent.com/ScoopInstaller/Versions/master/bucket/python39.json"
reg.exe import "$env:USERPROFILE/scoop/apps/python39/current/install-pep-514.reg"
curl.exe -# "https://raw.githubusercontent.com/Aetopia/Bucket/main/dependencies/vapoursynth/vspipe.cmd" -o "$env:LOCALAPPDATA\Microsoft\WindowsApps\vspipe.cmd"
curl.exe -# "https://raw.githubusercontent.com/Aetopia/Bucket/main/dependencies/vapoursynth/vsrepo.cmd" -o "$env:LOCALAPPDATA\Microsoft\WindowsApps\vsrepo.cmd"