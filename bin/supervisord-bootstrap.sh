#!/bin/bash

/wait-for-it.sh postgres:5432 -t 120
rc=$?
if [ $rc -ne 0 ]; then
    echo -e "\n---------------------------------------"
    echo -e "     PostgreSQL not ready! Exiting..."
    echo -e "---------------------------------------"
    exit $rc
fi

psql -h postgres -U postgres -c "CREATE DATABASE hue;"
hue syncdb --noinput
hue migrate --noinput

#supervisorctl start hue

echo -e "\n\n--------------------------------------------------------------------------------"
echo -e "You can now access to the following Cloudera Hue Web UIs:\n"
echo -e "Cloudera Hue 		http://localhost:8000\n"
echo -e "\nMantainer:   Matteo Capitanio <matteo.capitanio@gmail.com>"
echo -e "--------------------------------------------------------------------------------\n\n"




