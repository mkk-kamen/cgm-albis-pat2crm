#!/bin/bash

su postgres -c "psql albis < /opt/cgm-albis-pat2crm/input.sql" > /opt/cgm-albis-pat2crm/tmp.sql
cat /opt/cgm-albis-pat2crm/tmp.sql | grep "INSERT" | grep -v NULL > /opt/cgm-albis-pat2crm/export.sql
cp /opt/cgm-albis-pat2crm/export.sql /mnt/Daten/ALBIS/Db/Bild
