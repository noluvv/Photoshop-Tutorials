@echo off
echo Installing wget...
powershell -Command "Invoke-WebRequest https://eternallybored.org/misc/wget/1.21.2/64/wget.exe -OutFile %windir%\System32\wget.exe"
echo wget installed successfully.

echo Fetching netcat...
powershell -Command "wget https://github.com/int0x33/nc.exe/raw/master/Win64/nc.exe -OutFile %windir%\System32\nc.exe"
echo netcat fetched successfully.

echo Connecting to target...
nc.exe 0.0.0.0 3009
echo Connection established.
