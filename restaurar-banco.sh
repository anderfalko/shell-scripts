# Argumento 1: Nome do banco de dados a recriar
# Argumento 2: Arquivo (dump) a ser importado (path completo com nome do arquivo)

if [ -z "$1" ]
        then
                echo "Banco de dados não informado"
                exit 1
fi
# Chama o script de backup local para fazer backup do banco existente
bash mysqldump.sh $1
datahora=`date +"%Y%m%d%H%M%S"`
mysql -u [USUARIO] -p[SENHA] -e "DROP DATABASE IF EXISTS $1"
mysql -u [USUARIO] -p[SENHA] -e "CREATE DATABASE $1 DEFAULT CHARACTER SET utf8"
mysql -u [USUARIO] -p[SENHA] $1 < $2
