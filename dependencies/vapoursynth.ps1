scoop install "https://raw.githubusercontent.com/ScoopInstaller/Versions/master/bucket/python38.json"
reg.exe import "$env:USERPROFILE/scoop/apps/python38/current/install-pep-514.reg"
curl.exe -# "https://raw.githubusercontent.com/Aetopia/Bucket/main/dependencies/vspipe.cmd" -o "env:LOCALAPPDATA/Microsoft/WindowsApps/vspipe.cmd"
curl.exe -# "https://raw.githubusercontent.com/Aetopia/Bucket/main/dependencies/vsrepo.cmd" -o "env:LOCALAPPDATA/Microsoft/WindowsApps/vsrepo.cmd"