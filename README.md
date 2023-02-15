# Requisitos
1) Pacote screen do linux (utilize **apt install screen**)

# Instalação + execução
1) Dentro do terminal execute **bash start.sh** (a primeira execução será demorada)
2) Após o final do comando, utilize **screen -ls** para ver o nome do screen de cada projeto, ex: **3692.mosquitto** (o nome está após o .)
3) Com o nome do screen utilize **screen -r `nomeDoScreen`** para entrar no screen de cada projeto
4) Se existirem screens e é possível entrar nelas, então o projeto já está executando 

# Parar o projeto
1) O seguinte comando irá finalizar todos os screens **killall screen** (*Por favor utilize esse comando antes de sair para não lotar o banco*)

# Observações
1) O script start.sh instala as dependencias dos projetos e já inicia o screen de cada projeto em modo desacoplado
2) Após entrar no screen, pressione e solte "CTRL + A" e em seguida pressione a tecla "D" para retornar ao terminal padrão
