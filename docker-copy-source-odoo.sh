# docker exec odoo-dev-v17 sh -c 'zip -r odoo.zip /usr/lib/python3/dist-packages/odoo'
# docker cp odoo-dev-v17:/odoo.zip ./odoo.zip
# unzip odoo.zip
# mv usr/lib/python3/dist-packages/odoo/ .
# rm -r usr
# rm odoo.zip


# docker-copy-source-odoo.sh
docker exec odoo-dev-v17 sh -c 'zip -r dist.zip /usr/lib/python3'
docker cp odoo-dev-v17:/dist.zip ./dist.zip
unzip dist.zip
mv usr/lib/python3/dist-packages/odoo/ .
mv usr/lib/python3/dist-packages ./venv
rm -r usr
rm dist.zip