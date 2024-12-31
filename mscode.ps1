# Microsoft Studio Code 
# aka mscode.ps1, it is an clownish Visual Studio Code clone summoned from various parts of the Windows Operating System

if (-NOT ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) {  
    # Relaunch the script with administrator rights
    Start-Process powershell.exe "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`"" -Verb RunAs 
    exit 
}

# open file explorer
Start-Process -FilePath "explorer.exe" -ArgumentList "/e,""C:\Users\osbyr\Downloads"


# open notepad
Start-Process -FilePath "notepad.exe" 

# open notepad at specific file
# Start-Process -FilePath "notepad.exe" -ArgumentList "C:\Path\To\File.txt"


# open powershell terminal (settings : cmd, powershell, wsl)
Start-Process PowerShell

# open terminal to a specific place
# start powershell -noexit -command cd C:\Path\To\Directory



# we plan to support project config using mscode.json file format.