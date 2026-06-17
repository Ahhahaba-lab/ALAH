@echo off
set TARGET=Admiin

for /f "skip=1 tokens=1,3,4" %%a in ('query user') do (
    if /i "%%a"=="%TARGET%" (
        if /i "%%c"=="Active" (
            tscon %%b /dest:console
            goto :eof
        )
    )
)
