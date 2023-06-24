if(test-path bin/arduino-cli.exe){
    echo "Already up to date."
    exit
}

if(-not (test-path bin)){
    New-Item -Path bin -ItemType Directory
}

if(-not (test-path bin/arduino-cli.zip)){
    Invoke-WebRequest -Uri "https://downloads.arduino.cc/arduino-cli/arduino-cli_latest_Windows_64bit.zip" -OutFile  "bin/arduino-cli.zip"
}

Expand-Archive -Path bin\arduino-cli.zip -DestinationPath bin -Force