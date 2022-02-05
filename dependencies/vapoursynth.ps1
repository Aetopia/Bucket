scoop install "https://raw.githubusercontent.com/ScoopInstaller/Versions/master/bucket/python38.json"
reg.exe import "$env:USERPROFILE/scoop/apps/python38/current/install-pep-514.reg"
curl -# "https://gist.githubusercontent.com/Aetopia/2bd1b2564c0d8e69e4185728b18a016b/raw/d11194f87c9a452fe506fbb811fc1746bd817025/vspipe.cmd" -o "env:LOCALAPPDATA/Microsoft/WindowsApps/vspipe.cmd"
curl -# "https://gist.githubusercontent.com/Aetopia/2bd1b2564c0d8e69e4185728b18a016b/raw/d11194f87c9a452fe506fbb811fc1746bd817025/vsrepo.cmd" -o "env:LOCALAPPDATA/Microsoft/WindowsApps/vsrepo.cmd"