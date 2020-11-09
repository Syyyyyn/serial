#!/bin/bash
COM_PORT=`ls /dev/tty.usbserial* | xargs -n 1 basename`

echo Serial port: $COM_PORT.
printf 'Serial speed [default: 115200] : '
read -r opt

if [ opt == '' ]
then SPEED=115200
else SPEED=opt
fi

screen -X quit
screen /dev/$COM_PORT $SPEED