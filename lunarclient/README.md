### This contains the required files for a functional Lunar Client Scoop Install.       
             
`lunarclient.py` -> Generates a Manifest file that is usable by Scoop.       
`lunarclient.ps1` -> Post Install Script, does the following:    
1. Removes `app-update.yml` which prevents our Lunar Client instance from auto updating.
2. Generate a Symbolic Link for `.lunarclient` meaning all data is directed to another directory.
