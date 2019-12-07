 #!/bin/sh
mkdir cache/
chmod 775 -R cache/
chown sistemas.apache -R cache/

mkdir cache/queries/
chmod 775 -R cache/queries/
chown sistemas.apache -R cache/queries/

mkdir cache/sessions/
chmod 775 -R cache/sessions/
chown sistemas.apache -R cache/sessions/

mkdir logs/
chmod 775 -R logs/
chown sistemas.apache -R logs/

mkdir logs/database/
chmod 775 -R logs/database/
chown sistemas.apache -R logs/database/

chown sistemas.apache apagar_pastas.php
