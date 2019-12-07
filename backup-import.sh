# Argumento 1: Nome do banco de dados

if [ -z "$1" ]
        then
                echo "Banco de dados não informado"
                exit 1
fi
echo ""
datahora=`date +"%Y%m%d%H%M%S"`
mysqldump -h [IP] -u [USUÁRIO] -p[SENHA] $1 > $1_${datahora}.sql
sh restaurar_banco.sh $1 $1_${datahora}.sql
echo $1_${datahora}.sql
echo ""
