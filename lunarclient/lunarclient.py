# Generates a Scoop manifest for Lunar Client.

from urllib.request import urlopen
from subprocess import run
from os import getenv
from json import dumps

with urlopen('https://launcherupdates.lunarclientcdn.com/latest.yml') as request:
    request = tuple([x.decode('ASCII').strip() for x in request.read().splitlines()])
files = request[0].split('version:')[1].strip(),
for line in request:
    if 'file:' in line:
        if 'x64' in line:
            files += line.split('file:')[1].strip(),
        elif 'ia32' in line:
            files += line.split('file:')[1].strip(),    

for file in files[1:]:
    run(f'curl -L -# https://launcherupdates.lunarclientcdn.com/{file} -o "{getenv("TEMP")}/{file}"')
    files += run(f'''powershell -c "(Get-FileHash {getenv("TEMP")}/{file}).Hash''', capture_output = True).stdout.decode('UTF-8').strip(),
manifest = {
    "version": f"{files[0]}",
    "description": "Lunar Client: A modpack for all modern versions of Minecraft!",
    "architecture": {
        "32bit": {
             "url": f"https://launcherupdates.lunarclientcdn.com/{files[1]}",
             "hash": f"{files[3]}"
             }, 

        "64bit": {
            "url": f"https://launcherupdates.lunarclientcdn.com/{files[2]}", 
            "hash": f"{files[4]}"
        }
    },   
    "post_install": ["irm https://raw.githubusercontent.com/Aetopia/Bucket/main/lunarclient/lunarclient.ps1 | iex"]     
}   

with open('lunarclient.json', 'w') as file:
    file.write(dumps(manifest, indent = 4))
