#!/usr/bin/shell

HORAIRE_1=$(curl -s https://api-iv.iledefrance-mobilites.fr/lines/v2/line:IDFM:C01382/stops/stop_area:IDFM:71324/realTime | sed s/}/}\\n/g | grep "Mairie d'Aubervilliers" | cut -d'"' -f16 | tr '\n' ' ' | awk '{print $3}')
HORAIRE_2=$(curl -s https://api-iv.iledefrance-mobilites.fr/lines/v2/line:IDFM:C01382/stops/stop_area:IDFM:71324/realTime | sed s/}/}\\n/g | grep "Mairie d'Aubervilliers" | cut -d'"' -f16 | tr '\n' ' ' | awk '{print $4}')
HORAIRE_3=$(curl -s https://api-iv.iledefrance-mobilites.fr/lines/v2/line:IDFM:C01382/stops/stop_area:IDFM:71324/realTime | sed s/}/}\\n/g | grep "Mairie d'Aubervilliers" | cut -d'"' -f16 | tr '\n' ' ' | awk '{print $5}')

echo "\n[M][\e[32m12\e[0m]                      [\e[93m$(date +%H:%M)\e[0m]\n"
echo "Porte de la Chapelle \e[34m►\e[0m [\e[93m$HORAIRE_1\e[0m] [\e[93m$HORAIRE_2\e[0m] [\e[93m$HORAIRE_3\e[0m]\n"
