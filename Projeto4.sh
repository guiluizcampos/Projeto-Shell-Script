#!/bin/bash
API_KEY=087a64cd1f3b471e4d75aa7c3f65ddcd

read -p "Digite o nome da cidade: " CIDADE

RESPONSE=`curl -s -G --data-urlencode "appid=$API_KEY" --data-urlencode "q=$CIDADE" http://api.openweathermap.org/data/2.5/weather`

<<<<<<< HEAD
TEMPK=${RESPONSE:147:3}
=======
TEMPK=${RESPONSE:150:3}
>>>>>>> master

TEMPC=$[ $TEMPK - 275 ]

echo "A temperatura de $CIDADE é:" $TEMPC"°C"
