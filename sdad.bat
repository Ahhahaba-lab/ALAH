@echo off
for /f "tokens=1,2,3,4" %%a in ('query user') do (
    if /i "%%d"=="Active" (
        tscon %%c /dest:console
        exit /b
    )
)
