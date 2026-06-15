@echo off
echo Finding current session...

for /f "skip=1 tokens=3" %%s in ('query user %USERNAME%') do (
    echo Transferring session %%s to console...
    %windir%\System32\tscon.exe %%s /dest:console
    goto :eof
)

echo Failed to find session ID.
pause