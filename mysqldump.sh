datahora=`date +"%Y%m%d%H%M%S"`
mysqldump -h [IP] -u [USUÁRIO] -p[SENHA] $1 > $1_${datahora}.sql
